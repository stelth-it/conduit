defmodule Conduit.Quickbooks.ApiRequest.Query do
  @moduledoc """
  Functions for creating quickbooks query strings
  and URLs
  """
  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Quickbooks.Object

  @doc """
  Creates a request that will request all records for `object`
  starting at the given offset.
  """
  @spec get_all(Object.t(), offset :: non_neg_integer(), max_results :: non_neg_integer()) ::
          query_string :: String.t()
  def get_all(%Object{} = object, offset, max_results \\ 100)
      when is_integer(offset) and is_integer(max_results) do
    base = "SELECT * FROM #{Object.query_name(object)}"

    offset_component = if offset > 0, do: "STARTPOSITION #{offset}", else: []
    max_results_component = if max_results != 1000, do: "MAXRESULTS #{max_results}", else: []

    [base, offset_component, max_results_component]
    |> List.flatten()
    |> Enum.join(" ")
  end

  @doc """
  Given an endpoint will give the query url for the endpoint.
  No object is required here because the object is specified 
  in the query string see `get_all/2`
  """
  @spec query_url(endpoint :: Endoint.t()) :: String.t()
  def query_url(%Endpoint{} = endpoint) do
    Path.join([
      Endpoint.accounting_api_url(endpoint),
      "query"
    ])
  end
end
