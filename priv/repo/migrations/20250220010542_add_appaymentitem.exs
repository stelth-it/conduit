defmodule Sage.Repo.Migrations.AddAppaymentitem do
  use Ecto.Migration

  def up do
    create table("APPAYMENTITEM", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDTYPE, :string)

      add(:ENTRY_DATE, :naive_datetime)

      add(:RECORDKEY, :integer)

      add(:VENDORACCTNOKEYVERSION, :integer)

      add(:ENTRYDESCRIPTION, :string)

      add(:ACCOUNTKEY, :integer)

      add(:GLACCOUNTNO, :string)

      add(:GLACCOUNTTITLE, :string)

      add(:AMOUNT, :float)

      add(:LOCATIONID, :string)

      add(:LOCATIONNAME, :string)

      add(:DEPARTMENTID, :string)

      add(:DEPARTMENTNAME, :string)

      add(:LINE_NO, :string)

      add(:FORM1099, :string)

      add(:ACCOUNTLABEL, :string)

      add(:TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:PARENTENTRY, :integer)

      add(:LINEITEM, :string)

      add(:GLOFFSET, :integer)

      add(:BASELOCATION, :integer)

      add(:ALLOCATIONKEY, :integer)

      add(:ALLOCATION, :string)

      add(:SUBTOTAL, :string)

      add(:DEFERREVENUE, :boolean)

      add(:REVRECTEMPLATEKEY, :integer)

      add(:REVRECTEMPLATE, :string)

      add(:DEFERREDREVACCTKEY, :integer)

      add(:DEFERREDREVACCTNO, :string)

      add(:DEFERREDREVACCTTITLE, :string)

      add(:REVRECSTARTDATE, :naive_datetime)

      add(:REVRECENDDATE, :naive_datetime)

      add(:ENTRYCURRENCY, :string)

      add(:ENTRYEXCHRATEDATE, :naive_datetime)

      add(:ENTRYEXCHRATETYPE, :integer)

      add(:ENTRYEXCHRATE, :float)

      add(:TRX_AMOUNT, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:BILLABLE, :boolean)

      add(:BILLED, :boolean)

      add(:STATE, :string)

      add(:RELEASETOPAY, :boolean)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:LOCATIONKEY, :integer)

      add(:DEPARTMENTKEY, :integer)

      add(:CURRENCY, :string)

      add(:ACCOUNTNO, :string)

      add(:ACCOUNTTITLE, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :integer)

      add(:EXCHANGE_RATE, :float)

      add(:PRIMARYDOCKEY, :integer)

      add(:PRIMARYDOCLINEKEY, :integer)

      add(:CUSTOMERDIMKEY, :integer)

      add(:CUSTOMERID, :string)

      add(:CUSTOMERNAME, :string)

      add(:VENDORDIMKEY, :integer)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:EMPLOYEEDIMKEY, :integer)

      add(:EMPLOYEEID, :string)

      add(:EMPLOYEENAME, :string)

      add(:ITEMDIMKEY, :integer)

      add(:ITEMID, :string)

      add(:ITEMNAME, :string)

      add(:CLASSDIMKEY, :integer)

      add(:CLASSID, :string)

      add(:CLASSNAME, :string)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APPAYMENTITEM"))
  end
end
