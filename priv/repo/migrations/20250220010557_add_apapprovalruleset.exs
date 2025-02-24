defmodule Sage.Repo.Migrations.AddApapprovalruleset do
  use Ecto.Migration

  def up do
    create table("APAPPROVALRULESET", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RULESETNAME, :string)

      add(:RECORDNO, :integer)

      add(:RULETYPE, :string)

      add(:MODULE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RECORD_URL, :string)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("APAPPROVALRULESET"))
  end
end
