
defmodule Conduit.Repo.Migrations.AddBudgetPatrickSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("budget", prefix: "patrick_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :budget_entry_type, :string
add :name, :string
add :budget_detail, {:array, :map}
add :budget_type, :string
add :active, :boolean
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
    timestamps()
    end
  end
end
