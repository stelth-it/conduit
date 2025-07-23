
defmodule Conduit.Repo.Migrations.AddBillPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("bill", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :line, {:array, :map}
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :txn_date, :date
add :ap_account_name, :string, comment: "the human friendly ap_account name."
add :ap_account_value, :string, comment: "the id of the associated ap_account entry"
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :linked_txn, {:array, :map}
add :total_amt, :decimal
add :transaction_location_type, :string
add :due_date, :date
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :doc_number, :string
add :private_note, :string
add :exchange_rate, :decimal
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :include_in_annual_tpar, :boolean
add :home_balance, :decimal
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :balance, :decimal
    timestamps()
    end
  end
end
