
defmodule Conduit.Repo.Migrations.AddCreditcardpaymentPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("creditcardpayment", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :credit_card_account_name, :string, comment: "the human friendly credit_card_account name."
add :credit_card_account_value, :string, comment: "the id of the associated credit_card_account entry"
add :amount, :decimal
add :bank_account_name, :string, comment: "the human friendly bank_account name."
add :bank_account_value, :string, comment: "the id of the associated bank_account entry"
add :sync_token, :string
add :private_note, :string
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :txn_date, :date
add :memo, :string
add :print_status, :string
add :check_num, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
