
defmodule Conduit.Repo.Migrations.AddTaxcodePatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("taxcode", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :name, :string
add :sync_token, :string
add :tax_group, :boolean
add :taxable, :boolean
add :active, :boolean
add :description, :string
add :hidden, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :tax_code_config_type, :string
    timestamps()
    end
  end
end
