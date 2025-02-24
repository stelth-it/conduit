defmodule Sage.Repo.Migrations.AddArpymtdetail do
  use Ecto.Migration

  def up do
    create table("ARPYMTDETAIL", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :string)

      add(:RECORDKEY, :integer)

      add(:ENTRYKEY, :integer)

      add(:POSADJKEY, :integer)

      add(:POSADJENTRYKEY, :integer)

      add(:INLINEKEY, :integer)

      add(:INLINEENTRYKEY, :integer)

      add(:INLINEAMOUNT, :float)

      add(:TRX_INLINEAMOUNT, :float)

      add(:DISCOUNTKEY, :integer)

      add(:DISCOUNTENTRYKEY, :integer)

      add(:DISCOUNTDATE, :naive_datetime)

      add(:DISCOUNTAMOUNT, :float)

      add(:TRX_DISCOUNTAMOUNT, :float)

      add(:ADVANCEKEY, :integer)

      add(:ADVANCEENTRYKEY, :integer)

      add(:POSTEDADVANCEKEY, :integer)

      add(:POSTEDADVANCEENTRYKEY, :integer)

      add(:POSTEDADVANCEAMOUNT, :float)

      add(:TRX_POSTEDADVANCEAMOUNT, :float)

      add(:OVERPAYMENTKEY, :integer)

      add(:OVERPAYMENTENTRYKEY, :integer)

      add(:POSTEDOVERPAYMENTKEY, :integer)

      add(:POSTEDOVERPAYMENTENTRYKEY, :integer)

      add(:POSTEDOVERPAYMENTAMOUNT, :float)

      add(:TRX_POSTEDOVERPAYMENTAMOUNT, :float)

      add(:NEGATIVEINVOICEKEY, :integer)

      add(:NEGATIVEINVOICEENTRYKEY, :integer)

      add(:NEGATIVEINVOICEAMOUNT, :float)

      add(:TRX_NEGATIVEINVOICEAMOUNT, :float)

      add(:ADJUSTMENTKEY, :integer)

      add(:ADJUSTMENTENTRYKEY, :integer)

      add(:ADJUSTMENTAMOUNT, :float)

      add(:TRX_ADJUSTMENTAMOUNT, :float)

      add(:PAYMENTKEY, :integer)

      add(:PAYMENTENTRYKEY, :integer)

      add(:PAYMENTDATE, :naive_datetime)

      add(:PAYMENTAMOUNT, :float)

      add(:TRX_PAYMENTAMOUNT, :float)

      add(:CURRENCY, :string)

      add(:STATE, :string)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:PARENTPAYMENTKEY, :integer)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("ARPYMTDETAIL"))
  end
end
