defmodule Sage.Repo.Migrations.AddApdiscount do
  use Ecto.Migration

  def up do
    create table("APDISCOUNT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PRBATCHKEY, :integer)

      add(:RECORDTYPE, :string)

      add(:DESCRIPTION, :string)

      add(:TOTALENTERED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALDUE, :float)

      add(:STATE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:TERMKEY, :integer)

      add(:TERMNAME, :string)

      add(:WHENDISCOUNT, :naive_datetime)

      add(:RECORDID, :string)

      add(:USERKEY, :integer)

      add(:WHENDUE, :naive_datetime)

      add(:DOCNUMBER, :string)

      add(:CLEARED, :string)

      add(:CLRDATE, :naive_datetime)

      add(:MODULEKEY, :string)

      add(:STATUS, :string)

      add(:SYSTEMGENERATED, :string)

      add(:WHENPOSTED, :naive_datetime)

      add(:ONHOLD, :boolean)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALDUE, :float)

      add(:DELIVERYMETHOD, :string)

      add(:RECON_DATE, :naive_datetime)

      add(:BASECURR, :string)

      add(:LOCATIONKEY, :integer)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:NR_TOTALENTERED, :float)

      add(:NR_TRX_TOTALENTERED, :float)

      add(:VENDORNAME, :string)

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
    drop(table("APDISCOUNT"))
  end
end
