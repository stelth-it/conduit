defmodule Sage.Repo.Migrations.AddAraccountlabel do
  use Ecto.Migration

  def up do
    create table("ARACCOUNTLABEL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :integer)

      add(:ACCOUNTLABEL, :string)

      add(:DESCRIPTION, :string)

      add(:GLACCOUNTNO, :string)

      add(:GLACCOUNTTITLE, :string)

      add(:STATUS, :string)

      add(:OFFSETGLACCOUNTNO, :string)

      add(:TAXABLE, :boolean)

      add(:ISTAX, :boolean)

      add(:SUBTOTAL, :boolean)

      add(:"TAXGROUP.NAME", :string)

      add(:TAXCODE, :string)

      add(:DEFERREDREVACCTKEY, :string)

      add(:REVRECTEMPLKEY, :string)

      add(:WHENMODIFIED, :naive_datetime)

      add(:WHENCREATED, :naive_datetime)

      add(:MODIFIEDBY, :integer)

      add(:CREATEDBY, :integer)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :string)

      add(:MEGAENTITYNAME, :string)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARACCOUNTLABEL"))
  end
end
