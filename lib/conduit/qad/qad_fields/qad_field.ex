defmodule Conduit.QAD.QadFields.QadField do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  embedded_schema do
    field :order, :integer
    field :field_name, :string
    field :field_type, :string
    field :description, :string
    field :mult, :integer
  end

  def new(params) do
    %__MODULE__{}
    |> cast(params, [:order, :field_name, :field_type, :description, :mult])
    |> validate_required([:order, :field_name, :field_type])
    |> apply_action(:create)
  end

  def put_description(%__MODULE__{} = s, description) when is_binary(description) do
    %{s | description: description}
  end

  def new!(params) do
    case new(params) do
      {:ok, struct} -> struct
      {:error, changeset} -> raise ArgumentError, "invalid input, #{inspect(changeset)}"
    end
  end

  def markdown_table_header() do
    "| field name | field type | field description |\n" <>
      "| -- | -- | -- |"
  end

  def markdown_table_entry(struct = %__MODULE__{}) do
    "| #{struct.field_name} | #{struct.field_type} | #{struct.description} |"
  end
end
