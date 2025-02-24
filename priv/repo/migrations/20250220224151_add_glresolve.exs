defmodule Sage.Repo.Migrations.AddGlresolve do
  use Ecto.Migration

  def up do
    create table("GLRESOLVE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:GLENTRYKEY, :integer)

      add(:PRENTRYKEY, :integer)

      add(:PRRECORDKEY, :integer)

      add(:DOCENTRYKEY, :integer)

      add(:SUBTOTKEY, :integer)

      add(:DOCHDRKEY, :integer)

      add(:TRX_AMOUNT, :float)

      add(:CURRENCY, :text)

      add(:AMOUNT, :float)

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
    drop(table("GLRESOLVE"))
  end
end
