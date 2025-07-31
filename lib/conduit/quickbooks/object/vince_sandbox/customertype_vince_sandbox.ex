
defmodule Conduit.Quickbooks.Object.VinceSandbox.Customertype do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:name,
:active,
:qb_updated_at,
:qb_inserted_at]

 @primary_key false
 schema "customertype" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :name, :string
field :active, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
