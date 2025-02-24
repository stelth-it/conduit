defmodule Sage.Repo.Migrations.AddAprecurbill do
  use Ecto.Migration

  def up do
    create table("APRECURBILL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:CONTACTTAXGROUP, :string)

      add(:DESCRIPTION, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:TERMNAME, :string)

      add(:RECORDID, :string)

      add(:TOTALENTERED, :float)

      add(:DOCNUMBER, :string)

      add(:MODULEKEY, :string)

      add(:STATUS, :string)

      add(:SCHOPKEY, :integer)

      add(:ENTITY, :string)

      add(:CONTRACTID, :string)

      add(:CONTRACTDESC, :string)

      add(:VENDORID, :string)

      add(:VENDORNAME, :string)

      add(:USERNAME, :string)

      add(:PAYTOCONTACTNAME, :string)

      add(:RETURNTOCONTACTNAME, :string)

      add(:CURRENCY, :string)

      add(:TRX_TOTALENTERED, :float)

      add(:AUWHENCREATED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:STARTDATE, :naive_datetime)

      add(:ENDDATE, :naive_datetime)

      add(:NEXTEXECDATE, :naive_datetime)

      add(:LASTEXECDATE, :naive_datetime)

      add(:RECURDUEDATE, :naive_datetime)

      add(:FREQUENCY, :string)

      add(:EXECCOUNT, :integer)

      add(:REPEATCOUNT, :integer)

      add(:REPEATBY, :string)

      add(:REPEATINTERVAL, :integer)

      add(:"PAYTO.TAXGROUP.RECORDNO", :integer)

      add(:INCLUSIVETAX, :boolean)

      add(:TAXSOLUTIONID, :string)

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
    drop(table("APRECURBILL"))
  end
end
