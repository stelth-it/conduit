defmodule Conduit.QAD.QadTable do
  @moduledoc """
  Represents a description of a QAD table.
  """

  @base_export_path "priv/qad_data/reports"
  use TypedEctoSchema
  import Ecto.Changeset

  @primary_key false
  typed_schema "qad_tables" do
    field :table_name, :string, primary_key: true
    field :table_flags, :string
    field :field_count, :integer
    embeds_many(:fields, Conduit.QAD.QadField)
  end

  @doc """
  Creates a new struct based on intput parameters.
  """
  def new(params) do
    %__MODULE__{}
    |> cast(params, [:table_name, :table_flags, :field_count])
    |> validate_required([:table_name, :table_flags, :field_count])
    |> apply_action(:create)
  end

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
  Given a table struct returns the schema module
  corresponding to that table.
  """
  def table_module(%__MODULE__{} = t) do
    Module.concat([Conduit, QAD, Table, String.capitalize(t.table_name)])
  end

  def report_file_location(%__MODULE__{table_name: tn}) do
    Path.join(@base_export_path, "#{tn}.d.prepped")
  end

  def reverse_fields(%__MODULE__{} = s) do
    %{s | fields: Enum.reverse(s.fields)}
  end

  def add_field(%__MODULE__{} = struct, %Conduit.QAD.QadField{} = field) do
    {:ok, Map.update!(struct, :fields, &[field | &1])}
  end

  def add_field(%__MODULE__{} = struct, field) when is_map(field) do
    case Conduit.QAD.QadField.new(field) do
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
end
