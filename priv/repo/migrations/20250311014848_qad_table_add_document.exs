defmodule Conduit.Repo.Migrations.QadTableAddDocument do
  use Ecto.Migration

  def change do
    alter table("qad_tables") do
      add :embed_document, :text
      add :description, :text
    end
  end
end
