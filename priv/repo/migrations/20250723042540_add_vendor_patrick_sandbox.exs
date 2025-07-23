
defmodule Conduit.Repo.Migrations.AddVendorPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("vendor", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :title, :string
add :given_name, :string
add :middle_name, :string
add :suffix, :string
add :family_name, :string
add :display_name, :string
add :ap_account_name, :string, comment: "the human friendly ap_account name."
add :ap_account_value, :string, comment: "the id of the associated ap_account entry"
add :term_name, :string, comment: "the human friendly term name."
add :term_value, :string, comment: "the id of the associated term entry"
add :source, :string
add :gstin, :string
add :t4_a_eligible, :boolean
add :business_number, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :has_tpar, :boolean
add :tax_reporting_basis, :string
add :active, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :vendor1099, :boolean
add :cost_rate, :decimal
add :bill_rate, :decimal
add :t5018_eligible, :boolean
add :company_name, :string
add :tax_identifier, :string
add :acct_num, :string
add :gst_registration_type, :string
add :print_on_check_name, :string
add :bill_addr, :map
add :balance, :decimal
    timestamps()
    end
  end
end
