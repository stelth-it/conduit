defmodule Sage.Repo.Migrations.AddAradvance do
  use Ecto.Migration

  def up do
    create table("ARADVANCE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:PRBATCH, :string)

      add(:FINANCIALENTITY, :string)

      add(:UNDEPOSITEDACCOUNTNO, :string)

      add(:PAYMENTMETHOD, :string)

      add(:PAYMENTMETHODKEY, :integer)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:RECEIPTDATE, :naive_datetime)

      add(:PAYMENTDATE, :naive_datetime)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:RECORDTYPE, :string)

      add(:STATE, :string)

      add(:TOTALENTERED, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TOTALSELECTED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALDUE, :float)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RAWSTATE, :string)

      add(:ENTITY, :string)

      add(:CLEARED, :string)

      add(:CLRDATE, :naive_datetime)

      add(:SYSTEMGENERATED, :string)

      add(:SUPDOCID, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

      add(:TAXSOLUTIONID, :string)

      add(:LINKEDDOCID, :string)

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
    drop(table("ARADVANCE"))
  end
end
