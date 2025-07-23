
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Term do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:name,
:sync_token,
:discount_percent,
:active,
:type,
:qb_updated_at,
:qb_inserted_at]

 @primary_key false
 schema "term" do
  field :id, :string, primary_key: true
field :name, :string
field :sync_token, :string
field :discount_percent, :decimal
field :active, :boolean
field :type, :string
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
