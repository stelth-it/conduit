defmodule Sage.Repo.Migrations.AddArterm do
  use Ecto.Migration

  def up do
    create table("ARTERM", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:NAME, :string)

      add(:DESCRIPTION, :string)

      add(:STATUS, :string)

      add(:RECORDNO, :integer)

      add(:WHENMODIFIED, :naive_datetime)

      add(:WHENCREATED, :naive_datetime)

      add(:MODIFIEDBY, :integer)

      add(:CREATEDBY, :integer)

      add(:DUEDATE, :integer)

      add(:DUEFROM, :string)

      add(:DISCDATE, :integer)

      add(:DISCFROM, :string)

      add(:DISCAMOUNT, :integer)

      add(:DISCPERCAMN, :string)

      add(:DISCFUDGEDAYS, :integer)

      add(:PEN_TYPES, :string)

      add(:PENAMOUNT, :integer)

      add(:PENPERCAMN, :string)

      add(:PENFUDGEDAYS, :integer)

      add(:DISCCALCON, :string)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARTERM"))
  end
end
