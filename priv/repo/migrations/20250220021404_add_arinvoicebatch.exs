defmodule Sage.Repo.Migrations.AddArinvoicebatch do
  use Ecto.Migration

  def up do
    create table("ARINVOICEBATCH", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:TITLE, :string)

      add(:CREATED, :naive_datetime)

      add(:STATUS, :string)

      add(:RECORDTYPE, :string)

      add(:TOTAL, :float)

      add(:OPEN, :string)

      add(:PARENTKEY, :string)

      add(:NOGL, :boolean)

      add(:ACCOUNTNOKEY, :string)

      add(:AUTOCREATED, :string)

      add(:SYSTEMGENERATED, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :string)

      add(:MEGAENTITYNAME, :string)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARINVOICEBATCH"))
  end
end
