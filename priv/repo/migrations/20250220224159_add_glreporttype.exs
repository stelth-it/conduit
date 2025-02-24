defmodule Sage.Repo.Migrations.AddGlreporttype do
  use Ecto.Migration

  def up do
    create table("GLREPORTTYPE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:NAME, :text)

      add(:STATUS, :text)

      add(:RECORDNO, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :text)

      add(:MEGAENTITYNAME, :text)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLREPORTTYPE"))
  end
end
