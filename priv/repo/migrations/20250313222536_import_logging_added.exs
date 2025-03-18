defmodule Conduit.Repo.Migrations.ImportLoggingAdded do
  use Ecto.Migration

  def change do
    create table("qad_imports") do
      add :import_type, :string
      timestamps()
    end

    create table("qad_import_actions") do
      add :data_source, :string
      add :status, :text
      add :qad_import_id, references("qad_imports")
      add :qad_table_name, references("qad_tables", column: :table_name, type: :string)
      timestamps()
    end
  end
end
