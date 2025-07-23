
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Taxpayment do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:qb_updated_at,
:qb_inserted_at,
:refund,
:txn_date,
:payment_account_name,
:payment_account_value,
:description,
:payment_amount]

 @primary_key false
 schema "taxpayment" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :refund, :boolean
field :txn_date, :date
field :payment_account_name, :string
field :payment_account_value, :string
field :description, :string
field :payment_amount, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
