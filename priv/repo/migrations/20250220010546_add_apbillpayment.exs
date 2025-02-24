defmodule Sage.Repo.Migrations.AddApbillpayment do
  use Ecto.Migration

  def up do
    create table("APBILLPAYMENT", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:PAYMENTKEY, :integer)

      add(:PAYITEMKEY, :integer)

      add(:RECORDKEY, :integer)

      add(:PAIDITEMKEY, :integer)

      add(:AMOUNT, :float)

      add(:STATE, :string)

      add(:PARENTPYMT, :integer)

      add(:PAYMENTDATE, :naive_datetime)

      add(:CURRENCY, :string)

      add(:TRX_AMOUNT, :float)

      add(:INVBASEAMT, :float)

      add(:INVTRXAMT, :float)

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
    drop(table("APBILLPAYMENT"))
  end
end
