defmodule Conduit.Quickbooks.Endpoints.Endpoint do
  @moduledoc """
  Represents a quickbooks endpoint.
  Stores all of the information needed 
  to build API requests to the given endpoint.
  """
  use Ecto.Schema
  import Ecto.Changeset
  alias Conduit.Quickbooks.Object

  @type t :: %__MODULE__{}

  schema "qb_endpoint" do
    field :type, Ecto.Enum, values: [:prod, :sandbox]
    field :company_id, :string
    field :token_endpoint, :string
    field :friendly_name, :string
    field :access_token, :map, virtual: true

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

    embeds_many :objects, Conduit.Quickbooks.Object, on_replace: :delete
  end

  def changeset(%__MODULE__{} = ep, params \\ %{}) do
    ep
    |> cast(params, [:type, :company_id, :token_endpoint, :friendly_name])
    |> cast_embed(:refresh_token, with: &refresh_token_changeset/2)
    |> cast_embed(:intuit_app, with: &intuit_app_changeset/2)
    |> validate_required([:type, :company_id, :token_endpoint, :friendly_name])
    # unique index exists on these fields
    |> unique_constraint([:company_id, :type])
  end

  @doc """
  Returns a changeset replacing existing object 
  endtries with the objects provided in the `objects`
  arugment
  """
  @spec put_objects(endpoint :: t(), object_list :: list(Object.t())) :: Ecto.Changeset.t()
  def put_objects(%__MODULE__{} = ep, objects) do
    ep
    |> change()
    |> put_embed(:objects, List.wrap(objects))
  end

  @doc """
  Retrieves the object with the given name 
  from the endpoint
  """
  @spec find_object(endpoint :: t(), object_name :: String.t()) :: Object.t() | nil
  def find_object(%__MODULE__{} = ep, name) do
    get_in(ep.objects, [Access.find(&(&1.name == name))])
  end

  @doc """
  Gives the base accounting api url for the endpoint.
  """
  @spec accounting_api_url(endpoint :: t()) :: String.t()
  def accounting_api_url(%__MODULE__{} = ep) do
    Path.join([
      base_url(ep),
      "v3",
      "company",
      ep.company_id
    ])
  end

  @doc """
  Returns refresh token value. This token 
  is used for getting new access tokens.
  """
  @spec refresh_token_value(endpoint :: t()) :: String.t()
  def refresh_token_value(%__MODULE__{refresh_token: %{value: value}}) do
    value
  end

  @doc """
  Returns access token value. This token is used for 
  submitting requests29H
  """
  @spec access_token_value(%__MODULE__{}) :: String.t()
  def access_token_value(%__MODULE__{access_token: %{access_token: value}}) do
    value
  end

  @doc """
  Returns the token url for the endpoint
  """
  @spec token_url(ep :: t()) :: String.t()
  def token_url(%__MODULE__{token_endpoint: url}) do
    url
  end

  @doc """
  Returns the database prefix to be used by
  data stored from objects using this endpoint.
  """
  def database_prefix(%__MODULE__{} = ep) do
    # for now we are just using the friendly_name
    ep.friendly_name
  end

  @doc """
  Returns the directory that should be used for 
  storing the schemas associated with this endpoint.
  """
  def schema_path(%__MODULE__{} = ep) do
    "./lib/conduit/quickbooks/object/#{database_prefix(ep)}"
  end

  @doc """
  Returns the directory to store migrations.
  """
  def migration_path(%__MODULE__{} = _ep) do
    # for now just default path, maybe prefix based in the future.
    "./priv/repo/migrations"
  end

  defp intuit_app_changeset(schema, params) do
    schema
    |> cast(params, [:client_id, :client_secret, :app_id, :app_name])
    |> validate_required([:client_id, :client_secret, :app_id, :app_name])
  end

  defp refresh_token_changeset(schema, params) do
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

  defp base_url(%__MODULE__{type: :sandbox}), do: "https://sandbox-quickbooks.api.intuit.com"
  defp base_url(%__MODULE__{type: :prod}), do: "https://quickbooks.api.intuit.com"
end
