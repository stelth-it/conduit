defmodule Sage.Repo.Migrations.AddApiusagesummary do
  use Ecto.Migration

  def up do
    create table("APIUSAGESUMMARY", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:TOTAL_TRANS, :integer)

      add(:DAILY_SUM, :integer)

      add(:CLIENT_TYPE, :string)

      add(:TODAY, :naive_datetime)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APIUSAGESUMMARY"))
  end
end
