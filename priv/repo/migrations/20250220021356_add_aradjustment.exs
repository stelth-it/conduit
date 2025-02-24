defmodule Sage.Repo.Migrations.AddAradjustment do
  use Ecto.Migration

  def up do
    create table("ARADJUSTMENT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDTYPE, :string)

      add(:RECORDID, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:ENTITY, :string)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:CUSTEMAILOPTIN, :boolean)

      add(:TRX_ENTITYDUE, :float)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENPOSTED, :naive_datetime)

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

      add(:SHIPTORETURNTOCONTACTNAME, :string)

      add(:BILLTOPAYTOKEY, :integer)

      add(:SHIPTORETURNTOKEY, :integer)

      add(:"SHIPTO.CONTACTNAME", :string)

      add(:"SHIPTO.PREFIX", :string)

      add(:"SHIPTO.FIRSTNAME", :string)

      add(:"SHIPTO.INITIAL", :string)

      add(:"SHIPTO.LASTNAME", :string)

      add(:"SHIPTO.COMPANYNAME", :string)

      add(:"SHIPTO.PRINTAS", :string)

      add(:"SHIPTO.PHONE1", :string)

      add(:"SHIPTO.PHONE2", :string)

      add(:"SHIPTO.CELLPHONE", :string)

      add(:"SHIPTO.PAGER", :string)

      add(:"SHIPTO.FAX", :string)

      add(:"SHIPTO.EMAIL1", :string)

      add(:"SHIPTO.EMAIL2", :string)

      add(:"SHIPTO.URL1", :string)

      add(:"SHIPTO.URL2", :string)

      add(:"SHIPTO.VISIBLE", :boolean)

      add(:"SHIPTO.MAILADDRESS.RECORDKEY", :integer)

      add(:"SHIPTO.MAILADDRESS.ADDRESS1", :string)

      add(:"SHIPTO.MAILADDRESS.ADDRESS2", :string)

      add(:"SHIPTO.MAILADDRESS.CITY", :string)

      add(:"SHIPTO.MAILADDRESS.STATE", :string)

      add(:"SHIPTO.MAILADDRESS.ZIP", :string)

      add(:"SHIPTO.MAILADDRESS.COUNTRY", :string)

      add(:"SHIPTO.MAILADDRESS.COUNTRYCODE", :string)

      add(:"BILLTO.CONTACTNAME", :string)

      add(:"BILLTO.PREFIX", :string)

      add(:"BILLTO.FIRSTNAME", :string)

      add(:"BILLTO.INITIAL", :string)

      add(:"BILLTO.LASTNAME", :string)

      add(:"BILLTO.COMPANYNAME", :string)

      add(:"BILLTO.PRINTAS", :string)

      add(:"BILLTO.PHONE1", :string)

      add(:"BILLTO.PHONE2", :string)

      add(:"BILLTO.CELLPHONE", :string)

      add(:"BILLTO.PAGER", :string)

      add(:"BILLTO.FAX", :string)

      add(:"BILLTO.EMAIL1", :string)

      add(:"BILLTO.EMAIL2", :string)

      add(:"BILLTO.URL1", :string)

      add(:"BILLTO.URL2", :string)

      add(:"BILLTO.VISIBLE", :boolean)

      add(:"BILLTO.MAILADDRESS.RECORDKEY", :integer)

      add(:"BILLTO.MAILADDRESS.ADDRESS1", :string)

      add(:"BILLTO.MAILADDRESS.ADDRESS2", :string)

      add(:"BILLTO.MAILADDRESS.CITY", :string)

      add(:"BILLTO.MAILADDRESS.STATE", :string)

      add(:"BILLTO.MAILADDRESS.ZIP", :string)

      add(:"BILLTO.MAILADDRESS.COUNTRY", :string)

      add(:"BILLTO.MAILADDRESS.COUNTRYCODE", :string)

      add(:PRBATCH, :string)

      add(:PRBATCHKEY, :integer)

      add(:MODULEKEY, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:TAXSOLUTIONID, :string)

      add(:SUPDOCID, :string)

      add(:"CONTACT.CONTACTNAME", :string)

      add(:"CONTACT.PREFIX", :string)

      add(:"CONTACT.FIRSTNAME", :string)

      add(:"CONTACT.INITIAL", :string)

      add(:"CONTACT.LASTNAME", :string)

      add(:"CONTACT.COMPANYNAME", :string)

      add(:"CONTACT.PRINTAS", :string)

      add(:"CONTACT.PHONE1", :string)

      add(:"CONTACT.PHONE2", :string)

      add(:"CONTACT.CELLPHONE", :string)

      add(:"CONTACT.PAGER", :string)

      add(:"CONTACT.FAX", :string)

      add(:"CONTACT.EMAIL1", :string)

      add(:"CONTACT.EMAIL2", :string)

      add(:"CONTACT.URL1", :string)

      add(:"CONTACT.URL2", :string)

      add(:"CONTACT.VISIBLE", :boolean)

      add(:"CONTACT.MAILADDRESS.ADDRESS1", :string)

      add(:"CONTACT.MAILADDRESS.ADDRESS2", :string)

      add(:"CONTACT.MAILADDRESS.CITY", :string)

      add(:"CONTACT.MAILADDRESS.STATE", :string)

      add(:"CONTACT.MAILADDRESS.ZIP", :string)

      add(:"CONTACT.MAILADDRESS.COUNTRY", :string)

      add(:"CONTACT.MAILADDRESS.COUNTRYCODE", :string)

      add(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

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
    drop(table("ARADJUSTMENT"))
  end
end
