defmodule Conduit.Quickbooks.Object.PatrickSandbox.Vendorcredit do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :id,
    :vendor_name,
    :vendor_value,
    :line,
    :sync_token,
    :global_tax_calculation,
    :currency_name,
    :currency_value,
    :doc_number,
    :private_note,
    :linked_txn,
    :exchange_rate,
    :ap_account_name,
    :ap_account_value,
    :department_name,
    :department_value,
    :txn_date,
    :include_in_annual_tpar,
    :transaction_location_type,
    :balance,
    :qb_updated_at,
    :qb_inserted_at,
    :recur_data_name,
    :recur_data_value,
    :total_amt
  ]

  @primary_key false
  schema "vendorcredit" do
    field :id, :string, primary_key: true
    field :vendor_name, :string
    field :vendor_value, :string
    field :line, {:array, :map}
    field :sync_token, :string
    field :global_tax_calculation, :string
    field :currency_name, :string
    field :currency_value, :string
    field :doc_number, :string
    field :private_note, :string
    field :linked_txn, {:array, :map}
    field :exchange_rate, :decimal
    field :ap_account_name, :string
    field :ap_account_value, :string
    field :department_name, :string
    field :department_value, :string
    field :txn_date, :date
    field :include_in_annual_tpar, :boolean
    field :transaction_location_type, :string
    field :balance, :decimal
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    field :recur_data_name, :string
    field :recur_data_value, :string
    field :total_amt, :decimal
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([:id])
  end
end
