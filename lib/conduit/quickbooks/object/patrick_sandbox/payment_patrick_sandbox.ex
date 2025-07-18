defmodule Conduit.Quickbooks.Object.PatrickSandbox.Payment do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :id,
    :total_amt,
    :customer_name,
    :customer_value,
    :sync_token,
    :currency_name,
    :currency_value,
    :project_name,
    :project_value,
    :private_note,
    :payment_method_name,
    :payment_method_value,
    :unapplied_amt,
    :deposit_to_account_name,
    :deposit_to_account_value,
    :exchange_rate,
    :line,
    :txn_source,
    :txn_date,
    :credit_card_payment,
    :transaction_location_type,
    :qb_updated_at,
    :qb_inserted_at,
    :payment_ref_num,
    :tax_exemption_name,
    :tax_exemption_value,
    :sparse
  ]

  @primary_key false
  schema "payment" do
    field :id, :string, primary_key: true
    field :total_amt, :decimal
    field :customer_name, :string
    field :customer_value, :string
    field :sync_token, :string
    field :currency_name, :string
    field :currency_value, :string
    field :project_name, :string
    field :project_value, :string
    field :private_note, :string
    field :payment_method_name, :string
    field :payment_method_value, :string
    field :unapplied_amt, :decimal
    field :deposit_to_account_name, :string
    field :deposit_to_account_value, :string
    field :exchange_rate, :decimal
    field :line, {:array, :map}
    field :txn_source, :string
    field :txn_date, :date
    field :credit_card_payment, :map
    field :transaction_location_type, :string
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    field :payment_ref_num, :string
    field :tax_exemption_name, :string
    field :tax_exemption_value, :string
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([:id])
  end
end
