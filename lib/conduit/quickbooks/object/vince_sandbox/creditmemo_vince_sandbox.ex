
defmodule Conduit.Quickbooks.Object.VinceSandbox.Creditmemo do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:line,
:customer_name,
:customer_value,
:sync_token,
:currency_name,
:currency_value,
:global_tax_calculation,
:project_name,
:project_value,
:txn_date,
:class_name,
:class_value,
:print_status,
:sales_term_name,
:sales_term_value,
:total_amt,
:invoice_name,
:invoice_value,
:transaction_location_type,
:apply_tax_after_discount,
:doc_number,
:private_note,
:payment_method_name,
:payment_method_value,
:exchange_rate,
:ship_addr,
:department_name,
:department_value,
:email_status,
:bill_addr,
:qb_updated_at,
:qb_inserted_at,
:home_balance,
:remaining_credit,
:recur_data_name,
:recur_data_value,
:tax_exemption_name,
:tax_exemption_value,
:balance,
:home_total_amt]

 @primary_key false
 schema "creditmemo" do
  field :id, :string, primary_key: true
field :line, {:array, :map}
field :customer_name, :string
field :customer_value, :string
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :project_name, :string
field :project_value, :string
field :txn_date, :date
field :class_name, :string
field :class_value, :string
field :print_status, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :total_amt, :decimal
field :invoice_name, :string
field :invoice_value, :string
field :transaction_location_type, :string
field :apply_tax_after_discount, :boolean
field :doc_number, :string
field :private_note, :string
field :payment_method_name, :string
field :payment_method_value, :string
field :exchange_rate, :decimal
field :ship_addr, :map
field :department_name, :string
field :department_value, :string
field :email_status, :string
field :bill_addr, :map
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :home_balance, :decimal
field :remaining_credit, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
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
