defmodule Sage.Repo.Migrations.AddAppymt do
  use Ecto.Migration

  def up do
    create table("APPYMT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:RECORDID, :string)

      add(:FINANCIALENTITY, :string)

      add(:FINANCIALENTITYTYPE, :string)

      add(:FINANCIALACCOUNTNAME, :string)

      add(:FINANCIALACCOUNTCURRENCY, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:PAYMENTPROVIDER, :string)

      add(:PAYMENTMETHOD, :string)

      add(:PAYMENTMETHODKEY, :integer)

      add(:ENTITY, :string)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:DESCRIPTION2, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENDUE, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:TOTALENTERED, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:BILLTOPAYTOCONTACTNAME, :string)

      add(:PRBATCH, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:CLEARED, :string)

      add(:CLRDATE, :naive_datetime)

      add(:BILLTOPAYTOKEY, :integer)

      add(:WHENPOSTED, :naive_datetime)

      add(:INCLUSIVETAX, :boolean)

      add(:TAXSOLUTIONID, :string)

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
    drop(table("APPYMT"))
  end
end
