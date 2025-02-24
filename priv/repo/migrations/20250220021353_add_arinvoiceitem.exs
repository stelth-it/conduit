defmodule Sage.Repo.Migrations.AddArinvoiceitem do
  use Ecto.Migration

  def up do
    create table("ARINVOICEITEM", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDKEY, :integer)

      add(:ACCOUNTKEY, :integer)

      add(:ACCOUNTNO, :string)

      add(:OFFSETGLACCOUNTNO, :string)

      add(:OFFSETGLACCOUNTTITLE, :string)

      add(:ACCOUNTTITLE, :string)

      add(:ACCOUNTLABELKEY, :integer)

      add(:ACCOUNTLABEL, :string)

      add(:ENTRY_DATE, :naive_datetime)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:DEPARTMENTID, :string)

      add(:DEPARTMENTNAME, :string)

      add(:LOCATIONID, :string)

      add(:LOCATIONNAME, :string)

      add(:ENTRYDESCRIPTION, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :integer)

      add(:EXCHANGE_RATE, :float)

      add(:ALLOCATIONKEY, :integer)

      add(:ALLOCATION, :string)

      add(:LINEITEM, :string)

      add(:LINE_NO, :string)

      add(:CURRENCY, :string)

      add(:BASECURR, :string)

      add(:TOTALPAID, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_DISCOUNTAPPLIED, :float)

      add(:TOTALSELECTED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:SUBTOTAL, :string)

      add(:PARENTENTRY, :integer)

      add(:PAYMENTTAXCAPTURE, :boolean)

      add(:DEFERREVENUE, :boolean)

      add(:REVRECTEMPLATEKEY, :integer)

      add(:REVRECTEMPLATE, :string)

      add(:DEFERREDREVACCTKEY, :integer)

      add(:DEFERREDREVACCTNO, :string)

      add(:DEFERREDREVACCTTITLE, :string)

      add(:REVRECSTARTDATE, :naive_datetime)

      add(:REVRECENDDATE, :naive_datetime)

      add(:BASELOCATION, :integer)

      add(:STATE, :string)

      add(:RECORDTYPE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RETAINAGEPERCENTAGE, :float)

      add(:TRX_AMOUNTRETAINED, :float)

      add(:AMOUNTRETAINED, :float)

      add(:TRX_AMOUNTRELEASED, :float)

      add(:PROJECTCONTRACTID, :string)

      add(:PROJECTCONTRACTKEY, :integer)

      add(:PROJECTCONTRACTLINEID, :string)

      add(:PROJECTCONTRACTLINEKEY, :integer)

      add(:ISRETAINAGERELEASE, :boolean)

      add(:ISSUMMARIZED, :boolean)

      add(:AMORTIZATIONTEMPLATEID, :string)

      add(:AMORTIZATIONSTARTDATE, :naive_datetime)

      add(:AMORTIZATIONENDDATE, :naive_datetime)

      add(:ORIGDOCKEY, :integer)

      add(:ORIGDOCLINEKEY, :integer)

      add(:ORIGDOCID, :string)

      add(:ORIGDOCLINEID, :string)

      add(:"AMORTIZATIONTEMPLATEINFO.TERM", :string)

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

      add(:WAREHOUSEDIMKEY, :integer)

      add(:WAREHOUSEID, :string)

      add(:WAREHOUSENAME, :string)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARINVOICEITEM"))
  end
end
