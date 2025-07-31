
defmodule Conduit.Repo.Migrations.AddExchangerateVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("exchangerate", prefix: "vince_sandbox", primary_key: false) do
    add :sync_token, :string
add :as_of_date, :boolean
add :source_currency_code, :string
add :rate, :decimal
add :target_currency_code, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
