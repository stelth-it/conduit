
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Deposit do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:deposit_to_account_name,
:deposit_to_account_value,
:line,
:sync_token,
:global_tax_calculation,
:currency_name,
:currency_value,
:private_note,
:exchange_rate,
:department_name,
:department_value,
:txn_source,
:txn_date,
:transaction_location_type,
:qb_updated_at,
:qb_inserted_at,
:recur_data_name,
:recur_data_value,
:total_amt,
:home_total_amt]

 @primary_key false
 schema "deposit" do
  field :id, :string, primary_key: true
field :deposit_to_account_name, :string
field :deposit_to_account_value, :string
field :line, {:array, :map}
field :sync_token, :string
field :global_tax_calculation, :string
field :currency_name, :string
field :currency_value, :string
field :private_note, :string
field :exchange_rate, :decimal
field :department_name, :string
field :department_value, :string
field :txn_source, :string
field :txn_date, :date
field :transaction_location_type, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :recur_data_name, :string
field :recur_data_value, :string
field :total_amt, :decimal
field :home_total_amt, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
