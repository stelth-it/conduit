defmodule Conduit.QAD.DataImport do
  @moduledoc """
  Dealing with importing and parsing 
  CSV Data.
  """
  require Logger
  alias Conduit.QAD.{QadTables.QadTable, QadImports, QadImportActions}

  NimbleCSV.define(CSVParser, [])

  @doc """
  Given a `Conduit.QAD.QadTable` stuct will 
  lookup the corresponding csv export file
  and parse it.
  """
  @parse_csv_options NimbleOptions.new!(
                       row_count: [
                         type: {:or, [{:in, [:infinite]}, :non_neg_integer]},
                         default: :infinite
                       ]
                     )
  def parse_csv(%QadTable{} = table, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @parse_csv_options)

    {:ok, stream} = record_stream(table)

    if opts[:row_count] == :infinite do
      Enum.to_list(stream)
    else
      Enum.take(stream, opts[:row_count])
    end
  end

  @doc """
  Given a `Conduit.QAD.QadTable` stuct will 
  lookup the corresponding csv export file
  and stream the parsed entries.
  """
  def record_stream(%QadTable{} = table) do
    file_location = QadTable.report_file_location(table)

    if file_location do
      stream =
        file_location
        |> File.stream!()
        |> CSVParser.parse_stream(skip_headers: false)
        |> Stream.map(fn values ->
          Enum.zip(QadTable.list_field_names(table), values)
        end)

      {:ok, stream}
    else
      {:error, "csv file does not exist"}
    end
  end

  @doc """
  Will attempt to persist all qad tables in parallel.
  Because tasks are used this will fail if the calling 
  process terminates the appication before the tasks are 
  completed, as in a mix task.
  """
  def persist_all_csv() do
    {:ok, qad_import} = QadImports.new("csv_files")

    tables =
      Conduit.Repo.all(QadTable)
      |> Enum.filter(fn table ->
        QadTable.report_file_location(table)
      end)

    Task.Supervisor.async_stream_nolink(
      Conduit.QADImportSupervisor,
      tables,
      fn table ->
        persist_csv(table, qad_import, drop_existing: true)
      end,
      timeout: :infinity,
      ordered: false,
      zip_input_on_exit: true
    )
    |> Enum.each(fn
      {:ok, {:completed, table}} ->
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "success completed table",
          qad_import,
          table
        )

        {:completed, table}

      {:ok, {:failed, table}} ->
        {:failed, table}

      {:exit, {table, reason}} ->
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "failure import task for table faild with reason: #{inspect(reason)}",
          qad_import,
          table
        )

        {:exited, table}
    end)
  end

  @doc """
  Given a table struct will persist the csv 
  data export corresponding to that struct to 
  the db
  """
  @persist_csv_opts NimbleOptions.new!(
                      drop_existing: [
                        type: :boolean,
                        default: false,
                        doc: "if set to true then existing records will be dropped"
                      ]
                    )
  def persist_csv(%QadTable{} = table, qad_import, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @persist_csv_opts)

    with {:module_load, {:module, schema_module}} <-
           {:module_load, Code.ensure_loaded(QadTable.table_module(table))},
         {:file_load, {:ok, stream}} <- {:file_load, record_stream(table)} do
      if opts[:drop_existing], do: Conduit.Repo.delete_all(schema_module)

      QadImportActions.new_with_associations(
        "#{QadTable.report_file_location(table)}",
        "success starting import task",
        qad_import,
        table
      )

      stream
      |> Stream.chunk_every(100)
      |> Stream.map(fn chunk ->
        Enum.map(chunk, &apply(schema_module, :changeset, [struct!(schema_module), Map.new(&1)]))
      end)
      |> Stream.map(&filter_and_log_invalid_cs(&1, qad_import, table))
      |> Stream.map(&add_insert_update_dates/1)
      |> Stream.map(&Conduit.Repo.insert_all(schema_module, &1))
      |> Stream.each(fn {record_count, _} ->
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "success inserted #{record_count} records",
          qad_import,
          table
        )
      end)
      |> Stream.run()

      {:completed, table}
    else
      {:module_load, {:error, message}} ->
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "failure could not load module, #{inspect(message)}",
          qad_import,
          table
        )

        {:failed, table}

      {:file_load, {:error, message}} ->
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "failure could not load csv file. #{message}",
          qad_import,
          table
        )

        {:failed, table}
    end
  end

  @doc """
  adds pg_inserted_at and pg_updated_at to change map
  set to the current date time.
  """
  def add_insert_update_dates(change_maps) do
    stamp =
      NaiveDateTime.utc_now()
      |> NaiveDateTime.truncate(:second)

    change_maps
    |> Enum.map(&Map.put(&1, :pg_inserted_at, stamp))
    |> Enum.map(&Map.put(&1, :pg_updated_at, stamp))
  end

  @doc """
  checks if the provided chunk of change sets 
  contains invalid entries.  Invalid changesets 
  are logged an discarded.
  """
  def filter_and_log_invalid_cs(cs_list, qad_import, table) do
    cs_list
    |> Enum.flat_map(fn cs ->
      if cs.valid? do
        [cs.changes]
      else
        QadImportActions.new_with_associations(
          "#{QadTable.report_file_location(table)}",
          "failure invalid changes found in csv, #{inspect(cs.errors)}",
          qad_import,
          table
        )

        []
      end
    end)
  end
end
