
defmodule Conduit.Repo.Migrations.AddDepositVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("deposit", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :deposit_to_account_name, :string, comment: "the human friendly deposit_to_account name."
add :deposit_to_account_value, :string, comment: "the id of the associated deposit_to_account entry"
add :line, {:array, :map}
add :sync_token, :string
add :global_tax_calculation, :string
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :private_note, :string
add :exchange_rate, :decimal
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :txn_source, :string
add :txn_date, :date
add :transaction_location_type, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :total_amt, :decimal
add :home_total_amt, :decimal
    timestamps()
    end
  end
end
