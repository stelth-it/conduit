
defmodule Conduit.Repo.Migrations.AddTaxclassificationVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("taxclassification", prefix: "vince_sandbox", primary_key: false) do
    add :parent_name, :string, comment: "the human friendly parent name."
add :parent_value, :string, comment: "the id of the associated parent entry"
add :applicable_to, :string
add :code, :string
add :name, :string
add :description, :string
add :level, :string
    timestamps()
    end
  end
end
