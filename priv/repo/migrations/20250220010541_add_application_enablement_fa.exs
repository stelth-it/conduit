defmodule Sage.Repo.Migrations.AddApplicationEnablementFa do
  use Ecto.Migration

  def up do
    create table("APPLICATION_ENABLEMENT_FA", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:name, :string)

      add(:comment, :string)

      add(:createdBy, :string)

      add(:createdAt, :naive_datetime)

      add(:updatedBy, :string)

      add(:updatedAt, :naive_datetime)

      add(:id, :integer)

      add(:RECORD_URL, :string)

      add(:action_app, :string)

      add(:allow_edit, :boolean)

      add(:application_enablement, :string)

      add(:application_version, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APPLICATION_ENABLEMENT_FA"))
  end
end
