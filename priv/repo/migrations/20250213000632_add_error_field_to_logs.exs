defmodule Sage.Repo.Migrations.AddErrorFieldToLogs do
  use Ecto.Migration

  def change do
    alter table("request_logs") do
      add :error, :map, comment: "map with error description"
    end
  end
end
