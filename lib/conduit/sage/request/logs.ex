defmodule Conduit.Sage.Request.Logs do
  alias Conduit.Sage.Request.Logs.Log
  alias Conduit.Sage.Request, as: SR
  alias Conduit.Sage.Endpoints.Endpoint

  def log_success(%Endpoint{} = endpoint, %SR{} = request) do
    Log.wrap_success(endpoint, request)
    |> Conduit.Repo.insert()
  end

  def log_failure(%Endpoint{} = endpoint, %SR{} = request, error) do
    Log.wrap_failure(endpoint, request, error)
    |> Conduit.Repo.insert()
  end

  @spec log_request(
          endpoint :: Endpoint.t(),
          request :: SR.t(),
          {:ok, term()} | {:error, term()},
          :failure | :success | :both
        ) ::
          {:ok, term()} | {:error, term()}
  def log_request(endpoint, request, result, to_log) do
    case {result, to_log} do
      {{:ok, _}, :failure} ->
        nil

      {{:error, _}, :success} ->
        nil

      {{:error, e}, _} ->
        log_failure(endpoint, request, e)

      {{:ok, _}, _} ->
        log_success(endpoint, request)
    end

    result
  end
end
