
defmodule Conduit.Repo.Migrations.AddPurchaseorderPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("purchaseorder", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :ap_account_name, :string, comment: "the human friendly ap_account name."
add :ap_account_value, :string, comment: "the id of the associated ap_account entry"
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :line, {:array, :map}
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :txn_date, :date
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :linked_txn, {:array, :map}
add :memo, :string
add :po_status, :string
add :transaction_location_type, :string
add :due_date, :date
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :doc_number, :string
add :private_note, :string
add :ship_method_name, :string, comment: "the human friendly ship_method name."
add :ship_method_value, :string, comment: "the id of the associated ship_method entry"
add :ship_name, :string, comment: "the human friendly ship name."
add :ship_value, :string, comment: "the id of the associated ship entry"
add :exchange_rate, :decimal
add :ship_addr, :map
add :vendor_addr, :map
add :email_status, :string
add :total_amt, :decimal
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
    timestamps()
    end
  end
end
