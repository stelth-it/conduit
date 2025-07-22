
defmodule Conduit.Repo.Migrations.AddInvoicePatrickSandbox do
  use Ecto.Migration

  def change do
    create table("invoice", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :line, {:array, :map}
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :ship_from_addr, :map
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :doc_number, :string
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :txn_date, :date
add :ship_date, :date
add :tracking_num, :string
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :print_status, :string
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :txn_source, :string
add :linked_txn, {:array, :map}
add :deposit_to_account_name, :string, comment: "the human friendly deposit_to_account name."
add :deposit_to_account_value, :string, comment: "the id of the associated deposit_to_account entry"
add :allow_online_ach_payment, :boolean
add :transaction_location_type, :string
add :due_date, :date
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :private_note, :string
add :email_status, :string
add :exchange_rate, :decimal
add :deposit, :decimal
add :allow_online_credit_card_payment, :boolean
add :ship_addr, :map
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :ship_method_name, :string, comment: "the human friendly ship_method name."
add :ship_method_value, :string, comment: "the id of the associated ship_method entry"
add :bill_addr, :map
add :apply_tax_after_discount, :boolean
add :home_balance, :decimal
add :total_amt, :decimal
add :invoice_link, :string
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :tax_exemption_name, :string, comment: "the human friendly tax_exemption name."
add :tax_exemption_value, :string, comment: "the id of the associated tax_exemption entry"
add :balance, :decimal
add :home_total_amt, :decimal
add :free_form_address, :boolean
add :allow_online_payment, :boolean
add :allow_ipn_payment, :boolean
    timestamps()
    end
  end
end
