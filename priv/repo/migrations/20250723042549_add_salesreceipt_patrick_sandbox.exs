
defmodule Conduit.Repo.Migrations.AddSalesreceiptPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("salesreceipt", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :line, {:array, :map}
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :ship_from_addr, :map
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :txn_date, :date
add :ship_date, :date
add :tracking_num, :string
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :print_status, :string
add :payment_ref_num, :string
add :txn_source, :string
add :linked_txn, {:array, :map}
add :transaction_location_type, :string
add :apply_tax_after_discount, :boolean
add :doc_number, :string
add :private_note, :string
add :deposit_to_account_name, :string, comment: "the human friendly deposit_to_account name."
add :deposit_to_account_value, :string, comment: "the id of the associated deposit_to_account entry"
add :email_status, :string
add :credit_card_payment, :map
add :payment_method_name, :string, comment: "the human friendly payment_method name."
add :payment_method_value, :string, comment: "the id of the associated payment_method entry"
add :exchange_rate, :decimal
add :ship_addr, :map
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :ship_method_name, :string, comment: "the human friendly ship_method name."
add :ship_method_value, :string, comment: "the id of the associated ship_method entry"
add :bill_addr, :map
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :home_balance, :decimal
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :total_amt, :decimal
add :balance, :decimal
add :home_total_amt, :decimal
add :free_form_address, :boolean
    timestamps()
    end
  end
end
