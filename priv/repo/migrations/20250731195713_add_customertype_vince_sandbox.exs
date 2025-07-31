
defmodule Conduit.Repo.Migrations.AddCustomertypeVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("customertype", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :name, :string
add :active, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
