defmodule Sage.Repo.Migrations.AddApreleaseablerecord do
  use Ecto.Migration

  def up do
    create table("APRELEASEABLERECORD", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:RETAINAGEBILLITEMKEY, :string)

      add(:RETAINAGEBILLKEY, :integer)

      add(:LINE_NO, :string)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:AMOUNTRETAINED, :float)

      add(:TRX_AMOUNTRETAINED, :float)

      add(:TRX_TOTALRELEASED, :float)

      add(:TRX_AMOUNTREMAINING, :float)

      add(:VENDORID, :string)

      add(:DOCDATE, :naive_datetime)

      add(:DOCENTRYKEY, :integer)

      add(:DOCNO, :string)

      add(:DOCID, :string)

      add(:DOCKEY, :integer)

      add(:SOURCEDOCUMENTID, :string)

      add(:DEPARTMENTKEY, :string)

      add(:DEPARTMENTID, :string)

      add(:DEPARTMENT, :string)

      add(:LOCATIONID, :string)

      add(:LOCATION, :string)

      add(:MEMO, :string)

      add(:PRIMARYDOCKEY, :integer)

      add(:PRIMARYDOCLINEKEY, :integer)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APRELEASEABLERECORD"))
  end
end
