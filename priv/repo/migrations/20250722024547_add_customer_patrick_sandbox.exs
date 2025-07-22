
defmodule Conduit.Repo.Migrations.AddCustomerPatrickSandbox do
  use Ecto.Migration

  def change do
    create table("customer", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :display_name, :string
add :title, :string
add :given_name, :string
add :middle_name, :string
add :suffix, :string
add :family_name, :string
add :resale_num, :string
add :secondary_tax_identifier, :string
add :ar_account_name, :string, comment: "the human friendly ar_account name."
add :ar_account_value, :string, comment: "the id of the associated ar_account entry"
add :default_tax_code_name, :string, comment: "the human friendly default_tax_code name."
add :default_tax_code_value, :string, comment: "the id of the associated default_tax_code entry"
add :preferred_delivery_method, :string
add :gstin, :string
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :customer_type_ref, :string
add :business_number, :string
add :bill_with_parent, :boolean
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :job, :boolean
add :balance_with_jobs, :decimal
add :open_balance_date, :date
add :taxable, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :parent_name, :string, comment: "the human friendly parent name."
add :parent_value, :string, comment: "the id of the associated parent entry"
add :notes, :string
add :active, :boolean
add :company_name, :string
add :balance, :decimal
add :ship_addr, :map
add :payment_method_name, :string, comment: "the human friendly payment_method name."
add :payment_method_value, :string, comment: "the id of the associated payment_method entry"
add :is_project, :boolean
add :source, :string
add :primary_tax_identifier, :string
add :gst_registration_type, :string
add :print_on_check_name, :string
add :bill_addr, :map
add :fully_qualified_name, :string
    timestamps()
    end
  end
end
