defmodule Sage.Repo.Migrations.AddArinvoice do
  use Ecto.Migration

  def up do
    create table("ARINVOICE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDTYPE, :string)

      add(:RECORDID, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:ENTITY, :string)

      add(:CUSTENTITY, :string)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:CUSTEMAILOPTIN, :boolean)

      add(:TRX_ENTITYDUE, :float)

      add(:CUSTMESSAGEKEY, :integer)

      add(:CUSTMESSAGEID, :string)

      add(:DELIVERY_OPTIONS, :string)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:DESCRIPTION2, :string)

      add(:TERMNAME, :string)

      add(:TERMKEY, :integer)

      add(:TERMVALUE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENPOSTED, :naive_datetime)

      add(:WHENDISCOUNT, :naive_datetime)

      add(:WHENDUE, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :integer)

      add(:EXCHANGE_RATE, :float)

      add(:TOTALENTERED, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:TRX_TOTALDISCOUNTAPPLIED, :float)

      add(:BILLTOPAYTOCONTACTNAME, :string)

      add(:SHIPTORETURNTOCONTACTNAME, :string)

      add(:BILLTOPAYTOKEY, :integer)

      add(:SHIPTORETURNTOKEY, :integer)

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

      add(:"CONTACT.MAILADDRESS.ADDRESS3", :string)

      add(:"CONTACT.MAILADDRESS.CITY", :string)

      add(:"CONTACT.MAILADDRESS.STATE", :string)

      add(:"CONTACT.MAILADDRESS.ZIP", :string)

      add(:"CONTACT.MAILADDRESS.COUNTRY", :string)

      add(:"CONTACT.MAILADDRESS.COUNTRYCODE", :string)

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

      add(:"SHIPTO.MAILADDRESS.ADDRESS1", :string)

      add(:"SHIPTO.MAILADDRESS.ADDRESS2", :string)

      add(:"SHIPTO.MAILADDRESS.ADDRESS3", :string)

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

      add(:"BILLTO.MAILADDRESS.ADDRESS1", :string)

      add(:"BILLTO.MAILADDRESS.ADDRESS2", :string)

      add(:"BILLTO.MAILADDRESS.ADDRESS3", :string)

      add(:"BILLTO.MAILADDRESS.CITY", :string)

      add(:"BILLTO.MAILADDRESS.STATE", :string)

      add(:"BILLTO.MAILADDRESS.ZIP", :string)

      add(:"BILLTO.MAILADDRESS.COUNTRY", :string)

      add(:"BILLTO.MAILADDRESS.COUNTRYCODE", :string)

      add(:PRBATCH, :string)

      add(:PRBATCHKEY, :integer)

      add(:MODULEKEY, :string)

      add(:SCHOPKEY, :integer)

      add(:SYSTEMGENERATED, :string)

      add(:HASPOSTEDREVREC, :string)

      add(:BILLBACKTEMPLATEKEY, :integer)

      add(:BBRECORDKEY, :integer)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:DUE_IN_DAYS, :string)

      add(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

      add(:"CONTACT.TAXID", :string)

      add(:TAXSOLUTIONID, :string)

      add(:RETAINAGEPERCENTAGE, :float)

      add(:TRX_TOTALRETAINED, :float)

      add(:TRX_TOTALRELEASED, :float)

      add(:TOTALRETAINED, :float)

      add(:SUPDOCID, :string)

      add(:PROJECTCONTRACTKEY, :integer)

      add(:PROJECTCONTRACTID, :string)

      add(:DUNNINGCOUNT, :integer)

      add(:RETAINAGEINVTYPE, :string)

      add(:RETAINAGERELEASED, :boolean)

      add(:EXTERNALREFNO, :string)

      add(:PC_DESCRIPTION, :string)

      add(:CONTRACTDATE, :naive_datetime)

      add(:ARCHITECTKEY, :integer)

      add(:ARCHITECT, :string)

      add(:BILLTHROUGHDATE, :naive_datetime)

      add(:BILLAPPLICATIONNO, :string)

      add(:"PCBINVSUMMARY.ORGCONTRACTAMT", :float)

      add(:"PCBINVSUMMARY.TOTAL_CHARGE", :float)

      add(:"PCBINVSUMMARY.TOTAL_DISCOUNT", :float)

      add(:"PCBINVSUMMARY.CHGAPPRPMONTADD", :float)

      add(:"PCBINVSUMMARY.CHGAPPRPMONTDED", :float)

      add(:"PCBINVSUMMARY.CHGAPPRCMONTADD", :float)

      add(:"PCBINVSUMMARY.CHGAPPRCMONTDED", :float)

      add(:"PCBINVSUMMARY.TOTNETAPPRCHNGS", :float)

      add(:"PCBINVSUMMARY.TOTREVSDCONAMT", :float)

      add(:"PCBINVSUMMARY.COMPPRIORAPPLNS", :float)

      add(:"PCBINVSUMMARY.TOTCOMPTODATE", :float)

      add(:"PCBINVSUMMARY.INVAMTRETAINED", :float)

      add(:"PCBINVSUMMARY.INVRETAINGEBILLD", :float)

      add(:"PCBINVSUMMARY.NETCHNGERETHELD", :float)

      add(:"PCBINVSUMMARY.RETHELDTODATE", :float)

      add(:"PCBINVSUMMARY.RETBILLEDTODATE", :float)

      add(:"PCBINVSUMMARY.RETBALANCETODATE", :float)

      add(:"PCBINVSUMMARY.PREVRETBALANCE", :float)

      add(:"PCBINVSUMMARY.TOTEARNEDLESSRETGE", :float)

      add(:"PCBINVSUMMARY.LESSPREVBILLINGS", :float)

      add(:"PCBINVSUMMARY.CURRENTAMOUNTDUE", :float)

      add(:"PCBINVSUMMARY.BALANCETOFINISH", :float)

      add(:"PCBINVSUMMARY.TOTAL_TAX", :float)

      add(:"PCBINVSUMMARY.ARINVOICENUMBER", :string)

      add(:"PCBINVSUMMARY.DOCID", :string)

      add(:"PCBINVSUMMARY.PROJECTID", :string)

      add(:"PCBINVSUMMARY.PROJECTNAME", :string)

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
    drop(table("ARINVOICE"))
  end
end
