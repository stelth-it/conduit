
defmodule Conduit.Quickbooks.Object.VinceSandbox.Vendor do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:title,
:given_name,
:middle_name,
:suffix,
:family_name,
:display_name,
:ap_account_name,
:ap_account_value,
:term_name,
:term_value,
:source,
:gstin,
:t4_a_eligible,
:business_number,
:currency_name,
:currency_value,
:has_tpar,
:tax_reporting_basis,
:active,
:qb_updated_at,
:qb_inserted_at,
:vendor1099,
:cost_rate,
:bill_rate,
:t5018_eligible,
:company_name,
:tax_identifier,
:acct_num,
:gst_registration_type,
:print_on_check_name,
:bill_addr,
:balance]

 @primary_key false
 schema "vendor" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :title, :string
field :given_name, :string
field :middle_name, :string
field :suffix, :string
field :family_name, :string
field :display_name, :string
field :ap_account_name, :string
field :ap_account_value, :string
field :term_name, :string
field :term_value, :string
field :source, :string
field :gstin, :string
field :t4_a_eligible, :boolean
field :business_number, :string
field :currency_name, :string
field :currency_value, :string
field :has_tpar, :boolean
field :tax_reporting_basis, :string
field :active, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :vendor1099, :boolean
field :cost_rate, :decimal
field :bill_rate, :decimal
field :t5018_eligible, :boolean
field :company_name, :string
field :tax_identifier, :string
field :acct_num, :string
field :gst_registration_type, :string
field :print_on_check_name, :string
field :bill_addr, :map
field :balance, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
