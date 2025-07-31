
defmodule Conduit.Quickbooks.Object.VinceSandbox.Salesreceipt do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:line,
:customer_name,
:customer_value,
:sync_token,
:ship_from_addr,
:currency_name,
:currency_value,
:global_tax_calculation,
:project_name,
:project_value,
:txn_date,
:ship_date,
:tracking_num,
:class_name,
:class_value,
:print_status,
:payment_ref_num,
:txn_source,
:linked_txn,
:transaction_location_type,
:apply_tax_after_discount,
:doc_number,
:private_note,
:deposit_to_account_name,
:deposit_to_account_value,
:email_status,
:credit_card_payment,
:payment_method_name,
:payment_method_value,
:exchange_rate,
:ship_addr,
:department_name,
:department_value,
:ship_method_name,
:ship_method_value,
:bill_addr,
:qb_updated_at,
:qb_inserted_at,
:home_balance,
:recur_data_name,
:recur_data_value,
:total_amt,
:balance,
:home_total_amt,
:free_form_address]

 @primary_key false
 schema "salesreceipt" do
  field :id, :string, primary_key: true
field :line, {:array, :map}
field :customer_name, :string
field :customer_value, :string
field :sync_token, :string
field :ship_from_addr, :map
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :project_name, :string
field :project_value, :string
field :txn_date, :date
field :ship_date, :date
field :tracking_num, :string
field :class_name, :string
field :class_value, :string
field :print_status, :string
field :payment_ref_num, :string
field :txn_source, :string
field :linked_txn, {:array, :map}
field :transaction_location_type, :string
field :apply_tax_after_discount, :boolean
field :doc_number, :string
field :private_note, :string
field :deposit_to_account_name, :string
field :deposit_to_account_value, :string
field :email_status, :string
field :credit_card_payment, :map
field :payment_method_name, :string
field :payment_method_value, :string
field :exchange_rate, :decimal
field :ship_addr, :map
field :department_name, :string
field :department_value, :string
field :ship_method_name, :string
field :ship_method_value, :string
field :bill_addr, :map
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :home_balance, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
field :total_amt, :decimal
field :balance, :decimal
field :home_total_amt, :decimal
field :free_form_address, :boolean
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
