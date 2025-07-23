
defmodule Conduit.Repo.Migrations.AddReimbursechargePatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("reimbursecharge", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :line, {:array, :map}
add :amount, :decimal
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :private_note, :string
add :linked_txn, {:array, :map}
add :exchange_rate, :decimal
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :has_been_invoiced, :boolean
add :home_total_amt, :decimal
    timestamps()
    end
  end
end
