defmodule Sage.Repo.Migrations.AddGlcompgrpmember do
  use Ecto.Migration

  def up do
    create table("GLCOMPGRPMEMBER", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:PARENTKEY, :integer)

      add(:LHSACCTNO, :text)

      add(:LHSACCTGRPNAME, :text)

      add(:LHSCONST, :text)

      add(:OPERATOR, :text)

      add(:RHSACCTNO, :text)

      add(:RHSACCTGRPNAME, :text)

      add(:RHSCONST, :text)

      add(:PRECISION, :text)

      add(:DISPLAYAS, :text)

      add(:UOM, :text)

      add(:LHSASOF, :text)

      add(:RHSASOF, :text)

      add(:UOMALIGNMENT, :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:RECORD_URL, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLCOMPGRPMEMBER"))
  end
end
