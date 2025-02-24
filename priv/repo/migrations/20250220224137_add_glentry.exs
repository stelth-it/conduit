defmodule Sage.Repo.Migrations.AddGlentry do
  use Ecto.Migration

  def up do
    create table("GLENTRY", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:BATCHNO, :integer)

      add(:USERNO, :integer)

      add(:LINE_NO, :integer)

      add(:TR_TYPE, :integer)

      add(:ENTRY_DATE, :naive_datetime)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:ACCOUNTKEY, :integer)

      add(:ACCOUNTNO, :text)

      add(:DEPARTMENTKEY, :integer)

      add(:DEPARTMENT, :text)

      add(:DEPARTMENTTITLE, :text)

      add(:LOCATIONKEY, :integer)

      add(:LOCATION, :text)

      add(:LOCATIONNAME, :text)

      add(:DOCUMENT, :text)

      add(:DESCRIPTION, :text)

      add(:UNITS, :integer)

      add(:BASECURR, :text)

      add(:CURRENCY, :text)

      add(:CLEARED, :text)

      add(:CLRDATE, :naive_datetime)

      add(:TIMEPERIOD, :integer)

      add(:ADJ, :text)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :text)

      add(:EXCHANGE_RATE, :float)

      add(:RECON_DATE, :naive_datetime)

      add(:ALLOCATION, :text)

      add(:ALLOCATIONKEY, :integer)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:STATE, :text)

      add(:BILLABLE, :boolean)

      add(:BILLED, :boolean)

      add(:ADDITIONAL_INFO, :text)

      add(:SALESFORCE_RECORD_ID, :text)

      add(:PART_NUMBER, :text)

      add(:CUSTOMERDIMKEY, :integer)

      add(:CUSTOMERID, :text)

      add(:CUSTOMERNAME, :text)

      add(:VENDORDIMKEY, :integer)

      add(:VENDORID, :text)

      add(:VENDORNAME, :text)

      add(:EMPLOYEEDIMKEY, :integer)

      add(:EMPLOYEEID, :text)

      add(:EMPLOYEENAME, :text)

      add(:ITEMDIMKEY, :integer)

      add(:ITEMID, :text)

      add(:ITEMNAME, :text)

      add(:CLASSDIMKEY, :integer)

      add(:CLASSID, :text)

      add(:CLASSNAME, :text)

      add(:WAREHOUSEDIMKEY, :integer)

      add(:WAREHOUSEID, :text)

      add(:WAREHOUSENAME, :text)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLENTRY"))
  end
end
