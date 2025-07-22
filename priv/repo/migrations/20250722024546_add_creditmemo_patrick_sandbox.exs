
defmodule Conduit.Repo.Migrations.AddCreditmemoPatrickSandbox do
  use Ecto.Migration

  def change do
    create table("creditmemo", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :line, {:array, :map}
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :txn_date, :date
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :print_status, :string
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :total_amt, :decimal
add :invoice_name, :string, comment: "the human friendly invoice name."
add :invoice_value, :string, comment: "the id of the associated invoice entry"
add :transaction_location_type, :string
add :apply_tax_after_discount, :boolean
add :doc_number, :string
add :private_note, :string
add :payment_method_name, :string, comment: "the human friendly payment_method name."
add :payment_method_value, :string, comment: "the id of the associated payment_method entry"
add :exchange_rate, :decimal
add :ship_addr, :map
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :email_status, :string
add :bill_addr, :map
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :home_balance, :decimal
add :remaining_credit, :decimal
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :tax_exemption_name, :string, comment: "the human friendly tax_exemption name."
add :tax_exemption_value, :string, comment: "the id of the associated tax_exemption entry"
add :balance, :decimal
add :home_total_amt, :decimal
    timestamps()
    end
  end
end
