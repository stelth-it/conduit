defmodule Sage.Repo.Migrations.AddGljournal do
  use Ecto.Migration

  def up do
    create table("GLJOURNAL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:SYMBOL, :text)

      add(:STATUS, :text)

      add(:TITLE, :text)

      add(:START_DATE, :naive_datetime)

      add(:LAST_DATE, :naive_datetime)

      add(:ADJ, :boolean)

      add(:BOOKID, :text)

      add(:BOOKTYPE, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:BILLABLE, :boolean)

      add(:DISABLEDIRECTPOSTING, :boolean)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLJOURNAL"))
  end
end
