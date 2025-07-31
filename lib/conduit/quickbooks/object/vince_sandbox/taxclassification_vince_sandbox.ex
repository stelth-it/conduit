
defmodule Conduit.Quickbooks.Object.VinceSandbox.Taxclassification do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:parent_name,
:parent_value,
:applicable_to,
:code,
:name,
:description,
:level]

 @primary_key false
 schema "taxclassification" do
  field :parent_name, :string
field :parent_value, :string
field :applicable_to, :string
field :code, :string
field :name, :string
field :description, :string
field :level, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([])
 end
end
