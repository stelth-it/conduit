defmodule Sage.Repo.Migrations.AddAprecurbillentry do
  use Ecto.Migration

  def up do
    create table("APRECURBILLENTRY", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDKEY, :integer)

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

      add(:CURRENCY, :string)

      add(:BASECURR, :string)

      add(:EXCHRATEDATE, :naive_datetime)

      add(:EXCHRATETYPE, :integer)

      add(:EXCHRATE, :float)

      add(:TRX_AMOUNT, :float)

      add(:ALLOCATIONKEY, :integer)

      add(:ALLOCATION, :string)

      add(:BILLABLE, :boolean)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:PARENTENTRY, :integer)

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
    drop(table("APRECURBILLENTRY"))
  end
end
