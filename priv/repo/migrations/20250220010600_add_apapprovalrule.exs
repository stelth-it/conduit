defmodule Sage.Repo.Migrations.AddApapprovalrule do
  use Ecto.Migration

  def up do
    create table("APAPPROVALRULE", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:DESCRIPTION, :string)

      add(:RULETYPE, :string)

      add(:MODULE, :string)

      add(:DIMTYPE, :string)

      add(:DEPTKEY, :integer)

      add(:DEPTID, :string)

      add(:DEPTNAME, :string)

      add(:RULESETKEY, :integer)

      add(:RULESETNAME, :string)

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
    drop(table("APAPPROVALRULE"))
  end
end
