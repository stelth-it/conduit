defmodule Conduit.QAD.QadTables do
  alias Conduit.QAD.{ParseRpt, QadTables.QadTable, QadFields, Inference}
  alias Conduit.Repo
  import Ecto.Query
  import Pgvector.Ecto.Query
  require Logger

  @moduledoc """
  Functions for workign with QAD Tables
  """

  def get_table_by_name(name) when is_binary(name) do
    Repo.get(QadTable, name)
  end

  @doc """
  Will retreive qad table info from the qad.rpt file
  and update all records in the qad_tables table 
  accordingly.
  """
  def import_rpt() do
    get_report_path()
    |> ParseRpt.build_summary()
    |> Enum.each(fn table ->
      Conduit.Repo.insert(table,
        on_conflict: {:replace_all_except, [:voyage_embedding]},
        conflict_target: :table_name
      )
    end)
  end

  def update_embeddings(embedding_module, query \\ nil) do
    query = query || QadTable

    query
    |> Conduit.Repo.all()
    |> Enum.flat_map(fn table = %QadTable{} ->
      case Conduit.Embedding.Provider.embed(embedding_module, table.embed_document,
             input_type: :document
           ) do
        {:ok, embed} ->
          Logger.info("retrieved embedding for table: #{table.table_name}")
          [QadTable.changeset(table, %{voyage_embedding: embed})]

        {:error, e} ->
          Logger.error(
            "error occured when embedding table #{table.table_name} error: #{inspect(e.message)}"
          )

          []
      end
    end)
    |> Enum.each(&Conduit.Repo.update/1)
  end

  def update_record_counts() do
    Conduit.Repo.all(QadTable)
    |> Enum.map(fn table ->
      record_count =
        QadTable.table_module(table)
        |> Conduit.Repo.aggregate(:count)

      QadTable.changeset(table, %{record_count: record_count})
      |> Conduit.Repo.update()
    end)
  end

  def embedding_search(embedding_module, query_string) do
    case Conduit.Embedding.Provider.embed(embedding_module, query_string, input_type: :query) do
      {:ok, embedding} ->
        vector_embedding = Pgvector.new(embedding)

        q =
          from qt in QadTable,
            where: qt.record_count > 0,
            order_by: cosine_distance(qt.voyage_embedding, ^vector_embedding),
            limit: 3

        {:ok, Conduit.Repo.all(q)}

      {:error, _} = error ->
        error
    end
  end

  def query_suggestion(embedding_module, query_request) do
    {:ok, tables} = embedding_search(embedding_module, query_request)

    context_documents = Enum.map(tables, & &1.embed_document)

    Inference.generate_sql_query(query_request, context_documents)
  end

  def table_suggestions(embedding_module, query) do
    {:ok, tables} = embedding_search(embedding_module, query)

    context_documents = Enum.map(tables, & &1.embed_document)

    Inference.generate_table_suggestions(query, context_documents)
  end

  def create_table_report(%QadTable{} = table) do
    table_name = "QAD_#{String.upcase(table.table_name)}"

    """
    # #{table_name} 

    table name: #{table_name}
    #{table.description}

    # data types

    The following table describes how to translate the 
    types in the field descripiton into well-known SQL types.

    #{QadFields.field_description_markdown_table()}

    # field descriptons

    The following table describes each field in the 
    #{table.table_name} table.

    #{QadFields.create_markdown_table(table.fields)}
    """
  end

  # gets path to rpt file
  defp get_report_path() do
    Application.get_env(:conduit, QAD)[:qad_rpt_path]
  end
end
