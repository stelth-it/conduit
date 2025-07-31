
defmodule Conduit.Repo.Migrations.AddTaxagencyVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("taxagency", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :display_name, :string
add :sync_token, :string
add :tax_tracked_on_sales, :boolean
add :tax_tracked_on_purchases, :boolean
add :last_file_date, :date
add :tax_registration_number, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :tax_agency_config, :string
    timestamps()
    end
  end
end
