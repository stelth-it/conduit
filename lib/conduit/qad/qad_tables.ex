defmodule Conduit.QAD.QadTables do
  alias Conduit.QAD.{ParseRpt, QadTables.QadTable, QadFields}
  import Ecto.Query
  require Logger

  @moduledoc """
  Functions for workign with QAD Tables
  """

  @doc """
  Will retreive qad table info from the qad.rpt file
  and update all records in the qad_tables table 
  accordingly.
  """
  def import_rpt() do
    Application.get_env(:conduit, :qad_rpt_path)
    |> ParseRpt.build_summary()
    |> Enum.each(fn table ->
      Conduit.Repo.insert(table, on_conflict: :replace_all, conflict_target: :table_name)
    end)
  end

  # TODO: Maybe allow custom embedding field name? 
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

  def create_table_report(%QadTable{} = table) do
    """
    # #{table.table_name}

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
end

