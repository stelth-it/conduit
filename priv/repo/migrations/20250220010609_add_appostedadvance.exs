defmodule Sage.Repo.Migrations.AddAppostedadvance do
  use Ecto.Migration

  def up do
    create table("APPOSTEDADVANCE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:STATE, :string)

      add(:ENTITY, :string)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:DOCUMENTNUMBER, :string)

      add(:MEMO, :string)

      add(:DESCRIPTION2, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:PAYMENTTYPE, :string)

      add(:PAYMENTDATE, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:PAYMENTAMOUNT, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:PAYMENTTRXAMOUNT, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:PRBATCH, :string)

      add(:PARENTPAYMENTKEY, :integer)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:FINANCIALACCOUNT, :string)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :string)

      add(:MEGAENTITYNAME, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APPOSTEDADVANCE"))
  end
end
