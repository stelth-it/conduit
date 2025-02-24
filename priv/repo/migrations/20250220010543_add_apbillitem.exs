defmodule Sage.Repo.Migrations.AddApbillitem do
  use Ecto.Migration

  def up do
    create table("APBILLITEM", primary_key: false) do
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

      add(:PRENTRYOFFSETACCOUNTNO, :string)

      add(:ENTRY_DATE, :naive_datetime)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:DEPARTMENTID, :string)

      add(:DEPARTMENTNAME, :string)

      add(:LOCATIONID, :string)

      add(:LOCATIONNAME, :string)

      add(:ENTRYDESCRIPTION, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:ALLOCATION, :string)

      add(:ALLOCATIONKEY, :integer)

      add(:FORM1099, :string)

      add(:LINEITEM, :string)

      add(:LINE_NO, :string)

      add(:CURRENCY, :string)

      add(:BASECURR, :string)

      add(:TOTALPAID, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TOTALSELECTED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:BILLABLE, :boolean)

      add(:BILLED, :boolean)

      add(:RELEASETOPAY, :boolean)

      add(:PARENTENTRY, :integer)

      add(:BASELOCATION, :integer)

      add(:STATE, :string)

      add(:RECORDTYPE, :string)

      add(:FORM1099TYPE, :string)

      add(:FORM1099BOX, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RETAINAGEPERCENTAGE, :float)

      add(:TRX_AMOUNTRETAINED, :float)

      add(:AMOUNTRETAINED, :float)

      add(:TRX_AMOUNTRELEASED, :float)

      add(:SUBTOTAL, :string)

      add(:PARTIALEXEMPT, :boolean)

      add(:PAYMENTTAXCAPTURE, :boolean)

      add(:PRIMARYDOCKEY, :integer)

      add(:PRIMARYDOCLINEKEY, :integer)

      add(:ORIGDOCKEY, :integer)

      add(:ORIGDOCLINEKEY, :integer)

      add(:ORIGDOCID, :string)

      add(:ORIGDOCLINEID, :string)

      add(:NAMEOFACQUIREDASSET, :string)

      add(:INCLUDETAXINASSETCOST, :boolean)

      add(:AMORTIZATIONTEMPLATEID, :string)

      add(:AMORTIZATIONSTARTDATE, :naive_datetime)

      add(:AMORTIZATIONENDDATE, :naive_datetime)

      add(:"AMORTIZATIONTEMPLATEINFO.TERM", :string)

      add(:ASSET_CLASS, :string)

      add(:ASSET_GL_POSTING_DATE, :naive_datetime)

      add(:ASSET_NAME, :string)

      add(:DATE_PLACED_IN_SERVICE, :naive_datetime)

      add(:IS_ASSET, :boolean)

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
    drop(table("APBILLITEM"))
  end
end
