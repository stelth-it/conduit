
defmodule Conduit.Repo.Migrations.AddPaymentVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("payment", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :total_amt, :decimal
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :private_note, :string
add :payment_method_name, :string, comment: "the human friendly payment_method name."
add :payment_method_value, :string, comment: "the id of the associated payment_method entry"
add :unapplied_amt, :decimal
add :deposit_to_account_name, :string, comment: "the human friendly deposit_to_account name."
add :deposit_to_account_value, :string, comment: "the id of the associated deposit_to_account entry"
add :exchange_rate, :decimal
add :line, {:array, :map}
add :txn_source, :string
add :txn_date, :date
add :credit_card_payment, :map
add :transaction_location_type, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :payment_ref_num, :string
add :tax_exemption_name, :string, comment: "the human friendly tax_exemption name."
add :tax_exemption_value, :string, comment: "the id of the associated tax_exemption entry"
add :sparse, :string
    timestamps()
    end
  end
end
