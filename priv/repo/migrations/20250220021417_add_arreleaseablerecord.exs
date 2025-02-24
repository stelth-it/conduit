defmodule Sage.Repo.Migrations.AddArreleaseablerecord do
  use Ecto.Migration

  def up do
    create table("ARRELEASEABLERECORD", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:RETAINAGEINVOICEITEMKEY, :string)

      add(:RETAINAGEINVOICEKEY, :integer)

      add(:LINE_NO, :string)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:AMOUNTRETAINED, :float)

      add(:TRX_AMOUNTRETAINED, :float)

      add(:TRX_TOTALRELEASED, :float)

      add(:TRX_AMOUNTREMAINING, :float)

      add(:CUSTOMERID, :string)

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

      add(:PROJECTCONTRACTID, :string)

      add(:PROJECTCONTRACTKEY, :integer)

      add(:PROJECTCONTRACTLINEID, :string)

      add(:PROJECTCONTRACTLINEKEY, :integer)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARRELEASEABLERECORD"))
  end
end
