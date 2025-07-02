defmodule Conduit.QAD.QadTables.QadTable do
  @moduledoc """
  Represents a description of a QAD table.
  """

  use Ecto.Schema
  import Ecto.Changeset
  alias Conduit.QAD.{QadImportActions.QadImportAction}

  @primary_key false
  schema "qad_tables" do
    field :table_name, :string, primary_key: true
    field :table_flags, :string
    field :field_count, :integer
    field :voyage_embedding, Pgvector.Ecto.Vector
    field :embed_document, :string
    field :description, :string
    field :record_count, :integer
    field :schema_fields, {:array, :map}, virtual: true
    field :migration_fields, {:array, :map}, virtual: true
    has_many :qad_import_actions, QadImportAction, references: :table_name
    embeds_many(:fields, Conduit.QAD.QadFields.QadField)
  end

  @doc """
  Creates a changeset given params
  """
  def changeset(struct = %__MODULE__{}, params) do
    struct
    |> cast_all(params)
    |> validate_required([:table_name, :table_flags, :field_count])
  end

  @doc """
  Creates a new struct based on intput parameters.
  """
  def new(params) do
    %__MODULE__{}
    |> cast_all(params)
    |> validate_required([:table_name, :table_flags, :field_count])
    |> apply_action(:create)
  end

  defp cast_all(struct = %__MODULE__{}, params),
    do:
      cast(struct, params, [
        :table_name,
        :table_flags,
        :field_count,
        :voyage_embedding,
        :embed_document,
        :description,
        :record_count
      ])

  @doc """
  As `new/1` but will raise if invalid data is given.
  """
  def new!(params) do
    case new(params) do
      {:ok, struct} -> struct
      {:error, e} -> raise ArgumentError, "invalid input #{inspect(e)}"
    end
  end

  @doc """
  Lists all field names for the given table.
  """
  def list_field_names(%__MODULE__{fields: fields}) do
    for f <- fields do
      f.field_name
    end
  end

  @doc """
  Counts the number of entires in the export, returns 
  nil if the file does not exist.
  """
  def export_file_record_count(%__MODULE__{} = table) do
    if loc = report_file_location(table) do
      loc
      |> File.stream!()
      |> Enum.count()
    end
  end

  @doc """
  Gives the difference between the column count as defined 
  in the struct and the qad.rpt file and the column count in 
  the exported table.  equivalent to: definition_column_count - export_column_count

  A negative number means the export has more columns than the qad.rpt.
  If nil is returned than the given table does not have an export file.
  """
  def definition_export_column_difference(%__MODULE__{} = table) do
    report_file_location(table) && definition_column_count(table) - export_column_count(table)
  end

  @doc """
  Gives the number of colunmns present in the 
  description of the table.
  """
  def definition_column_count(%__MODULE__{} = table) do
    table.fields
    |> Enum.map(fn
      %{mult: nil} ->
        1

      %{mult: n} when is_integer(n) ->
        n
    end)
    |> Enum.sum()
  end

  @doc """
  Given a table finds out how many columns are in 
  its export file.

  Will return nil if there is no export file for the table.
  """
  def export_column_count(%__MODULE__{} = table) do
    if loc = report_file_location(table) do
      loc
      |> File.stream!()
      |> Enum.take(1)
      |> List.first()
      |> String.split("")
      |> Enum.reduce({false, 1}, fn
        "\"", {false, _} = acc ->
          put_elem(acc, 0, true)

        "\"", {true, _} = acc ->
          put_elem(acc, 0, false)

        ",", {false, count} ->
          {false, count + 1}

        _, acc ->
          acc
      end)
      |> elem(1)
    end
  end

  @doc """
  Given a table struct returns the schema module
  corresponding to that table.
  """
  def table_module(%__MODULE__{} = t) do
    Module.concat([Conduit, QAD, Table, String.capitalize(t.table_name)])
  end

  @doc """
  Given a table uses its table name 
  from QAD to generate a table name
  for postgres.
  """
  def postgres_table_name(%__MODULE__{table_name: tn} = _table) do
    "qad_#{tn}"
  end

  def report_file_location(%__MODULE__{table_name: tn}) do
    File.ls!(export_path())
    |> Enum.map(fn path ->
      {String.split(path, ".") |> List.first(), path}
    end)
    |> Enum.flat_map(fn {prefix, path} ->
      if String.starts_with?(tn, prefix) do
        [path]
      else
        []
      end
    end)
    |> Enum.find(&(&1 =~ "prepped"))
    |> case do
      nil -> nil
      file_name when is_binary(file_name) -> Path.join(export_path(), file_name)
    end
  end

  def reverse_fields(%__MODULE__{} = s) do
    %{s | fields: Enum.reverse(s.fields)}
  end

  def add_field(%__MODULE__{} = struct, %Conduit.QAD.QadFields.QadField{} = field) do
    {:ok, Map.update!(struct, :fields, &[field | &1])}
  end

  def add_field(%__MODULE__{} = struct, field) when is_map(field) do
    case Conduit.QAD.QadFields.QadField.new(field) do
      {:ok, f} ->
        add_field(struct, f)

      {:error, _} = e ->
        e
    end
  end

  def add_field!(%__MODULE__{} = struct, field) do
    case add_field(struct, field) do
      {:ok, struct} -> struct
      {:error, cs} -> raise ArgumentError, "invalid field provided #{inspect(cs)}"
    end
  end

  defp export_path() do
    Application.get_env(:conduit, Conduit.QAD)[:qad_export_directory]
  end
end
