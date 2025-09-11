defmodule Conduit.Repo.Migrations.AddUniqueIndexToInventoryAdjustmentVince do
  use Ecto.Migration

  def change do
    create unique_index("inventoryadjustment", [:id], prefix: "vince_sandbox")
  end
end
