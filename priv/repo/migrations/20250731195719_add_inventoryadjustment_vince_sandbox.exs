
defmodule Conduit.Repo.Migrations.AddInventoryadjustmentVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("inventoryadjustment", prefix: "vince_sandbox", primary_key: false) do
    add :line, {:array, :map}
add :adjust_account_name, :string, comment: "the human friendly adjust_account name."
add :adjust_account_value, :string, comment: "the id of the associated adjust_account entry"
add :sync_token, :string
add :id, :string
add :doc_number, :string
add :private_note, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
