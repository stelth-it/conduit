
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Recurringtransaction do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:recur_data_name,
:recur_data_value,
:qb_updated_at,
:qb_inserted_at,
:type]

 @primary_key false
 schema "recurringtransaction" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :recur_data_name, :string
field :recur_data_value, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :type, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
