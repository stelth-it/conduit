
defmodule Conduit.Repo.Migrations.AddTermPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("term", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :name, :string
add :sync_token, :string
add :discount_percent, :decimal
add :active, :boolean
add :type, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
