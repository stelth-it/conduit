defmodule Sage.Repo.Migrations.AddObjects do
  use Ecto.Migration

  def change do
   create table("objects", primary_key: false) do
      add :name, :string, primary_key: true
      add :endpoint_id, references(:endpoints), primary_key: true
      add :fields, :map, comment: "descriptions of the fields on the object"
   end

  end
end
