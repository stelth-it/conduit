defmodule Conduit.Repo.Migrations.AddObjectsField do
  use Ecto.Migration

  def change do
    alter table("qb_endpoint") do
      add :objects, :map
    end
  end
end
