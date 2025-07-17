defmodule Conduit.Quickbooks.Object.PatrickSandbox.Journalentry do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :id,
    :line,
    :sync_token,
    :currency_name,
    :currency_value,
    :global_tax_calculation,
    :doc_number,
    :private_note,
    :exchange_rate,
    :tax_rate_name,
    :tax_rate_value,
    :transaction_location_type,
    :adjustment,
    :qb_updated_at,
    :qb_inserted_at,
    :recur_data_name,
    :recur_data_value,
    :total_amt,
    :home_total_amt,
    :journal_code_name,
    :journal_code_value
  ]

  @primary_key false
  schema "journalentry" do
    field :id, :string, primary_key: true
    field :line, {:array, :map}
    field :sync_token, :string
    field :currency_name, :string
    field :currency_value, :string
    field :global_tax_calculation, :string
    field :doc_number, :string
    field :private_note, :string
    field :exchange_rate, :decimal
    field :tax_rate_name, :string
    field :tax_rate_value, :string
    field :transaction_location_type, :string
    field :adjustment, :boolean
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    field :recur_data_name, :string
    field :recur_data_value, :string
    field :total_amt, :decimal
    field :home_total_amt, :decimal
    field :journal_code_name, :string
    field :journal_code_value, :string
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([:id])
  end
end
