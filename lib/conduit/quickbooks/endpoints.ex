defmodule Conduit.Quickbooks.Endpoints do
  @moduledoc """
  Functions for working with quickbooks endpoints.
  """
  import Ecto.Query
  require Logger
  alias Phoenix.Endpoint
  alias Conduit.Quickbooks.AccessToken
  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Quickbooks.Object.{MigrationAction, SchemaAction}
  alias Conduit.Repo

  # Allows us to easily test req.  In prod this will evaluate to nil
  # and have no effect, in test it will evaluate to a tuple that will
  # tell req to use testing stub modules that are configured within
  # the exunit case.
  @test_plug Application.compile_env(:conduit, :qb_testing_plug)

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
  Adds objects to existing endpoint, all existing objects will be dropped!
  """
  def put_objects(%Endpoint{} = ep, objects) do
    ep
    |> Endpoint.put_objects(objects)
    |> Repo.update()
  end

  @doc """
  Will create the schema for the endpoint in the Postgres DB 
  if it does not already exist.

  This must be run before you can perform any migrations for the endpoint.
  """
  def create_partition(%Endpoint{} = ep) do
    Conduit.Repo.create_schema_if_absent(Endpoint.database_prefix(ep))
  end

  @doc """
  Given an endpoint will write all migrations associated with
  that endpoint.  By default this will not overwrite existing 
  migrations, see options for `MigrationAction.from_object_in_endpoint/3`.

  If an error occurs while writing the migration files all
  migration files will be deleted.  This **does not** roll back
  any migration, it is just to keep directories clean.
  """
  def create_migration_files(%Endpoint{} = ep, opts \\ []) do
    results =
      for object <- ep.objects do
        MigrationAction.write_migration(object, ep, opts)
      end

    if Enum.any?(results, &match?({:error, _}, &1)) do
      Logger.error("error occured while creating migration files, rolling back")

      results
      |> Enum.each(fn
        {:ok, ma} ->
          MigrationAction.remove_migration(ma)
          Logger.info("removed file at: #{MigrationAction.full_file_name(ma)}")

        {:error, ma} ->
          Logger.error(
            "error occured when creating migration file at: #{MigrationAction.full_file_name(ma)}"
          )
      end)

      :error
    else
      :ok
    end
  end

  @doc """
  Given an endpoint will write all schema modules associated with
  that endpoint.  By default this will not overwrite existing 
  migrations, see options for `SchemaAction.from_object_in_endpoint/3`.

  If an error occurs while writing the schema files all
  schema files will be deleted.  This **does not** roll back
  any migration, it is just to keep directories clean.
  """
  def create_schema_files(%Endpoint{} = ep, opts \\ []) do
    results =
      for object <- ep.objects do
        SchemaAction.write_schema(object, ep, opts)
      end

    if Enum.any?(results, &match?({:error, _}, &1)) do
      Logger.error("error occured while creating schema files, rolling back")

      results
      |> Enum.each(fn
        {:ok, ma} ->
          MigrationAction.remove_migration(ma)
          Logger.info("removed file at: #{MigrationAction.full_file_name(ma)}")

        {:error, ma} ->
          Logger.error(
            "error occured when creating schema file at: #{MigrationAction.full_file_name(ma)}"
          )
      end)

      :error
    else
      :ok
    end
  end

  @doc """
  finds an endpoint by company_id and type. Type defaults to :sandbox.
  """
  def get_by_company_id(company_id, type \\ :sandbox) do
    if type not in [:sandbox, :prod],
      do: raise(ArgumentError, "invalid type, must be either `:sandbox` or `:prod`")

    q =
      from e in Endpoint,
        where: e.company_id == ^company_id,
        where: e.type == ^type

    Repo.one(q)
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
  Given an endpoint will retrieve an access token.
  Will return with the (potentially updated) endpoint as the final entry.

  ## QB API Details

  QB API will at "sometime within 24hrs" return an updated refresh token along with 
  an access token in their response to an access token request.  This function 
  will handle this case by updating the endpoint in the DB and returning an updated
  endpoint.
  """
  @spec fetch_access_token(endpoint :: Endpoint.t()) ::
          {:ok, access_token :: AccessToken.t(), endpoint :: Endpoint.t()} | {:error, term()}
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
             },
             retry: :transient,
             plug: @test_plug
           ),
         {:ok, access_token} <- AccessToken.from_response(resp),
         {:ok, ep} <- maybe_update_refresh_token(ep, access_token) do
      {:ok, access_token, ep}
    end
  end

  @doc """
  If the refresh token in the endpoint is different then the 
  provided access token the endpoint will be updated.
  """
  @spec maybe_update_refresh_token(endpoint :: Endpoint.t(), access_token :: AccessToken.t()) ::
          {:ok, Endpoint.t()} | {:error, Ecto.Changeset.t()}
  def maybe_update_refresh_token(
        %Endpoint{refresh_token: %Endpoint.RefreshToken{value: rt}} = ep,
        %AccessToken{
          refresh_token: rt
        }
      ) do
    {:ok, ep}
  end

  def maybe_update_refresh_token(ep, %AccessToken{refresh_token: rt}) do
    update_refresh_token(ep, rt)
  end
end
