defmodule Conduit.QAD.DataImport do
  @moduledoc """
  Dealing with importing and parsing 
  CSV Data.
  """
  require Logger
  alias Conduit.QAD.QadTables.QadTable

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

    stream = record_stream(table)

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

    if File.exists?(file_location) do
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
    Conduit.Repo.all(Conduit.QAD.QadTable)
    |> Enum.each(fn table ->
      Task.start(fn ->
        Logger.info("starting table: #{table.table_name}")
        persist_csv(table)
      end)
    end)
  end

  @doc """
  Given a table struct will persist the csv 
  data export corresponding to that struct to 
  the db
  """
  @persist_csv_opts NimbleOptions.new!([])
  def persist_csv(%QadTable{} = table, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @persist_csv_opts)

    with {:module_load, {:module, schema_module}} <-
           {:module_load, Code.ensure_loaded(QadTable.table_module(table))},
         {:file_load, {:ok, stream}} <- {:file_load, record_stream(table)} do
      stream
      |> Stream.chunk_every(100)
      |> Stream.map(fn chunk ->
        Enum.map(chunk, &apply(schema_module, :changeset, [struct!(schema_module), Map.new(&1)]))
      end)
      |> Stream.map(&filter_and_log_invalid_cs/1)
      |> Stream.map(&add_insert_update_dates/1)
      |> Stream.each(&Conduit.Repo.insert_all(schema_module, &1))
      |> Stream.run()
    else
      {:module_load, {:error, message}} ->
        Logger.warning(
          "failed to load module for #{inspect(table)}, received error #{inspect(message)}"
        )

      {:file_load, {:error, message}} ->
        Logger.warning(
          "failed to load csv file for #{inspect(table)}, received error #{inspect(message)}"
        )
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
  def filter_and_log_invalid_cs(cs_list) do
    cs_list
    |> Enum.flat_map(fn cs ->
      if cs.valid? do
        [cs.changes]
      else
        Logger.warning("invalid data taken from csv: #{inspect(cs)}")
        []
      end
    end)
  end
end
