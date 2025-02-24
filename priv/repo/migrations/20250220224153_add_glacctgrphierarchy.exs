defmodule Sage.Repo.Migrations.AddGlacctgrphierarchy do
  use Ecto.Migration

  def up do
    create table("GLACCTGRPHIERARCHY", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:GLACCTGRPKEY, :integer)

      add(:GLACCTGRPNAME, :text)

      add(:GLACCTGRPTITLE, :text)

      add(:GLACCTGRPNORMALBALANCE, :text)

      add(:GLACCTGRPMEMBERTYPE, :text)

      add(:GLACCTGRPHOWCREATED, :text)

      add(:GLACCTGRPLOCATIONKEY, :integer)

      add(:ACCOUNTKEY, :integer)

      add(:ACCOUNTNO, :text)

      add(:ACCOUNTTITLE, :text)

      add(:ACCOUNTNORMALBALANCE, :text)

      add(:ACCOUNTTYPE, :text)

      add(:ACCOUNTLOCATIONKEY, :integer)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLACCTGRPHIERARCHY"))
  end
end
