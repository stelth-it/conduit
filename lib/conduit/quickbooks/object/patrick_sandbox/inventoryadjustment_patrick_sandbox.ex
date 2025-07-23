defmodule Conduit.Quickbooks.Object.PatrickSandbox.Inventoryadjustment do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :line,
    :adjust_account_name,
    :adjust_account_value,
    :sync_token,
    :id,
    :doc_number,
    :private_note,
    :qb_updated_at,
    :qb_inserted_at
  ]

  @primary_key false
  schema "inventoryadjustment" do
    field :line, {:array, :map}
    field :adjust_account_name, :string
    field :adjust_account_value, :string
    field :sync_token, :string
    field :id, :string, primary_key: true
    field :doc_number, :string
    field :private_note, :string
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([])
  end
end
