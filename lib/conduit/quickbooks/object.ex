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

  def migration(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/migration.eex",
      assigns: [table_name: obj.name, fields: obj.fields, prefix: prefix]
    )
  end

  def schema(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/schema.eex",
      assigns: [
        prefix: prefix,
        table_name: obj.name,
        field_atoms: internal_field_names_for_schema(obj),
        fields: obj.fields
      ]
    )
  end

  def internal_field_names_for_schema(%__MODULE__{} = obj) do
    obj.fields
    |> Enum.map(& &1.internal_field_name)
    |> Enum.map(&String.to_atom/1)
  end
end
