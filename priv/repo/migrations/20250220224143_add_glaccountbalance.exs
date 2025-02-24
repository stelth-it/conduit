defmodule Sage.Repo.Migrations.AddGlaccountbalance do
  use Ecto.Migration

  def up do
    create table("GLACCOUNTBALANCE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:BOOKID, :text)

      add(:CURRENCY, :text)

      add(:PERIOD, :text)

      add(:OPENBAL, :float)

      add(:TOTDEBIT, :float)

      add(:TOTCREDIT, :float)

      add(:TOTADJDEBIT, :float)

      add(:TOTADJCREDIT, :float)

      add(:FORBAL, :float)

      add(:ENDBAL, :float)

      add(:ACCOUNTREC, :integer)

      add(:ACCOUNTNO, :text)

      add(:ACCOUNTTITLE, :text)

      add(:DEPARTMENTID, :text)

      add(:LOCATIONID, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:LOCATIONNO, :integer)

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
    drop(table("GLACCOUNTBALANCE"))
  end
end
