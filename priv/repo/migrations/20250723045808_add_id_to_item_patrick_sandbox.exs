defmodule Conduit.Repo.Migrations.AddIdToItemPatrickSandbox do
  use Ecto.Migration

  def change do
    alter table("item", prefix: "patrick_sandbox") do
      add :id, :string, primary_key: true
    end
  end
end
