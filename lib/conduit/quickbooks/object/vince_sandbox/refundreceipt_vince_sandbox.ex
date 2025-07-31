
defmodule Conduit.Quickbooks.Object.VinceSandbox.Refundreceipt do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:deposit_to_account_name,
:deposit_to_account_value,
:line,
:sync_token,
:currency_name,
:currency_value,
:payment_ref_num,
:global_tax_calculation,
:project_name,
:project_value,
:txn_date,
:class_name,
:class_value,
:print_status,
:txn_source,
:transaction_location_type,
:qb_updated_at,
:qb_inserted_at,
:doc_number,
:private_note,
:credit_card_payment,
:customer_name,
:customer_value,
:payment_method_name,
:payment_method_value,
:exchange_rate,
:ship_addr,
:department_name,
:department_value,
:payment_type,
:bill_addr,
:apply_tax_after_discount,
:home_balance,
:recur_data_name,
:recur_data_value,
:total_amt,
:tax_exemption_name,
:tax_exemption_value,
:balance,
:home_total_amt]

 @primary_key false
 schema "refundreceipt" do
  field :id, :string, primary_key: true
field :deposit_to_account_name, :string
field :deposit_to_account_value, :string
field :line, {:array, :map}
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :payment_ref_num, :string
field :global_tax_calculation, :string
field :project_name, :string
field :project_value, :string
field :txn_date, :date
field :class_name, :string
field :class_value, :string
field :print_status, :string
field :txn_source, :string
field :transaction_location_type, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :doc_number, :string
field :private_note, :string
field :credit_card_payment, :map
field :customer_name, :string
field :customer_value, :string
field :payment_method_name, :string
field :payment_method_value, :string
field :exchange_rate, :decimal
field :ship_addr, :map
field :department_name, :string
field :department_value, :string
field :payment_type, :string
field :bill_addr, :map
field :apply_tax_after_discount, :boolean
field :home_balance, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
field :total_amt, :decimal
field :tax_exemption_name, :string
field :tax_exemption_value, :string
field :balance, :decimal
field :home_total_amt, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
