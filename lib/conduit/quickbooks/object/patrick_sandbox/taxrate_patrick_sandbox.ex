
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Taxrate do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:rate_value,
:name,
:agency_name,
:agency_value,
:tax_return_line_name,
:tax_return_line_value,
:active,
:qb_updated_at,
:qb_inserted_at,
:original_tax_rate,
:description]

 @primary_key false
 schema "taxrate" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :rate_value, :string
field :name, :string
field :agency_name, :string
field :agency_value, :string
field :tax_return_line_name, :string
field :tax_return_line_value, :string
field :active, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :original_tax_rate, :string
field :description, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
