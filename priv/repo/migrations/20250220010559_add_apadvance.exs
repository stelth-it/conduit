defmodule Sage.Repo.Migrations.AddApadvance do
  use Ecto.Migration

  def up do
    create table("APADVANCE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:PAYMENTMETHOD, :string)

      add(:PAYMENTMETHODKEY, :integer)

      add(:DESCRIPTION, :string)

      add(:VENDORNAME, :string)

      add(:VENDORID, :string)

      add(:TOTALENTERED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALDUE, :float)

      add(:STATE, :string)

      add(:DOCNUMBER, :string)

      add(:CLEARED, :string)

      add(:CLRDATE, :naive_datetime)

      add(:SYSTEMGENERATED, :string)

      add(:CURRENCY, :string)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALDUE, :float)

      add(:BASECURR, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:ENTITY, :string)

      add(:FINANCIALENTITY, :string)

      add(:ADVANCEDATE, :naive_datetime)

      add(:PAYMENTDATE, :naive_datetime)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:SUPDOCID, :string)

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
    drop(table("APADVANCE"))
  end
end
