
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Reimbursecharge do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:line,
:amount,
:customer_name,
:customer_value,
:sync_token,
:currency_name,
:currency_value,
:private_note,
:linked_txn,
:exchange_rate,
:qb_updated_at,
:qb_inserted_at,
:has_been_invoiced,
:home_total_amt]

 @primary_key false
 schema "reimbursecharge" do
  field :id, :string, primary_key: true
field :line, {:array, :map}
field :amount, :decimal
field :customer_name, :string
field :customer_value, :string
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :private_note, :string
field :linked_txn, {:array, :map}
field :exchange_rate, :decimal
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :has_been_invoiced, :boolean
field :home_total_amt, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
