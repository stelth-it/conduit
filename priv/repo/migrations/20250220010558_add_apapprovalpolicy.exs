defmodule Sage.Repo.Migrations.AddApapprovalpolicy do
  use Ecto.Migration

  def up do
    create table("APAPPROVALPOLICY", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:MODULE, :string)

      add(:OBJ_TYPE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APAPPROVALPOLICY"))
  end
end
