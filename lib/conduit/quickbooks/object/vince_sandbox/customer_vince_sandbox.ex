
defmodule Conduit.Quickbooks.Object.VinceSandbox.Customer do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:display_name,
:title,
:given_name,
:middle_name,
:suffix,
:family_name,
:resale_num,
:secondary_tax_identifier,
:ar_account_name,
:ar_account_value,
:default_tax_code_name,
:default_tax_code_value,
:preferred_delivery_method,
:gstin,
:sales_term_name,
:sales_term_value,
:customer_type_ref,
:business_number,
:bill_with_parent,
:currency_name,
:currency_value,
:job,
:balance_with_jobs,
:open_balance_date,
:taxable,
:qb_updated_at,
:qb_inserted_at,
:parent_name,
:parent_value,
:notes,
:active,
:company_name,
:balance,
:ship_addr,
:payment_method_name,
:payment_method_value,
:is_project,
:source,
:primary_tax_identifier,
:gst_registration_type,
:print_on_check_name,
:bill_addr,
:fully_qualified_name]

 @primary_key false
 schema "customer" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :display_name, :string
field :title, :string
field :given_name, :string
field :middle_name, :string
field :suffix, :string
field :family_name, :string
field :resale_num, :string
field :secondary_tax_identifier, :string
field :ar_account_name, :string
field :ar_account_value, :string
field :default_tax_code_name, :string
field :default_tax_code_value, :string
field :preferred_delivery_method, :string
field :gstin, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :customer_type_ref, :string
field :business_number, :string
field :bill_with_parent, :boolean
field :currency_name, :string
field :currency_value, :string
field :job, :boolean
field :balance_with_jobs, :decimal
field :open_balance_date, :date
field :taxable, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :parent_name, :string
field :parent_value, :string
field :notes, :string
field :active, :boolean
field :company_name, :string
field :balance, :decimal
field :ship_addr, :map
field :payment_method_name, :string
field :payment_method_value, :string
field :is_project, :boolean
field :source, :string
field :primary_tax_identifier, :string
field :gst_registration_type, :string
field :print_on_check_name, :string
field :bill_addr, :map
field :fully_qualified_name, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
