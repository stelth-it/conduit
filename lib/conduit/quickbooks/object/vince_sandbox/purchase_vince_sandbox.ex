defmodule Conduit.Quickbooks.Object.VinceSandbox.Purchase do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :id,
    :line,
    :payment_type,
    :account_name,
    :account_value,
    :sync_token,
    :currency_name,
    :currency_value,
    :txn_date,
    :print_status,
    :remit_to_addr,
    :txn_source,
    :linked_txn,
    :global_tax_calculation,
    :transaction_location_type,
    :qb_updated_at,
    :qb_inserted_at,
    :doc_number,
    :private_note,
    :credit,
    :payment_method_name,
    :payment_method_value,
    :exchange_rate,
    :department_name,
    :department_value,
    :include_in_annual_tpar,
    :total_amt,
    :recur_data_name,
    :recur_data_value
  ]

  @primary_key false
  schema "purchase" do
    field :id, :string, primary_key: true
    field :line, {:array, :map}
    field :payment_type, :string
    field :account_name, :string
    field :account_value, :string
    field :sync_token, :string
    field :currency_name, :string
    field :currency_value, :string
    field :txn_date, :date
    field :print_status, :string
    field :remit_to_addr, :map
    field :txn_source, :string
    field :linked_txn, {:array, :map}
    field :global_tax_calculation, :string
    field :transaction_location_type, :string
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    field :doc_number, :string
    field :private_note, :string
    field :credit, :boolean
    field :payment_method_name, :string
    field :payment_method_value, :string
    field :exchange_rate, :decimal
    field :department_name, :string
    field :department_value, :string
    field :include_in_annual_tpar, :boolean
    field :total_amt, :decimal
    field :recur_data_name, :string
    field :recur_data_value, :string
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([:id])
  end
end
