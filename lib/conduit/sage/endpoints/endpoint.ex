defmodule Conduit.Sage.Endpoints.Endpoint do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields ~w(type web_user web_user_password sender_id sender_password company_id)a
  @optional_fields ~w(objects unqueryable_objects excluded_objects)a

  schema "endpoints" do
    field(:type, Ecto.Enum, values: [:prod, :sandbox])
    field(:web_user, :string)
    field(:web_user_password, Conduit.Vault.EncryptedBinary, redact: true)
    field(:sender_id, :string)
    field(:sender_password, Conduit.Vault.EncryptedBinary, redact: true)
    field(:company_id, :string)
    field(:objects, {:array, :string})
    field(:unqueryable_objects, {:array, :string})
    field(:excluded_objects, {:array, :string})
    has_many(:object_detail, Conduit.Sage.Object.Object)
    has_many(:request_log, Conduit.Sage.Request.Logs.Log)
  end

  def changeset(%__MODULE__{} = endpoint, params \\ %{}) do
    endpoint
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
  end
end
