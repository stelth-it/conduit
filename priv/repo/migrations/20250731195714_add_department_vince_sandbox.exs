
defmodule Conduit.Repo.Migrations.AddDepartmentVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("department", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :name, :string
add :sync_token, :string
add :parent_name, :string, comment: "the human friendly parent name."
add :parent_value, :string, comment: "the id of the associated parent entry"
add :active, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :fully_qualified_name, :string
add :sub_department, :boolean
    timestamps()
    end
  end
end
