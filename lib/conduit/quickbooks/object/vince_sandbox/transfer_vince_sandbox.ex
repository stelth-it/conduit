
defmodule Conduit.Quickbooks.Object.VinceSandbox.Transfer do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:to_account_name,
:to_account_value,
:amount,
:from_account_name,
:from_account_value,
:sync_token,
:private_note,
:txn_date,
:transaction_location_type,
:qb_updated_at,
:qb_inserted_at,
:recur_data_name,
:recur_data_value]

 @primary_key false
 schema "transfer" do
  field :id, :string, primary_key: true
field :to_account_name, :string
field :to_account_value, :string
field :amount, :decimal
field :from_account_name, :string
field :from_account_value, :string
field :sync_token, :string
field :private_note, :string
field :txn_date, :date
field :transaction_location_type, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :recur_data_name, :string
field :recur_data_value, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
