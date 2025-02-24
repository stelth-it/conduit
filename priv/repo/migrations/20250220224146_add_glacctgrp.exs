defmodule Sage.Repo.Migrations.AddGlacctgrp do
  use Ecto.Migration

  def up do
    create table("GLACCTGRP", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:NAME, :text)

      add(:NORMAL_BALANCE, :text)

      add(:ASOF, :text)

      add(:INCLUDECHILDAMT, :boolean)

      add(:TITLE, :text)

      add(:TOTALTITLE, :text)

      add(:DBCR, :text)

      add(:FILTERDEPT, :text)

      add(:FILTERLOC, :text)

      add(:MEMBERTYPE, :text)

      add(:DEPTNO, :text)

      add(:LOCNO, :text)

      add(:ISKPI, :boolean)

      add(:FILTERVENDOR, :text)

      add(:FILTERCUSTOMER, :text)

      add(:FILTERPROJECT, :text)

      add(:FILTEREMPLOYEE, :text)

      add(:FILTERITEM, :text)

      add(:FILTERCLASS, :text)

      add(:FILTERCONTRACT, :text)

      add(:FILTERTASK, :text)

      add(:FILTERWAREHOUSE, :text)

      add(:FILTERCOSTTYPE, :text)

      add(:FILTERASSET, :text)

      add(:FILTERAFFILIATEENTITY, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:ACCTGROUPMANAGER, :text)

      add(:GLACCTGRPPURPOSEID, :text)

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
    drop(table("GLACCTGRP"))
  end
end
