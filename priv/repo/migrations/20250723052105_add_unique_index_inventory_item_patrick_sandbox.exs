defmodule Conduit.Repo.Migrations.AddUniqueIndexInventoryItemPatrickSandbox do
  use Ecto.Migration

  def change do
    create unique_index("inventoryadjustment", [:id], prefix: "patrick_sandbox")
  end
end
