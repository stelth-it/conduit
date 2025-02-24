defmodule Sage.Repo.Migrations.AddArpayment do
  use Ecto.Migration

  def up do
    create table("ARPAYMENT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDID, :string)

      add(:STATE, :string)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:CLRDATE, :naive_datetime)

      add(:CLEARED, :string)

      add(:RECEIPTDATE, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:TOTALENTERED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:PRBATCH, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:TOTALSELECTED, :float)

      add(:TERMKEY, :integer)

      add(:TERMNAME, :string)

      add(:WHENDISCOUNT, :naive_datetime)

      add(:USERKEY, :integer)

      add(:WHENDUE, :naive_datetime)

      add(:MODULEKEY, :string)

      add(:STATUS, :string)

      add(:SYSTEMGENERATED, :string)

      add(:WHENPOSTED, :naive_datetime)

      add(:ONHOLD, :boolean)

      add(:TRX_TOTALSELECTED, :float)

      add(:DELIVERYMETHOD, :string)

      add(:RECON_DATE, :naive_datetime)

      add(:LOCATIONKEY, :integer)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:NR_TOTALENTERED, :float)

      add(:NR_TRX_TOTALENTERED, :float)

      add(:PAYMENTDATE, :naive_datetime)

      add(:PAYMENTAMOUNT, :float)

      add(:DOCUMENTNUMBER, :string)

      add(:MEMO, :string)

      add(:PAYMENTTYPE, :string)

      add(:FINANCIALACCOUNT, :string)

      add(:BATCHTITLE, :string)

      add(:POSTINGDATE, :naive_datetime)

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
    drop(table("ARPAYMENT"))
  end
end
