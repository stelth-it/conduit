
defmodule Conduit.Repo.Migrations.AddTaxpaymentPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("taxpayment", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :refund, :boolean
add :txn_date, :date
add :payment_account_name, :string, comment: "the human friendly payment_account name."
add :payment_account_value, :string, comment: "the id of the associated payment_account entry"
add :description, :string
add :payment_amount, :decimal
    timestamps()
    end
  end
end
