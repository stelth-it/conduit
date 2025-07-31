
defmodule Conduit.Quickbooks.Object.VinceSandbox.Exchangerate do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:sync_token,
:as_of_date,
:source_currency_code,
:rate,
:target_currency_code,
:qb_updated_at,
:qb_inserted_at]

 @primary_key false
 schema "exchangerate" do
  field :sync_token, :string
field :as_of_date, :boolean
field :source_currency_code, :string
field :rate, :decimal
field :target_currency_code, :string
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
