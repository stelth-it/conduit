defmodule Sage.Repo.Migrations.AddGlbudgetheader do
  use Ecto.Migration

  def up do
    create table("GLBUDGETHEADER", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:BUDGETID, :text)

      add(:DESCRIPTION, :text)

      add(:SYSTEMGENERATED, :text)

      add(:DEFAULT_BUDGET, :boolean)

      add(:USER, :text)

      add(:STATUS, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:ISCONSOLIDATED, :boolean)

      add(:CURRENCY, :text)

      add(:ISPABUDGET, :boolean)

      add(:ISPCNBUDGET, :boolean)

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
    drop(table("GLBUDGETHEADER"))
  end
end
