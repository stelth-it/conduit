defmodule Conduit.Quickbooks.ApiRequest do
  @moduledoc """
  Function for buidling requests to be submitted to the
  quickbooks api.
  """

  alias __MODULE__.Query
  alias Conduit.InvalidApiResponseError
  alias Conduit.Quickbooks.{Endpoints.Endpoint, Object, AccessToken}
  import Ecto.Changeset

  # Allows us to easily test req.  In prod this will evaluate to nil
  # and have no effect, in test it will evaluate to a tuple that will
  # tell req to use testing stub modules that are configured within
  # the exunit case.
  @test_plug Application.compile_env(:conduit, :qb_testing_plug)

  @doc """
  Gets one page of results from the api 
  with the given request options.

  ## Options
  - page_size (type: integer)(default: 100): the number of results to be returned
  - offset (type: integer)(default: 0): the offset from the begginging of results, mostly used for pagination.
  """
  @spec one_page_request(
          endpoint :: Endpoint.t(),
          object :: Object.t(),
          opts :: Keyword.t()
        ) ::
          {:ok, list(map())} | {:error, Exception.t()}
  def get_one_page(%Endpoint{} = endpoint, %Object{} = object, opts \\ []) do
    with request <- one_page_request(endpoint, object, opts),
         {:ok, response} <- run_request(request),
         data <- extract_response_data(response) do
      {:ok, data}
    end
  end

  @doc """
  like `get_one_page` but returns the request instead of running it and extracting results  
  """
  @spec one_page_request(
          endpoint :: Endpoint.t(),
          object :: Object.t(),
          opts :: Keyword.t()
        ) ::
          Req.Request.t()
  def one_page_request(%Endpoint{} = endpoint, %Object{} = object, opts) do
    map_opts =
      {%{page_size: 100, offset: 0}, %{page_size: :integer, offset: :integer}}
      |> cast(Map.new(opts), [:page_size, :offset])
      |> validate_inclusion(:page_size, 1..1000)
      |> apply_action(:validate)
      |> case do
        {:ok, opts} ->
          opts

        {:error, _cs} ->
          raise ArgumentError, "options are invalid"
      end

    Req.new(
      url: Query.query_url(endpoint),
      headers: %{content_type: "application/text", accept: "application/json"},
      params: %{query: Query.get_all(object, map_opts.offset, map_opts.page_size)}
    )
    |> add_auth(endpoint)
    |> Req.Request.append_response_steps(extract_data: extract_query_response(object))
  end

  @doc """
  Retrieves an auth token from the endpoint.
  """
  @spec get_access_token(endpoint :: Endpoint.t()) ::
          token :: {:ok, AccessToken.t()} | {:error, Exception.t()}
  def get_access_token(%Endpoint{} = endpoint) do
    with request <- access_token_request(endpoint),
         {:ok, response} <- run_request(request),
         auth_token <- extract_auth_token(response) do
      {:ok, auth_token}
    end
  end

  @doc """
  Create request to get access token.
  """
  @spec access_token_request(endpoint :: Endpoint.t()) :: request :: Req.Request.t()
  def access_token_request(%Endpoint{} = endpoint) do
    Req.new(
      url: Endpoint.token_url(endpoint),
      headers: %{
        accept: "application/json",
        content_type: "application/x-www-form-urlencoded",
        authorization: Endpoint.authorization_header_value(endpoint)
      },
      form: %{
        "grant_type" => "refresh_token",
        "refresh_token" => Endpoint.refresh_token_value(endpoint)
      },
      method: :post
    )
    |> Req.Request.append_response_steps(extract_access_token: &extract_auth_token_response/1)
  end

  @doc """
  Runs the given request and ensures that request options are set correctly.
  """
  @spec run_request(request :: Req.Request.t()) ::
          {:ok, Req.Response.t()} | {:error, Exception.t()}
  def run_request(request) do
    Req.run(request,
      retry: :transient,
      plug: @test_plug
    )
    |> case do
      {%Req.Request{}, response = %Req.Response{}} ->
        {:ok, response}

      {%Req.Request{}, error} ->
        {:error, error}
    end
  end

  @doc """
  Adds auth data to a request
  """
  @spec add_auth(request :: Req.Request.t(), token_value_or_endpoint :: String.t() | Endpoint.t()) ::
          request_with_auth :: Req.Request.t()
  def add_auth(request, %Endpoint{} = ep) do
    add_auth(request, Endpoint.access_token_value(ep))
  end

  def add_auth(request, token_value) do
    Req.Request.merge_options(request, auth: {:bearer, token_value})
  end

  @doc """
  Extracts response data from response
  """
  @spec extract_response_data(response :: Req.Response.t()) :: response_data :: list(map())
  def extract_response_data(request) do
    Req.Response.get_private(request, :response_data)
  end

  @doc """
  Extracts auth token from response
  """
  @spec extract_auth_token(response :: Req.Response.t()) :: AccessToken.t()
  def extract_auth_token(response) do
    Req.Response.get_private(response, :access_token)
  end

  defp extract_auth_token_response({request, response}) do
    case AccessToken.from_response(response) do
      {:ok, token} ->
        {request, Req.Response.put_private(response, :access_token, token)}

      {:error, e} ->
        {request, e}
    end
  end

  defp extract_query_response(object) do
    fn {request, response} ->
      if data = Object.extract_data_from_api(object, response.body) do
        {request, Req.Response.put_private(response, :response_data, data)}
      else
        {request, %InvalidApiResponseError{message: "no request body found"}}
      end
    end
  end
end
