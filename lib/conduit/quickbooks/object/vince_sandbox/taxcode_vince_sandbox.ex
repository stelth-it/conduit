
defmodule Conduit.Quickbooks.Object.VinceSandbox.Taxcode do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:name,
:sync_token,
:tax_group,
:taxable,
:active,
:description,
:hidden,
:qb_updated_at,
:qb_inserted_at,
:tax_code_config_type]

 @primary_key false
 schema "taxcode" do
  field :id, :string, primary_key: true
field :name, :string
field :sync_token, :string
field :tax_group, :boolean
field :taxable, :boolean
field :active, :boolean
field :description, :string
field :hidden, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :tax_code_config_type, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
