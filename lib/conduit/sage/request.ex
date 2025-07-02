defmodule Conduit.Sage.Request do
  @moduledoc """
  Represents a request to be submitted to the Sage API.

  At a minimum the request must have service id/ password,
  user id / password, and company information. See documentation 
  for the new/1 function fo more information on required arguments.
  """

  alias Conduit.Sage.XML, as: X
  alias Conduit.Sage.Query, as: Q
  alias Conduit.Sage.Endpoints.Endpoint, as: EP
  alias Conduit.Sage.Request.SessionKey
  use Ecto.Schema
  @derive {Inspect, except: ~w(web_sender_password user_password)a}

  @type t :: %__MODULE__{}

  @primary_key false
  embedded_schema do
    field(:web_sender_id, :string)
    field(:web_sender_password, :string)
    field(:control_id, :string)
    field(:unique_id, :boolean)
    field(:dt_version, :string)
    field(:user_id, :string)
    field(:company_id, :string)
    field(:user_password, :string)
    embeds_one(:session_key, Conduit.Sage.Request.SessionKey)
    field(:functions, {:array, :map}, default: [])
  end

  def enforced_keys() do
    @enforce_keys
  end

  @doc """
  Redacts the sensitive fields from the request struct.
  Should be used before persisting.
  """
  @spec redact_sensitive_fields(t()) :: t()
  def redact_sensitive_fields(%__MODULE__{} = r) do
    r
    |> Map.put(:user_password, "redacted")
    |> Map.put(:web_sender_password, "redacted")
  end

  @new_opts NimbleOptions.new!(
              authentication: [
                type: :non_empty_keyword_list,
                required: true,
                doc: "authenticaiton information for the company.",
                keys: [
                  user_id: [
                    required: true,
                    type: :string,
                    doc: "the user id in the company that will be used by the api call"
                  ],
                  company_id: [
                    required: true,
                    type: :string,
                    doc: "the unique id of the company you are logging in to"
                  ],
                  user_password: [
                    required: true,
                    type: :string,
                    doc: "the password for the user id in the specified company."
                  ]
                ]
              ],
              control: [
                type: :non_empty_keyword_list,
                required: true,
                doc:
                  "control information for the request as a whole.  This includes auth information for the web service user",
                keys: [
                  web_sender_id: [
                    required: true,
                    type: :string,
                    doc: "the id of the sender **NOT** the id of the user"
                  ],
                  web_sender_password: [
                    required: true,
                    type: :string,
                    doc: "the password for the web sender **NOT** the password for the user"
                  ],
                  unique_id: [
                    type: :boolean,
                    default: true,
                    doc:
                      "controls whether functions in this operation can execute more than once."
                  ],
                  control_id: [
                    type: :string,
                    doc:
                      "uniquely identifies the request for tracking on the client side.  This is not the control id that is controlled by unique id. By default will be a pseudo random UUID"
                  ],
                  dt_version: [
                    type: :string,
                    default: "3.0",
                    doc: "specifies the XML version number"
                  ]
                ]
              ]
            )
  @doc """
  Creats a new request struct.  You must provide basic information 
  for the request and authorization in the options.


  [sage description](https://developer.intacct.com/web-services/requests/)
  ## Options

  #{NimbleOptions.docs(@new_opts)}
  """
  @spec new(Keyword.t() | Endpoint.t()) :: t()
  def new(opts) when is_list(opts) do
    opts =
      NimbleOptions.validate!(opts, @new_opts)
      |> then(&Keyword.merge(&1[:control], &1[:authentication]))
      |> Keyword.put_new(:control_id, UUID.uuid4())

    struct!(__MODULE__, opts)
  end

  # TODO: Add the ability for the user to pass in additional control options
  def new(%EP{} = endpoint) do
    new(
      authentication: [
        user_id: endpoint.web_user,
        company_id: endpoint.company_id,
        user_password: endpoint.web_user_password
      ],
      control: [
        web_sender_id: endpoint.sender_id,
        web_sender_password: endpoint.sender_password
      ]
    )
  end

  @doc """
  Adds a request api token function to a request.
  """
  @spec request_api_token(t()) :: t()
  def request_api_token(%__MODULE__{} = s) do
    add_function(s, function(X.tag(name: "getAPISession")))
  end

  @update_api_token_opts NimbleOptions.new!(
                           creation_time: [
                             type: {:struct, NaiveDateTime},
                             doc:
                               "the time the session key was creeated.  By default now will be used"
                           ],
                           expiration_time: [
                             type: {:struct, NaiveDateTime},
                             doc:
                               "the time the session key will expire. By default now + 60 minutes will be used"
                           ]
                         )
  def update_api_token(%__MODULE__{} = s, token, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @update_api_token_opts)

    %{s | session_key: SessionKey.new(token, opts)}
  end

  @doc """
  Clears the session key on the request struct.
  The key must be `nil` to create a proper 
  xml request when the request is sent.
  """
  @spec clear_session_key(t()) :: t()
  def clear_session_key(%__MODULE__{} = s) do
    %{s | session_key: nil}
  end

  def expired_api_token?(%__MODULE__{session_key: nil}) do
    true
  end

  def expired_api_token?(%__MODULE__{session_key: session_key}) do
    SessionKey.expired?(session_key)
  end

  def expired_session?(%__MODULE__{session_key: key}) do
    SessionKey.expired?(key)
  end

  @doc """
  Adds a request to describe an object.
  """
  @spec inspect_object(input_request :: t(), object_name :: String.t()) :: updated_request :: t()
  def inspect_object(%__MODULE__{} = s, object_name) do
    s
    |> add_function(
      function(
        X.tag(
          name: "inspect",
          attr: [detail: "1"],
          value: X.tag(name: "object", value: object_name)
        )
      )
    )
  end

  @doc """
  Adds a query function to the request.

  See the documentation for `Conduit.Sage.Query.query_from_select_list!/4` for
  information on arguments
  """
  @spec query_object(
          input_request :: t(),
          object ::
            String.t()
            | Conduit.Sage.Object.Queryable.t(),
          select :: list(atom()) | list(String.t()) | atom(),
          page_size :: non_neg_integer(),
          offset :: non_neg_integer()
        ) :: output_request :: t()
  def query_object(%__MODULE__{} = input_struct, object, select, page_size, offset) do
    input_struct
    |> add_function(Q.query_from_select_list!(object, select, page_size, offset))
  end

  @doc """
  Given the same arguments as `query_object/5` will 
  produce a stream of requests with incremented
  offsets.
  """
  @spec query_object_stream(
          input_request :: t(),
          object :: String.t() | Conduit.Sage.Object.Queryable.t(),
          select :: atom() | list(),
          page_size :: non_neg_integer(),
          offset :: non_neg_integer()
        ) :: request_stream :: Enum.t()
  def query_object_stream(%__MODULE__{} = input_struct, object, select, page_size, offset) do
    Stream.unfold(
      {query_object(input_struct, object, select, page_size, offset), offset + page_size},
      fn {request, page_offset} ->
        {request,
         {query_object(input_struct, object, select, page_size, page_offset),
          page_offset + page_size}}
      end
    )
  end

  defp add_function(%__MODULE__{} = r, %X{} = f) do
    r
    |> Map.update!(:functions, &List.insert_at(&1, -1, f))
  end

  @doc """
  Adds an order by clause to the query functions in the request.

  This function modifies the first matching query function in the request based on the
  provided selection function. Once a function is modified, subsequent functions will
  not be changed.

  ## Arguments

    * `request` - The Sage request struct to modify
    * `field_name` - The name of the field to sort by (e.g. "WHENCREATED", "TOTAL")
    * `order` - The sort direction, either `:asc` or `:desc`
    * `select_func` - Optional function that takes a query function and returns true if it should be modified.
      Defaults to selecting the first function.

  """
  @spec add_order_by(
          request :: t(),
          field_name :: String.t(),
          order :: :asc | :desc,
          select_func :: (X.t() -> boolean())
        ) :: t()
  def add_order_by(request, field_name, order, select_func \\ fn _ -> true end)
  def add_order_by(%__MODULE__{functions: []} = r, _, _, _), do: r

  def add_order_by(%__MODULE__{functions: funcs} = r, field_name, order, select_func)
      when is_binary(field_name) and (order == :desc or order == :asc) do
    {updated_funcs, _} =
      Enum.map_reduce(funcs, true, fn
        func, true ->
          if select_func.(func) do
            {
              update_in(
                func,
                [Access.key(:value), Access.find(&(&1.name == "query"))],
                &Q.add_order_by(&1, field_name, order)
              ),
              false
            }
          else
            {true, func}
          end

        func, false ->
          {false, func}
      end)

    %{r | functions: updated_funcs}
  end

  @doc """
  Adds a date range filter to the query functions in the request.

  This function modifies the first matching query function in the request based on the
  provided selection function. Once a function is modified, subsequent functions will
  not be changed. The date filter is applied as an inclusive range between the start
  and end dates.

  ## Arguments

    * `request` - The Sage request struct to modify
    * `start_date` - The beginning date of the filter range (inclusive)
    * `end_date` - The ending date of the filter range (inclusive)
    * `target_field` - The field name to apply the date filter to. Defaults to "WHENCREATED"
    * `function_select` - Optional function that takes a query function and returns true if it should be modified.
      Defaults to selecting the first function.
  """
  @spec add_date_filter(
          request :: t(),
          start_date :: Date.t(),
          end_date :: Date.t(),
          target_field :: String.t(),
          function_select :: (X.t() -> boolean())
        ) :: updated_request :: t()
  def add_date_filter(
        request,
        start_date,
        end_date,
        target_field \\ "WHENCREATED",
        function_select \\ fn _ -> true end
      )

  def add_date_filter(%__MODULE__{functions: []} = r, _, _, _, _) do
    r
  end

  def add_date_filter(
        %__MODULE__{functions: funcs} = r,
        %Date{} = start_date,
        %Date{} = end_date,
        target_field,
        function_select
      )
      when is_binary(target_field) and is_function(function_select) do
    {updated_funcs, _} =
      Enum.map_reduce(funcs, true, fn
        func, true ->
          if function_select.(func) do
            {
              update_in(
                func,
                [Access.key(:value), Access.find(&(&1.name == "query"))],
                &Q.add_date_filter(&1, start_date, end_date, target_field)
              ),
              false
            }
          else
            {func, true}
          end

        func, false ->
          {func, false}
      end)

    %{r | functions: updated_funcs}
  end

  def function(%X{} = body) do
    X.tag(name: "function", attr: [controlid: UUID.uuid4()], value: [body])
  end

  def to_xml(%__MODULE__{
        web_sender_id: web_sender_id,
        web_sender_password: web_sender_password,
        control_id: control_id,
        unique_id: unique_id,
        dt_version: dt_version,
        user_id: user_id,
        user_password: user_password,
        company_id: company_id,
        session_key: session_key,
        functions: f
      }) do
    X.meta(
      name: "xml",
      attr: [version: "1.0", encoding: "UTF-8"],
      value:
        X.tag(
          name: "request",
          value: [
            X.tag(
              name: "control",
              value: [
                X.tag(name: "senderid", value: web_sender_id),
                X.tag(name: "password", value: web_sender_password),
                X.tag(name: "controlid", value: control_id),
                X.tag(name: "uniqueid", value: to_string(unique_id)),
                X.tag(name: "dtdversion", value: dt_version)
              ]
            ),
            X.tag(
              name: "operation",
              value: [
                X.tag(
                  name: "authentication",
                  value: [
                    if session_key do
                      X.tag(name: "sessionid", value: session_key.value)
                    else
                      X.tag(
                        name: "login",
                        value: [
                          X.tag(name: "userid", value: user_id),
                          X.tag(name: "companyid", value: company_id),
                          X.tag(name: "password", value: user_password)
                        ]
                      )
                    end
                  ]
                ),
                X.tag(name: "content", value: if(Enum.empty?(f), do: "", else: f))
              ]
            )
          ]
        )
    )
  end

  defimpl String.Chars, for: __MODULE__ do
    alias Conduit.Sage.Request, as: SR

    def to_string(s) do
      SR.to_xml(s) |> Kernel.to_string()
    end
  end
end
