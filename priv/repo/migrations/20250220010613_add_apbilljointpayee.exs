defmodule Sage.Repo.Migrations.AddApbilljointpayee do
  use Ecto.Migration

  def up do
    create table("APBILLJOINTPAYEE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:JOINTPAYEENAME, :string)

      add(:JOINTPAYEEPRINTAS, :string)

      add(:APBILLKEY, :integer)

      add(:APBILLID, :string)

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
    drop(table("APBILLJOINTPAYEE"))
  end
end
