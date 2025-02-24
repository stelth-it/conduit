defmodule Sage.Repo.Migrations.AddGlbudgetitem do
  use Ecto.Migration

  def up do
    create table("GLBUDGETITEM", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:BUDGETKEY, :integer)

      add(:BUDGETID, :text)

      add(:CURRENCY, :text)

      add(:SYSTEMGENERATED, :text)

      add(:PERIODKEY, :integer)

      add(:ACCOUNTKEY, :integer)

      add(:DEPTKEY, :integer)

      add(:LOCATIONKEY, :integer)

      add(:AMOUNT, :float)

      add(:BASEDON, :text)

      add(:GROWBY, :float)

      add(:PERPERIOD, :text)

      add(:NOTE, :text)

      add(:ACCT_NO, :text)

      add(:ACCOUNT_TYPE, :text)

      add(:ACCTTITLE, :text)

      add(:NORMALBALANCE, :integer)

      add(:STATISTICAL, :text)

      add(:DEPT_NO, :text)

      add(:DEPTITLE, :text)

      add(:LOCATION_NO, :text)

      add(:LOCATIONTITLE, :text)

      add(:PERIODNAME, :text)

      add(:REPORTINGPERIODNAME, :text)

      add(:PSTARTDATE, :naive_datetime)

      add(:PENDDATE, :naive_datetime)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :text)

      add(:MEGAENTITYNAME, :text)

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
    drop(table("GLBUDGETITEM"))
  end
end
