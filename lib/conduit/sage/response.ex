defmodule Conduit.Sage.Response do
  import SweetXml
  require Logger

  @type result(t, e) :: {:ok, t} | {:error, e}

  @typedoc """
  A string containing xml
  """
  @type xml_string() :: String.t()

  @doc """
  Checks the HTTP response code and the Sage 
  operation status and returns a `:error` tuple
  if either indicate failure.

  If given an `:error` tuple as input teh funciton
  will just return it back.
  """
  @spec check_response(Req.Response.t() | result(term(), term())) ::
          result(xml_string, Exception.t())
  def check_response({:ok, response}), do: check_response(response)
  def check_response({:error, _} = e), do: e

  def check_response(response) do
    with {:ok, body} <- check_response_code(response, return: :body),
         {:ok, body} <- check_operation_status(body) do
      {:ok, body}
    end
  end

  @check_response_code_opts NimbleOptions.new!(
                              return: [
                                type: {:in, [:response, :body]}
                              ]
                            )
  # checks response code an optionally extracts body
  defp check_response_code(response, opts) when is_list(opts) do
    opts = NimbleOptions.validate!(opts, @check_response_code_opts)

    case opts[:return] do
      :response ->
        check_response_code(response, & &1)

      :body ->
        check_response_code(response, &Map.fetch!(&1, :body))
    end
  end

  defp check_response_code(%Req.Response{status: 200} = resp, extract_func)
       when is_function(extract_func),
       do: {:ok, extract_func.(resp)}

  defp check_response_code(%Req.Response{status: code} = resp, extract_func)
       when is_function(extract_func),
       do:
         {:error,
          %Conduit.Sage.RequestError{
            message: "received invalid response from the server, code: #{code}",
            reason: :bad_resp_code,
            # always return resp here, more helpful for error handling
            response: resp
          }}

  # checks the sage operation status
  @spec check_operation_status(body :: xml_string()) ::
          result(xml_string(), Conduit.Sage.RequestError.t())
  defp check_operation_status(body) do
    case xpath(body, ~x"//result/status/text()"s) do
      "failure" ->
        {:error,
         %Conduit.Sage.RequestError{
           message: "function execution failed, see body for more details",
           reason: :function_failed,
           response: body
         }}

      _ ->
        {:ok, body}
    end
  end

  @doc """
  Extracts teh api key from an xml 
  string.
  """
  @spec extract_api_key(xml_string :: xml_string()) :: api_key :: String.t()
  def extract_api_key(xml_string) do
    xpath(xml_string, ~x"//data/api/sessionid/text()"s)
  end

  # extracts list of object descriptions
  @spec extract_list_response(xml_string()) :: term()
  def extract_list_response(xml_string) do
    xpath(xml_string, ~x"operation/result/data/type/@typename"sl)
  end

  @doc """
  Attempts to convert an xml string to a struct
  of the same type as the `struct` argument.

  Will raise if the attempt fails
  """
  @spec structs_from_query_response!(xml_string(), Conduit.Sage.Object.Queryable.t()) ::
          list(Conduit.Sage.Object.Queryable.t())
  def structs_from_query_response!(xml_string, struct) do
    response_data = extract_query_responses(xml_string, struct)

    response_data
    |> Enum.map(fn record ->
      extract_fields_from_record(record, Conduit.Sage.Object.Queryable.field_list(struct))
    end)
    |> Enum.map(fn record_map ->
      Conduit.Sage.Object.Queryable.struct_from_api(struct, record_map)
    end)
    |> Enum.reject(&(&1 == :error))
  end

  @doc """
  Extracts maps containing attributes of the object 
  contained in the `xml_string`.
  """
  @spec maps_from_query_response(xml_string(), Conduit.Sage.Object.Queryable.t()) :: list(map())
  def maps_from_query_response(xml_string, struct) do
    xml_string
    |> extract_query_responses(struct)
    |> Enum.map(fn record ->
      extract_fields_from_record(record, Conduit.Sage.Object.Queryable.field_list(struct))
    end)
  end

  @doc """
  Extracts changestes from the given `xml_string`.
  """
  @spec changesets_from_query_response(xml_string(), Conduit.Sage.Object.Queryable.t()) ::
          list(Ecto.Changeset.t())
  def changesets_from_query_response(xml_string, %{__struct__: module} = struct) do
    xml_string
    |> maps_from_query_response(struct)
    |> Enum.map(fn map ->
      module.cast_from_api(struct!(module), map)
    end)
  end

  @doc """
  Extracts the query response from an `xml_string` returned 
  from the api.
  """
  @spec extract_query_responses(xml_string(), Conduit.Sage.Object.Queryable.t() | String.t()) :: term()
  def extract_query_responses(xml_string, struct) when is_struct(struct) do
    xpath(xml_string, ~x"//result/data/#{Conduit.Sage.Object.Queryable.table_name(struct)}"l)
  end

  def extract_query_responses(xml_string, table_name) when is_binary(table_name) do
    xpath(xml_string, ~x"//result/data/#{table_name}"l)
  end

  # converts record from api to map using a list of fields
  @spec extract_fields_from_record(xml_string(), list(String.t())) :: %{atom() => String.t()}
  defp extract_fields_from_record(record, fields) do
    Enum.map(fields, fn field ->
      {
        String.to_atom(field),
        xpath(record, ~x"//#{field}/text()"os)
      }
    end)
    |> Map.new()
  end
end
