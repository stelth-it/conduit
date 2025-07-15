defmodule Conduit.Quickbooks.Object do
  @moduledoc """
  Represents an object in the QB API.
  """

  use Ecto.Schema
  alias Conduit.Quickbooks.Object.Field

  @type t :: %__MODULE__{
          name: String.t(),
          fields: list(Field.t())
        }

  embedded_schema do
    field :name, :string
    embeds_many :fields, Field
  end

  def from_scrape(name, fields) do
    %__MODULE__{
      name: name,
      fields: fields
    }
  end

  @doc """
  Given a map represneting a JSON response
  extracts all fields into a map.
  """
  @spec extract_fields(object :: t(), api_response :: map()) :: extracted :: map()
  def extract_fields(%__MODULE__{} = object, api_response) do
    for field <- object.fields, into: %{} do
      Field.extract_field(field, api_response)
    end
  end

  def migration(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/migration.eex",
      assigns: [table_name: obj.name, fields: obj.fields, prefix: prefix]
    )
  end

  def schema(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/schema.eex",
      assigns: [
        module_name: schema_module_name(obj, prefix, :string),
        prefix: prefix,
        table_name: obj.name,
        field_atoms: internal_field_names_for_schema(obj),
        required_field_atoms: intenral_required_field_names_for_schema(obj),
        fields: obj.fields
      ]
    )
  end

  def internal_field_names_for_schema(%__MODULE__{} = obj) do
    obj.fields
    |> Enum.map(& &1.internal_field_name)
    |> Enum.map(&String.to_atom/1)
  end

  def intenral_required_field_names_for_schema(%__MODULE__{} = obj) do
    obj.fields
    |> Enum.filter(& &1.required)
    |> Enum.map(& &1.internal_field_name)
    |> Enum.map(&String.to_atom/1)
  end
end
