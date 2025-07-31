
defmodule Conduit.Quickbooks.Object.VinceSandbox.Billpayment do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:vendor_name,
:vendor_value,
:line,
:total_amt,
:pay_type,
:sync_token,
:currency_name,
:currency_value,
:doc_number,
:private_note,
:txn_date,
:exchange_rate,
:ap_account_name,
:ap_account_value,
:department_name,
:department_value,
:transaction_location_type,
:process_bill_payment,
:qb_updated_at,
:qb_inserted_at]

 @primary_key false
 schema "billpayment" do
  field :id, :string, primary_key: true
field :vendor_name, :string
field :vendor_value, :string
field :line, {:array, :map}
field :total_amt, :decimal
field :pay_type, :string
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :doc_number, :string
field :private_note, :string
field :txn_date, :date
field :exchange_rate, :decimal
field :ap_account_name, :string
field :ap_account_value, :string
field :department_name, :string
field :department_value, :string
field :transaction_location_type, :string
field :process_bill_payment, :boolean
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
