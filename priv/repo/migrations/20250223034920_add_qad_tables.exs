defmodule Conduit.Repo.Migrations.AddQadTables do
  use Ecto.Migration

  def change do
    create table("qad_tables", primary_key: false) do
      add :table_name, :string, primary_key: true
      add :table_flags, :string
      add :field_count, :integer
      add :fields, :map
    end

    create unique_index("qad_tables", [:table_name])
  end
end
