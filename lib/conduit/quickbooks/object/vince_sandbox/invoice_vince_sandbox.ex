
defmodule Conduit.Quickbooks.Object.VinceSandbox.Invoice do 
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
:doc_number,
:project_name,
:project_value,
:txn_date,
:ship_date,
:tracking_num,
:class_name,
:class_value,
:print_status,
:sales_term_name,
:sales_term_value,
:txn_source,
:linked_txn,
:deposit_to_account_name,
:deposit_to_account_value,
:allow_online_ach_payment,
:transaction_location_type,
:due_date,
:qb_updated_at,
:qb_inserted_at,
:private_note,
:email_status,
:exchange_rate,
:deposit,
:allow_online_credit_card_payment,
:ship_addr,
:department_name,
:department_value,
:ship_method_name,
:ship_method_value,
:bill_addr,
:apply_tax_after_discount,
:home_balance,
:total_amt,
:invoice_link,
:recur_data_name,
:recur_data_value,
:tax_exemption_name,
:tax_exemption_value,
:balance,
:home_total_amt,
:free_form_address,
:allow_online_payment,
:allow_ipn_payment]

 @primary_key false
 schema "invoice" do
  field :id, :string, primary_key: true
field :line, {:array, :map}
field :customer_name, :string
field :customer_value, :string
field :sync_token, :string
field :ship_from_addr, :map
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :doc_number, :string
field :project_name, :string
field :project_value, :string
field :txn_date, :date
field :ship_date, :date
field :tracking_num, :string
field :class_name, :string
field :class_value, :string
field :print_status, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :txn_source, :string
field :linked_txn, {:array, :map}
field :deposit_to_account_name, :string
field :deposit_to_account_value, :string
field :allow_online_ach_payment, :boolean
field :transaction_location_type, :string
field :due_date, :date
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :private_note, :string
field :email_status, :string
field :exchange_rate, :decimal
field :deposit, :decimal
field :allow_online_credit_card_payment, :boolean
field :ship_addr, :map
field :department_name, :string
field :department_value, :string
field :ship_method_name, :string
field :ship_method_value, :string
field :bill_addr, :map
field :apply_tax_after_discount, :boolean
field :home_balance, :decimal
field :total_amt, :decimal
field :invoice_link, :string
field :recur_data_name, :string
field :recur_data_value, :string
field :tax_exemption_name, :string
field :tax_exemption_value, :string
field :balance, :decimal
field :home_total_amt, :decimal
field :free_form_address, :boolean
field :allow_online_payment, :boolean
field :allow_ipn_payment, :boolean
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
