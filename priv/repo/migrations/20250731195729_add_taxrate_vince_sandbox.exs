
defmodule Conduit.Repo.Migrations.AddTaxrateVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("taxrate", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :rate_value, :string
add :name, :string
add :agency_name, :string, comment: "the human friendly agency name."
add :agency_value, :string, comment: "the id of the associated agency entry"
add :tax_return_line_name, :string, comment: "the human friendly tax_return_line name."
add :tax_return_line_value, :string, comment: "the id of the associated tax_return_line entry"
add :active, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :original_tax_rate, :string
add :description, :string
    timestamps()
    end
  end
end
