
defmodule Conduit.Repo.Migrations.AddBillpaymentPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("billpayment", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :line, {:array, :map}
add :total_amt, :decimal
add :pay_type, :string
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :doc_number, :string
add :private_note, :string
add :txn_date, :date
add :exchange_rate, :decimal
add :ap_account_name, :string, comment: "the human friendly ap_account name."
add :ap_account_value, :string, comment: "the id of the associated ap_account entry"
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :transaction_location_type, :string
add :process_bill_payment, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
