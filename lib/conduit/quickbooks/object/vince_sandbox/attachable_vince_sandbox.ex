
defmodule Conduit.Quickbooks.Object.VinceSandbox.Attachable do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:file_name,
:note,
:category,
:content_type,
:place_name,
:long,
:tag,
:lat,
:qb_updated_at,
:qb_inserted_at,
:file_access_uri,
:size,
:thumbnail_file_access_uri,
:temp_download_uri,
:thumbnail_temp_download_uri]

 @primary_key false
 schema "attachable" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :file_name, :string
field :note, :string
field :category, :string
field :content_type, :string
field :place_name, :string
field :long, :string
field :tag, :string
field :lat, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :file_access_uri, :string
field :size, :decimal
field :thumbnail_file_access_uri, :string
field :temp_download_uri, :string
field :thumbnail_temp_download_uri, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
