defmodule Conduit.Sage do
  import SweetXml
  alias Conduit.Sage.Request, as: SR
  alias Conduit.Sage.Response, as: Resp
  alias Conduit.Sage.Request.Runner

  # we use a pattern here becasue depending on the number of forbiddne fields
  # you can receive multiple errorno values
  @forbidden_field_error_code_pattern ~r/(XL03000006)+$/
  @default_options [
    retries: [
      type: :non_neg_integer,
      default: 0,
      doc: "the number of times the request will be resent on failure"
    ],
    logging: [
      type: {:fun, 2},
      doc: "the function used to log request results"
    ]
  ]

  @get_api_token_opts NimbleOptions.new!(@default_options)
  @doc """
  Retrieves a session key from the endpoint to be used in future 
  requests.  The session key is stored in the request struct 
  returned in the :ok tuple
  """
  @spec(
    get_api_token(request :: SR.t()) :: {:ok, request_with_key :: SR.t()},
    {:error, Exception.t()}
  )
  def get_api_token(%SR{} = request, options \\ []) do
    opts = NimbleOptions.validate!(options, @get_api_token_opts)

    prepped_request = SR.request_api_token(request)

    prepped_request
    |> Runner.submit_sync(extract_runner_options(opts))
    |> Resp.check_response()
    |> process_response(&Resp.extract_api_key/1)
    |> process_response(&SR.update_api_token(request, &1))
    |> log_result(prepped_request, opts[:logging])
  end

  @renew_api_token_options NimbleOptions.new!(@default_options)
  @doc """
  Renews the api token on the given request.

  Tokens are considered expired if they are more than one hour old.

  If the request provided has no session key then it will be considered 
  expired and a new one will be fetched from the api.
  """
  @spec renew_api_token(request :: SR.t()) :: {:ok, SR.t()} | {:error, term()}
  def renew_api_token(request, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @renew_api_token_options)

    if SR.expired_session?(request) do
      request
      |> SR.clear_session_key()
      |> get_api_token(opts)
    else
      {:ok, request}
    end
  end

  @inspect_object_options NimbleOptions.new!(
                            Keyword.merge(@default_options,
                              response_processor: [
                                type: {:fun, 1},
                                doc: "arity one function used to process data returened from api"
                              ]
                            )
                          )
  @doc """
  Fetches field information for a given object.
  Returns a map containing field names, types, 
  and brief descriptions.
  """
  @typedoc """
  Map describing a field on a Sage object
  """
  @type description :: %{
          name: String.t(),
          type: String.t(),
          required: String.t(),
          description: String.t()
        }
  @spec inspect_object(request :: SR.t(), object_name :: String.t()) ::
          {:ok, descriptions :: list(description())} | {:error, Exception.t()}
  def inspect_object(%SR{} = r, object_name, options \\ []) do
    opts =
      NimbleOptions.validate!(options, @inspect_object_options)
      |> Keyword.put_new(:response_processor, &extract_field_details/1)

    prepped_request = SR.inspect_object(r, object_name)

    prepped_request
    |> Runner.submit_sync(extract_runner_options(opts))
    |> Resp.check_response()
    |> process_response(opts[:response_processor])
    |> log_result(prepped_request, opts[:logging])
  end

  @list_objects_opts NimbleOptions.new!(@default_options)
  @doc """
  Given a valid request struct will return a list
  of all object names in the Sage tenant
  """
  @spec list_objects(request_struct :: SR.t()) ::
          {:ok, field_list :: list(String.t())} | {:error, Exception.t()}
  def list_objects(%SR{} = r, opts \\ []) do
    opts =
      NimbleOptions.validate!(opts, @list_objects_opts) |> Keyword.put(:response_processor, & &1)

    inspect_object(r, "*", opts)
    |> process_response(&Resp.extract_list_response/1)
  end

  @query_object_opts NimbleOptions.new!(
                       Keyword.merge(@default_options,
                         select: [
                           type: {:or, [{:list, :string}, {:list, :atom}, {:in, [:all]}]},
                           doc: "fields that will be returned by the query",
                           required: true
                         ],
                         page_size: [
                           type: {:in, 1..2000},
                           default: 100,
                           doc: "The number of records returned per reqest"
                         ],
                         offset: [
                           type: :non_neg_integer,
                           default: 0,
                           doc: "The offset from the beginning of the query results"
                         ],
                         returning: [
                           type: {:in, [:map, :struct, :changeset]},
                           default: :struct
                         ],
                         start_date: [
                           type: {:struct, Date},
                           doc: "the earliest created date to return"
                         ],
                         end_date: [
                           type: {:struct, Date},
                           doc: "the latest date to return"
                         ],
                         created_field_name: [
                           type: :string,
                           doc:
                             "the field in the object that determines when the object was created",
                           default: "WHENCREATED"
                         ],
                         order_by: [
                           type: :non_empty_keyword_list,
                           keys: [
                             field_name: [
                               type: :string,
                               required: true
                             ],
                             order: [
                               type: {:in, [:asc, :desc]},
                               default: :desc
                             ]
                           ],
                           doc:
                             "the field that will be used to order results, by default results are not orderd"
                         ]
                       )
                     )
  @doc """
  Queries the Sage api using the provided sage_object_struct.
  If successuful an :ok tuple is returned with the response 
  from Sage parsed into a list of structs that correspond to 
  the object.
  """
  @spec query_object(
          request_struct :: SR.t(),
          sage_object_struct :: Conduit.Sage.Object.Queryable.t(),
          opts :: Keyword.t()
        ) :: {:ok, list(struct())} | {:error, Exception.t()}
  def query_object(%SR{} = r, object, opts) when is_map(object) do
    opts = NimbleOptions.validate!(opts, @query_object_opts)

    response_prep_func =
      case opts[:returning] do
        :struct ->
          &Resp.structs_from_query_response!/2

        :map ->
          &Resp.maps_from_query_response/2

        :changeset ->
          &Resp.changesets_from_query_response/2
      end

    raise_if_not_queryable(object)

    case submit_query(r, object, opts) do
      {:ok, body} ->
        {:ok,
         Enum.map(List.wrap(body), &response_prep_func.(&1, object))
         |> List.flatten()}

      e ->
        e
    end
  end

  @submit_query_opts @query_object_opts
  @doc """
  Submits a request to the Sage API.  This function expects 
  that object is a string, to query with a struct use `query_object/1`

  On success an :ok tuple will be returned with the xml payload
  returned from Conduit.Sage.
  """
  @spec submit_query(
          request_struct :: SR.t(),
          object_name :: String.t() | Conduit.Sage.Object.Queryable.t(),
          opts :: Keyword.t()
        ) ::
          {:ok, String.t()} | {:error, Exception.t()}
  def submit_query(%SR{} = r, object, opts) when is_binary(object) or is_struct(object) do
    opts = NimbleOptions.validate!(opts, @submit_query_opts)

    # Validate date options consistency
    case {opts[:start_date], opts[:end_date]} do
      {nil, nil} ->
        :ok

      {nil, %Date{}} ->
        raise ArgumentError,
          message: "Both start_date and end_date must be provided when using date filtering"

      {%Date{}, nil} ->
        raise ArgumentError,
          message: "Both start_date and end_date must be provided when using date filtering"

      {%Date{} = start_date, %Date{} = end_date} ->
        if Date.compare(end_date, start_date) == :lt do
          raise ArgumentError,
            message:
              "end_date (#{Date.to_string(end_date)}) must be equal to or after start_date (#{Date.to_string(start_date)})"
        end
    end

    if opts[:fetch_all] do
      query_all_object(r, object, opts)
    else
      prepped_request =
        SR.query_object(
          r,
          object,
          opts[:select],
          opts[:page_size],
          opts[:offset]
        )
        |> then(fn request ->
          if order_opts = opts[:order_by] do
            SR.add_order_by(request, order_opts[:field_name], order_opts[:order])
          else
            request
          end
        end)
        |> then(fn request ->
          if opts[:start_date] do
            SR.add_date_filter(
              request,
              opts[:start_date],
              opts[:end_date],
              opts[:created_field_name]
            )
          else
            request
          end
        end)

      prepped_request
      |> Runner.submit_sync(extract_runner_options(opts))
      |> Resp.check_response()
      |> log_result(prepped_request, opts[:logging])
    end
  end

  @query_all_object_opts @query_object_opts
  @spec query_all_object(
          request :: SR.t(),
          object :: Conduit.Sage.Object.Queryable.t(),
          opts :: Keyword.t()
        ) :: Enum.t()
  def query_all_object(r, object, opts \\ []) do
    opts = NimbleOptions.validate!(opts, @query_all_object_opts)

    response_prep_func =
      case opts[:returning] do
        :struct ->
          &Resp.structs_from_query_response!/2

        :map ->
          &Resp.maps_from_query_response/2

        :changeset ->
          &Resp.changesets_from_query_response/2
      end

    SR.query_object_stream(r, object, opts[:select], opts[:page_size], opts[:offset])
    |> Stream.map(fn request ->
      request
      |> Runner.submit_sync(extract_runner_options(opts))
      |> Resp.check_response()
      |> log_result(request, opts[:logging])
    end)
    |> Stream.take_while(fn
      {:ok, response} ->
        entry_count =
          Resp.extract_query_responses(response, object)
          |> Enum.count()

        entry_count > 0

      {:error, _} ->
        true
    end)
    |> Stream.map(fn
      {:ok, response} ->
        {:ok, response_prep_func.(response, object)}

      {:error, e} ->
        {:error, e}
    end)
  end

  @doc """
  Creates a description file at the given path for the given object.
  This file can then be used by the mix task sage.make.object to 
  create a module file with a shema that represents the object. 
  """
  def create_description_file(%SR{} = r, object_name, file_path) do
    object_name = String.upcase(object_name)
    {:ok, description} = inspect_object(r, object_name)

    forbidden_field_list = forbidden_fields(r, object_name, description)

    fields =
      description
      |> Enum.reject(fn %{name: n} ->
        field_in_forbidden?(forbidden_field_list, n)
      end)
      |> required_to_bool()

    %{
      object_name: object_name,
      fields: fields,
      forbidden_field_names: forbidden_field_list
    }
    |> JSON.encode_to_iodata!()
    |> then(&File.write(file_path, &1))
  end

  defp field_in_forbidden?(forbidden_list, field_name) when is_binary(field_name) do
    Enum.any?(forbidden_list, &(&1 =~ ~r/#{field_name}/i))
  end

  @forbidden_fields_options @default_options
  @spec forbidden_fields(
          request :: SR.t(),
          table_name :: String.t(),
          field_list :: list(String.t()) | list(map())
        ) :: {:ok, list(String.t())} | {:error, term()}
  def forbidden_fields(r, object_name, fields, opts \\ [])

  def forbidden_fields(_r, _object_name, [], _opts) do
    {:ok, []}
  end

  def forbidden_fields(r, object_name, [f | _] = fields, opts) when is_map(f) do
    opts = NimbleOptions.validate!(opts, @forbidden_fields_options)
    forbidden_fields(r, object_name, Enum.map(fields, & &1.name), opts)
  end

  def forbidden_fields(r, object_name, [f | _] = fields, opts) when is_binary(f) do
    opts = NimbleOptions.validate!(opts, @forbidden_fields_options)
    submit_opts = Keyword.merge(opts, select: fields, page_size: 1)

    case submit_query(r, object_name, submit_opts) do
      {:ok, _} ->
        {:ok, []}

      {:error, %{reason: :function_failed, response: body} = e} ->
        if not (extract_error_number(body) =~ @forbidden_field_error_code_pattern) do
          {:error, e}
        else
          {:ok, extract_unreadable_fields(body)}
        end

      {:error, _} = e ->
        e
    end
  end

  # logs result of function call.
  @spec log_result({:ok, term()} | {:error, term()}, SR.t(), function() | nil) ::
          {:ok, term()} | {:error, Exception.t()}
  defp log_result(result, _request, nil), do: result

  defp log_result(result, request, logging_func) when is_function(logging_func, 2) do
    logging_func.(result, request)
  end

  defp required_to_bool(description) do
    description
    |> Enum.map(fn %{required: s} = i ->
      case s do
        "true" -> %{i | required: true}
        "false" -> %{i | required: false}
      end
    end)
  end

  defp extract_field_details(body) do
    xpath(body, ~x"operation/result/data/Type/Fields/Field"l)
    |> Enum.map(fn e ->
      xmap(e,
        name: ~x"Name/text()"s,
        type: ~x"externalDataName/text()"s,
        required: ~x"isRequired/text()"s,
        description: ~x"Description/text()"s
      )
    end)
  end

  # prcoesses resonse using func.  func is only called
  # if we have an ok tuple
  @spec process_response({:ok, term()} | {:error, term()}, function()) ::
          {:ok, term()} | {:error, term()}
  defp process_response({:ok, body}, process_func) do
    {:ok, process_func.(body)}
  end

  defp process_response({:error, _} = e, _), do: e

  # will raise if the given object is not queryable
  defp raise_if_not_queryable(object) do
    if Conduit.Sage.Object.Queryable.impl_for!(object) do
      :ok
    else
      raise(ArgumentError, "object must be queryable!")
    end
  end

  @spec extract_runner_options(opts :: Keyword.t()) :: runner_opts :: Keyword.t()
  defp extract_runner_options(opts) when is_list(opts) do
    Keyword.take(opts, [:retries])
  end

  # extracts the error number as a string from a response
  @spec extract_error_number(xml_body :: String.t()) :: error_code :: String.t()
  def extract_error_number(body) do
    xpath(body, ~x"//result/errormessage/error/errorno/text()"s)
  end

  # extracts the list of unredable fields from an xml response.
  # assumes that the xml response has expected error fields
  @unreadable_field_pattern ~r/: \[\w*: \[(?<unreadable>.*)\] \]/
  @spec extract_unreadable_fields(xml_body :: String.t()) :: unreadable_fields :: list(String.t())
  def extract_unreadable_fields(body) do
    stripped_body =
      xpath(body, ~x"//result/errormessage/error/description2/text()"s)
      |> String.replace(["\t", "\n"], "")

    %{"unreadable" => fields} = Regex.named_captures(@unreadable_field_pattern, stripped_body)

    fields
    |> String.split(",")
    |> Enum.map(&String.trim/1)
  end
end
