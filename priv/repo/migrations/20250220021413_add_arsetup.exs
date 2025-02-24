defmodule Sage.Repo.Migrations.AddArsetup do
  use Ecto.Migration

  def up do
    create table("ARSETUP", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARSETUP"))
  end
end
