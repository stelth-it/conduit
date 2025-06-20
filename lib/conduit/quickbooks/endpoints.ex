defmodule Conduit.Quickbooks.Endpoints do
  import Ecto.Query
  alias Conduit.Quickbooks.AccessToken
  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Repo

  @doc """
  Retrieves the OAuth discovery document.
  """
  def retrieve_discovery do
    Req.get!("https://developer.api.intuit.com/.well-known/openid_configuration",
      params: %{accept: "application/json"}
    ).body
  end

  @doc """
  creates a new endpoint
  """
  def new(attrs \\ %{}) do
    %Endpoint{}
    |> Endpoint.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  finds an endpoint by company_id and type.
  Type defaults to :sandbox.
  """
  def get_by_company_id(company_id, type \\ :sandbox) do
    if type not in [:sandbox, :prod],
      do: raise(ArgumentError, "invalid type, must be either `:sandbox` or `:prod`")

    q =
      from e in Endpoint,
        where: e.company_id == ^company_id,
        where: e.type == ^type

    Repo.one!(q)
  end

  @doc """
  Updates the refresh token for the given endpoint.
  If a binary is given it is assumed to be the token value and
  the retrieved_on date for the token is automatically set to 
  utc_now, if a map is passed it is expected to represent a valid refresh
  token.
  """
  @spec update_refresh_token(endpoint :: map(), token :: map() | binary()) ::
          {:ok, map()} | {:error, Ecto.Changeset.t()}
  def update_refresh_token(%Endpoint{} = ep, refresh_token) when is_binary(refresh_token) do
    ep
    |> Endpoint.changeset(%{
      refresh_token: %{
        retrieved_on: DateTime.utc_now() |> DateTime.truncate(:second),
        value: refresh_token
      }
    })
    |> Repo.update()
  end

  def update_refresh_token(%Endpoint{} = ep, refresh_token) when is_map(refresh_token) do
    ep
    |> Endpoint.changeset(%{
      refresh_token: refresh_token
    })
    |> Repo.update()
  end

  @doc """
  Given an endpoint will retrieve an access token
  """
  @spec fetch_access_token(endpoint :: Endpoint.t()) ::
          {:ok, access_token :: AccessToken.t()} | {:error, term()}
  def fetch_access_token(%Endpoint{} = ep) do
    with {:ok, resp} <-
           Req.post(ep.token_endpoint,
             headers: %{
               accept: "application/json",
               content_type: "application/x-www-form-urlencoded",
               authorization: Endpoint.authorization_header_value(ep)
             },
             form: %{
               "grant_type" => "refresh_token",
               "refresh_token" => ep.refresh_token.value
             }
           ) do
      {:ok, AccessToken.from_response(resp)}
    end
  end
end
