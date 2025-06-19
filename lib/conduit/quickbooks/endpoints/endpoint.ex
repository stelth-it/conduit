defmodule Conduit.Quickbooks.Endpoints.Endpoint do
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{}

  schema "qb_endpoint" do
    field :type, Ecto.Enum, values: [:prod, :sandbox]
    field :company_id, :string
    field :token_endpoint, :string

    embeds_one :intuit_app, IntuitApp, on_replace: :update do
      field :client_id, :string
      field :client_secret, Conduit.Vault.EncryptedBinary, redact: true
      field :app_id, :string
      field :app_name, :string
    end

    embeds_one :refresh_token, RefreshToken, on_replace: :update do
      field :value, Conduit.Vault.EncryptedBinary, redact: true
      field :retrieved_on, :utc_datetime
    end
  end

  def changeset(%__MODULE__{} = ep, params \\ %{}) do
    ep
    |> cast(params, [:type, :company_id, :token_endpoint])
    |> cast_embed(:refresh_token, with: &refresh_token_changeset/2)
    |> cast_embed(:intuit_app, with: &intuit_app_changeset/2)
    |> validate_required([:type, :company_id, :token_endpoint])
    # unique index exists on these fileds
    |> unique_constraint([:company_id, :type])
  end

  def intuit_app_changeset(schema, params \\ %{}) do
    schema
    |> cast(params, [:client_id, :client_secret, :app_id, :app_name])
    |> validate_required([:client_id, :client_secret, :app_id, :app_name])
  end

  def refresh_token_changeset(schema, params \\ %{}) do
    schema
    |> cast(params, [:value, :retrieved_on])
    |> validate_required([:value, :retrieved_on])
  end

  @doc """
  given an endpoint returns the authorization header value that should be used for requests to the token endpoint.
  """
  @spec authorization_header_value(ep :: t()) :: String.t()
  def authorization_header_value(%__MODULE__{intuit_app: iapp}) do
    "Basic " <> Base.encode64(iapp.client_id <> ":" <> iapp.client_secret)
  end
end
