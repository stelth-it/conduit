defmodule Sage.Repo.Migrations.AddAradjustmentitem do
  use Ecto.Migration

  def up do
    create table("ARADJUSTMENTITEM", primary_key: false) do
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

      add(:EXCH_RATE_TYPE_ID, :integer)

      add(:EXCHANGE_RATE, :float)

      add(:LINEITEM, :string)

      add(:LINE_NO, :string)

      add(:CURRENCY, :string)

      add(:BASECURR, :string)

      add(:TOTALPAID, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TOTALSELECTED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:PARENTENTRY, :integer)

      add(:PAYMENTTAXCAPTURE, :boolean)

      add(:BASELOCATION, :integer)

      add(:STATE, :string)

      add(:RECORDTYPE, :string)

      add(:DETAILID, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

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
    drop(table("ARADJUSTMENTITEM"))
  end
end
