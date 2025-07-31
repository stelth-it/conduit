
defmodule Conduit.Repo.Migrations.AddVendorcreditVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("vendorcredit", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :line, {:array, :map}
add :sync_token, :string
add :global_tax_calculation, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :doc_number, :string
add :private_note, :string
add :linked_txn, {:array, :map}
add :exchange_rate, :decimal
add :ap_account_name, :string, comment: "the human friendly ap_account name."
add :ap_account_value, :string, comment: "the id of the associated ap_account entry"
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :txn_date, :date
add :include_in_annual_tpar, :boolean
add :transaction_location_type, :string
add :balance, :decimal
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :total_amt, :decimal
    timestamps()
    end
  end
end
