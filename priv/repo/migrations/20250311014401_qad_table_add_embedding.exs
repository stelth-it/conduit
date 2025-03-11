defmodule Conduit.Repo.Migrations.QadTableAddEmbedding do
  use Ecto.Migration

  def change do
    alter table("qad_tables") do
      add :voyage_embedding, :vector, size: 512
    end
  end
end
