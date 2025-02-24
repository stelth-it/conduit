defmodule Sage.Repo.Migrations.AddGlaccount do
  use Ecto.Migration

  def up do
    create table("GLACCOUNT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:ACCOUNTNO, :text)

      add(:TITLE, :text)

      add(:ACCOUNTTYPE, :text)

      add(:NORMALBALANCE, :text)

      add(:CLOSINGTYPE, :text)

      add(:CLOSINGACCOUNTNO, :text)

      add(:CLOSINGACCOUNTTITLE, :text)

      add(:STATUS, :text)

      add(:REQUIREDEPT, :boolean)

      add(:REQUIRELOC, :boolean)

      add(:TAXABLE, :boolean)

      add(:CATEGORYKEY, :text)

      add(:CATEGORY, :text)

      add(:TAXCODE, :text)

      add(:MRCCODE, :text)

      add(:CLOSETOACCTKEY, :integer)

      add(:ALTERNATIVEACCOUNT, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:SUBLEDGERCONTROLON, :boolean)

      add(:WIPSETUPACCTTYPE, :text)

      add(:ENABLE_GLMATCHING, :boolean)

      add(:RECLASSIFICATIONACCOUNTNO, :text)

      add(:LETTRAGESEQUENCEID, :text)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :text)

      add(:MEGAENTITYNAME, :text)

      add(:REQUIRECUSTOMER, :boolean)

      add(:REQUIREVENDOR, :boolean)

      add(:REQUIREEMPLOYEE, :boolean)

      add(:REQUIREITEM, :boolean)

      add(:REQUIRECLASS, :boolean)

      add(:REQUIREWAREHOUSE, :boolean)

      add(:RECORD_URL, :text)

      add(:Rasset, :text)

      add(:Rasset1, :text)

      add(:Rasset_class, :text)

      add(:Rasset_class1, :text)

      add(:Rasset_class2, :text)

      add(:Rasset_class3, :text)

      add(:Rcip, :text)

      add(:Rcip1, :text)

      add(:RCIPAssetGLAccount, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLACCOUNT"))
  end
end
