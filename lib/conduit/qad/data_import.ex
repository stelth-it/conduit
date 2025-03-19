defmodule Conduit.QAD.DataImport do
  @moduledoc """
  Dealing with importing and parsing 
  CSV Data.
  """

  require Logger
  alias Conduit.QAD.{QadTables.QadTable, QadImports, QadImportActions, QadFields}

  NimbleCSV.define(CSVParser, [])

  @parse_csv_options NimbleOptions.new!(
                       row_count: [
                         type: {:or, [{:in, [:infinite]}, :non_neg_integer]},
                         default: :infinite
                       ]
                     )
  @doc """
  Given a `Conduit.QAD.QadTable` stuct will 
  lookup the corresponding csv export file
  and parse it.

  ## Options
  #{NimbleOptions.docs(@parse_csv_options)}
  """
  def parse_csv(%QadTable{} = table, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @parse_csv_options)

    {:ok, stream} = record_stream(table, opts[:row_count])

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
  def record_stream(%QadTable{} = table, record_count) do
    file_location = QadTable.report_file_location(table)

    if file_location do
      stream =
        file_location
        |> File.stream!()
        |> CSVParser.parse_stream(skip_headers: false)
        |> Stream.map(fn values ->
          QadFields.explode(table.fields)
          |> Enum.zip(values)
          |> Enum.reduce(%{}, fn {k, v}, acc ->
            Map.update(acc, k, v, fn
              vlist when is_list(vlist) ->
                List.insert_at(vlist, -1, v)

              value ->
                [value, v]
            end)
          end)
        end)

      case record_count do
        :infinitiy -> {:ok, stream}
        n when is_integer(n) -> {:ok, Stream.take(stream, n)}
      end
    else
      {:error, "csv file does not exist"}
    end
  end

  @persist_all_csv_options NimbleOptions.new!(
                             drop_existing: [
                               type: :boolean,
                               default: false,
                               doc: "if set to true then existing records will be dropped"
                             ],
                             row_count: [
                               type: {:or, [{:in, [:infinite]}, :non_neg_integer]},
                               default: :infinite,
                               doc: "number of rows to import from csv file"
                             ]
                           )
  @doc """
  Will attempt to persist all qad tables in parallel.
  Tasks are run under a supervisor and all actions will 
  be logged to the `Conduit.QAD.QadImportActions` table.

  ## Options
  #{NimbleOptions.docs(@persist_all_csv_options)}
  """
  # TODO: provide logging options.  Maybe accept functions or modules?
  def persist_all_csv(opts \\ []) do
    opts = NimbleOptions.validate!(opts, @persist_all_csv_options)

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
        persist_csv_options =
          [
            drop_existing: opts[:drop_existing],
            row_count: opts[:row_count]
          ]

        persist_csv(table, qad_import, persist_csv_options)
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

  @persist_csv_opts NimbleOptions.new!(
                      drop_existing: [
                        type: :boolean,
                        default: false,
                        doc: "if set to true then existing records will be dropped"
                      ],
                      row_count: [
                        type: {:or, [{:in, [:infinite]}, :non_neg_integer]},
                        default: :infinite,
                        doc: "number of rows to import from csv file"
                      ]
                    )
  @doc """
  Given a table struct will persist the csv 
  data export corresponding to that struct to 
  the db

  ## Options
  #{NimbleOptions.docs(@persist_csv_opts)}
  """
  # TODO: change logging to a function, see persist_all.  Provide default IO logging.
  def persist_csv(%QadTable{} = table, qad_import, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @persist_csv_opts)

    with {:module_load, {:module, schema_module}} <-
           {:module_load, Code.ensure_loaded(QadTable.table_module(table))},
         {:file_load, {:ok, stream}} <- {:file_load, record_stream(table, opts[:row_count])} do
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
