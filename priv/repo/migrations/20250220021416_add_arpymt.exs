defmodule Sage.Repo.Migrations.AddArpymt do
  use Ecto.Migration

  def up do
    create table("ARPYMT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:FINANCIALENTITY, :string)

      add(:FINANCIALENTITYTYPE, :string)

      add(:FINANCIALACCOUNTNAME, :string)

      add(:FINANCIALACCOUNTCURRENCY, :string)

      add(:SUMMARYTITLE, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:DISPLAYSTATE, :string)

      add(:PAYMENTMETHOD, :string)

      add(:PAYMENTMETHODKEY, :integer)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:PAYERNAME, :string)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:RECEIPTDATE, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:TOTALENTERED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:BILLTOPAYTONAME, :string)

      add(:PRBATCH, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:CLEARED, :string)

      add(:CLRDATE, :naive_datetime)

      add(:RECORDID, :string)

      add(:BILLTOPAYTOKEY, :integer)

      add(:PARENTPAYMENTKEY, :integer)

      add(:UNDEPOSITEDACCOUNTNO, :string)

      add(:CUSTENTITY, :string)

      add(:TAXSOLUTIONID, :string)

      add(:SUPDOCID, :string)

      add(:MULTIENTITYPYMTKEY, :integer)

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
    drop(table("ARPYMT"))
  end
end
