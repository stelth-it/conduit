
defmodule Conduit.Repo.Migrations.AddRecurringtransactionPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("recurringtransaction", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :type, :string
    timestamps()
    end
  end
end
