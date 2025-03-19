defmodule Conduit.Repo.Migrations.QadTableAddRecordCount do
  use Ecto.Migration

  def change do
    alter table("qad_tables") do
      add :record_count, :integer
    end
  end
end
