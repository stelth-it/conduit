defmodule Conduit.Repo.Migrations.AddAttachablePatrickSandbox do
  use Ecto.Migration

  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("attachable", prefix: "patrick_sandbox", primary_key: false) do
      add :sync_token, :string
      add :file_name, :string
      add :note, :string
      add :category, :string
      add :content_type, :string
      add :place_name, :string
      add :long, :string
      add :tag, :string
      add :lat, :string
      add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
      add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
      add :file_access_uri, :string
      add :size, :decimal
      add :thumbnail_file_access_uri, :string
      add :temp_download_uri, :string
      add :thumbnail_temp_download_uri, :string
      timestamps()
    end
  end
end
