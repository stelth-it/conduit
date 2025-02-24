defmodule Sage.Repo.Migrations.AddApiusagedetail do
  use Ecto.Migration

  def up do
    create table("APIUSAGEDETAIL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:CLIENT_TYPE, :string)

      add(:PARTNERID, :string)

      add(:FUNCTION, :string)

      add(:CONTROLID, :string)

      add(:POLICYID, :string)

      add(:DTDVERSION, :string)

      add(:DOCCONTROLID, :string)

      add(:LOGINID, :string)

      add(:N_TRANS, :integer)

      add(:CREATED_DATE, :naive_datetime)

      add(:CREATED_TIME, :naive_datetime)

      add(:STATUS, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APIUSAGEDETAIL"))
  end
end
