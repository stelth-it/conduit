defmodule Sage.Repo.Migrations.AddApbill do
  use Ecto.Migration

  def up do
    create table("APBILL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDTYPE, :string)

      add(:RECORDID, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:FINANCIALENTITY, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:ENTITY, :string)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:FORM1099TYPE, :string)

      add(:FORM1099BOX, :string)

      add(:VENDTYPE1099TYPE, :string)

      add(:TRX_ENTITYDUE, :float)

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

      add(:RECPAYMENTDATE, :naive_datetime)

      add(:PAYMENTPRIORITY, :string)

      add(:ONHOLD, :boolean)

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

      add(:BILLTOPAYTOCONTACTNAME, :string)

      add(:SHIPTORETURNTOCONTACTNAME, :string)

      add(:BILLTOPAYTOKEY, :integer)

      add(:SHIPTORETURNTOKEY, :integer)

      add(:PRBATCH, :string)

      add(:PRBATCHKEY, :integer)

      add(:MODULEKEY, :string)

      add(:SCHOPKEY, :integer)

      add(:SYSTEMGENERATED, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:DUE_IN_DAYS, :string)

      add(:"PAYTO.TAXGROUP.RECORDNO", :integer)

      add(:INCLUSIVETAX, :boolean)

      add(:TAXSOLUTIONID, :string)

      add(:RETAINAGEPERCENTAGE, :float)

      add(:TRX_TOTALRETAINED, :float)

      add(:TRX_TOTALRELEASED, :float)

      add(:TOTALRETAINED, :float)

      add(:SUPDOCID, :string)

      add(:BILLBACKTEMPLATE, :string)

      add(:BBTEMPLATE_USEIET, :boolean)

      add(:USERID, :string)

      add(:CREATEDUSERID, :string)

      add(:DOCSOURCE, :string)

      add(:UPLOADSTATUS, :string)

      add(:RECIPIENTEMAIL, :string)

      add(:SENDEREMAIL, :string)

      add(:SOURCEMODULE, :string)

      add(:RETAINAGERELEASED, :boolean)

      add(:BBRECORDKEY, :integer)

      add(:RETAINAGEINVTYPE, :string)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :string)

      add(:MEGAENTITYNAME, :string)

      add(:RECORD_URL, :string)

      add(:Rasset, :string)

      add(:Rasset_class, :string)

      add(:Rfixed_assets_log, :string)

      add(:Rinsurance_detail, :string)

      add(:Rcip, :string)

      add(:Rcip_item, :string)

      add(:Rcip_asset, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APBILL"))
  end
end
