defmodule Sage.Repo.Migrations.AddApadjustment do
  use Ecto.Migration

  def up do
    create table("APADJUSTMENT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDTYPE, :string)

      add(:RECORDID, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:STATE, :string)

      add(:RAWSTATE, :string)

      add(:ENTITY, :string)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:FORM1099TYPE, :string)

      add(:FORM1099BOX, :string)

      add(:VENDTYPE1099TYPE, :string)

      add(:TRX_ENTITYDUE, :float)

      add(:DOCNUMBER, :string)

      add(:DESCRIPTION, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENPOSTED, :naive_datetime)

      add(:WHENPAID, :naive_datetime)

      add(:BASECURR, :string)

      add(:CURRENCY, :string)

      add(:EXCH_RATE_DATE, :naive_datetime)

      add(:EXCH_RATE_TYPE_ID, :integer)

      add(:EXCHANGE_RATE, :float)

      add(:TOTALENTERED, :float)

      add(:TOTALSELECTED, :float)

      add(:TOTALPAID, :float)

      add(:TOTALDUE, :float)

      add(:TRX_TOTALENTERED, :float)

      add(:TRX_TOTALSELECTED, :float)

      add(:TRX_TOTALPAID, :float)

      add(:TRX_TOTALDUE, :float)

      add(:BILLTOPAYTOCONTACTNAME, :string)

      add(:SHIPTORETURNTOCONTACTNAME, :string)

      add(:BILLTOPAYTOKEY, :integer)

      add(:SHIPTORETURNTOKEY, :integer)

      add(:PRBATCH, :string)

      add(:PRBATCHKEY, :integer)

      add(:PRBATCH_OPEN, :string)

      add(:PRBATCH_NOGL, :boolean)

      add(:MODULEKEY, :string)

      add(:AUWHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:INCLUSIVETAX, :boolean)

      add(:SUPDOCID, :string)

      add(:"PAYTO.TAXGROUP.RECORDNO", :integer)

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
    drop(table("APADJUSTMENT"))
  end
end
