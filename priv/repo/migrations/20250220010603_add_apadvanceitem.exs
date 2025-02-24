defmodule Sage.Repo.Migrations.AddApadvanceitem do
  use Ecto.Migration

  def up do
    create table("APADVANCEITEM", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDKEY, :integer)

      add(:ACCOUNTKEY, :integer)

      add(:ACCOUNTNO, :string)

      add(:ACCOUNTTITLE, :string)

      add(:ACCOUNTLABEL, :string)

      add(:AMOUNT, :float)

      add(:TRX_AMOUNT, :float)

      add(:DEPARTMENTID, :string)

      add(:DEPARTMENTNAME, :string)

      add(:LOCATIONID, :string)

      add(:LOCATIONNAME, :string)

      add(:ENTRY_DATE, :naive_datetime)

      add(:ENTRYDESCRIPTION, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :string)

      add(:EXCHANGE_RATE, :float)

      add(:LINEITEM, :string)

      add(:LINE_NO, :string)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:TOTALPAID, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TOTALSELECTED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:RECORDTYPE, :string)

      add(:BASELOCATION, :integer)

      add(:PARENTENTRY, :integer)

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

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APADVANCEITEM"))
  end
end
