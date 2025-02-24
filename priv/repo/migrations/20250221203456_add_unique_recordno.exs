defmodule Conduit.Repo.Migrations.AddUniqueRecordno do
  use Ecto.Migration
  alias Conduit.Repo

  def table_exists?(table_name) do
    query = """
    SELECT EXISTS (
      SELECT FROM information_schema.tables 
      WHERE table_schema = 'public' 
      AND table_name = '#{table_name}'
    )
    """

    {:ok, %{rows: [[exists]]}} = Repo.query(query)
    exists
  end

  def up do
    objects_with_recordno =
      Repo.all(Conduit.Sage.Object.Object)
      |> Enum.filter(fn object ->
        Enum.any?(object.fields, &(&1.name == "RECORDNO"))
      end)
      |> Enum.filter(fn object ->
        table_exists?(String.upcase(object.name))
      end)

    for object <- objects_with_recordno do
      create(unique_index(String.upcase(object.name), [:RECORDNO]))
    end
  end

  def down do
    objects_with_recordno =
      Repo.all(Conduit.Sage.Object.Object)
      |> Enum.filter(fn object ->
        Enum.any?(object.fields, &(&1.name == "RECORDNO"))
      end)
      |> Enum.filter(fn object ->
        table_exists?(String.upcase(object.name))
      end)

    for object <- objects_with_recordno do
      drop(unique_index(String.upcase(object.name), [:RECORDNO]))
    end
  end
end
