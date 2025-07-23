
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Department do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:name,
:sync_token,
:parent_name,
:parent_value,
:active,
:qb_updated_at,
:qb_inserted_at,
:fully_qualified_name,
:sub_department]

 @primary_key false
 schema "department" do
  field :id, :string, primary_key: true
field :name, :string
field :sync_token, :string
field :parent_name, :string
field :parent_value, :string
field :active, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :fully_qualified_name, :string
field :sub_department, :boolean
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
