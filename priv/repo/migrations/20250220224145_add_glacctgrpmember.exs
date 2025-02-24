defmodule Sage.Repo.Migrations.AddGlacctgrpmember do
  use Ecto.Migration

  def up do
    create table("GLACCTGRPMEMBER", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:PARENTKEY, :integer)

      add(:CHILDNAME, :text)

      add(:SORTORD, :integer)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLACCTGRPMEMBER"))
  end
end
