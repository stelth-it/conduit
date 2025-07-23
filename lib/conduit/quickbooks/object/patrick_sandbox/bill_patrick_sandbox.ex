
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Bill do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:vendor_name,
:vendor_value,
:line,
:sync_token,
:currency_name,
:currency_value,
:global_tax_calculation,
:txn_date,
:ap_account_name,
:ap_account_value,
:sales_term_name,
:sales_term_value,
:linked_txn,
:total_amt,
:transaction_location_type,
:due_date,
:qb_updated_at,
:qb_inserted_at,
:doc_number,
:private_note,
:exchange_rate,
:department_name,
:department_value,
:include_in_annual_tpar,
:home_balance,
:recur_data_name,
:recur_data_value,
:balance]

 @primary_key false
 schema "bill" do
  field :id, :string, primary_key: true
field :vendor_name, :string
field :vendor_value, :string
field :line, {:array, :map}
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :txn_date, :date
field :ap_account_name, :string
field :ap_account_value, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :linked_txn, {:array, :map}
field :total_amt, :decimal
field :transaction_location_type, :string
field :due_date, :date
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :doc_number, :string
field :private_note, :string
field :exchange_rate, :decimal
field :department_name, :string
field :department_value, :string
field :include_in_annual_tpar, :boolean
field :home_balance, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
field :balance, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
