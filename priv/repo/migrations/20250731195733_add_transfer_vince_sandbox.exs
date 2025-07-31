
defmodule Conduit.Repo.Migrations.AddTransferVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("transfer", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :to_account_name, :string, comment: "the human friendly to_account name."
add :to_account_value, :string, comment: "the id of the associated to_account entry"
add :amount, :decimal
add :from_account_name, :string, comment: "the human friendly from_account name."
add :from_account_value, :string, comment: "the id of the associated from_account entry"
add :sync_token, :string
add :private_note, :string
add :txn_date, :date
add :transaction_location_type, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
    timestamps()
    end
  end
end
