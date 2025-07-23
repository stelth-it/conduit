
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Taxagency do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:display_name,
:sync_token,
:tax_tracked_on_sales,
:tax_tracked_on_purchases,
:last_file_date,
:tax_registration_number,
:qb_updated_at,
:qb_inserted_at,
:tax_agency_config]

 @primary_key false
 schema "taxagency" do
  field :id, :string, primary_key: true
field :display_name, :string
field :sync_token, :string
field :tax_tracked_on_sales, :boolean
field :tax_tracked_on_purchases, :boolean
field :last_file_date, :date
field :tax_registration_number, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :tax_agency_config, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
