defmodule Sage.Repo.Migrations.AddObjectFieldsToEndpoint do
  use Ecto.Migration

  def change do
    alter table("endpoints") do
      add :objects, {:array, :string}, comment: "names of objects that are listed by endoint"
      add :unqueryable_objects, {:array, :string}, comment: "objects that cannot be fetched from the endpoint"
      add :excluded_objects, {:array, :string}, comment: "objects that are excluded by user"
    end
  end
end
