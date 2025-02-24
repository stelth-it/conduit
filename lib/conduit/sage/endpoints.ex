defmodule Conduit.Sage.Endpoints do
  import Ecto.Query
  require Logger
  alias Mix.Tasks.Conduit.Sage.Make.Object
  alias Ecto.Changeset
  alias Conduit.Repo
  alias Conduit.Sage.Endpoints.Endpoint
  alias Conduit.Sage.Request, as: SR
  alias Conduit.Sage.Object.Object

  def get_by_id(id, preloads \\ []) when is_integer(id) do
    Repo.get(Conduit.Sage.Endpoints.Endpoint, id)
    |> Repo.preload(preloads)
  end

  def get_by_company_id(company_id, preloads \\ []) when is_binary(company_id) do
    q =
      from(e in Conduit.Sage.Endpoints.Endpoint,
        where: e.company_id == ^company_id,
        preload: ^preloads
      )

    Repo.all(q)
  end

  @spec update_available_objects(struct(), list(String.t()) | nil) ::
          {:ok, struct()} | {:error, Changeset.t()}
  def update_available_objects(%Conduit.Sage.Endpoints.Endpoint{} = e, object_list)
      when is_list(object_list) or is_nil(object_list) do
    e
    |> Endpoint.changeset(%{objects: object_list})
    |> Repo.update()
  end

  @doc """
  Given an endpoint struct will pull the available object names from
  the API and persist them.
  """
  @spec(
    update_available_objects_from_api(endpoint :: Ecto.Schema.t()) :: {:ok, struct()},
    {:error, Exception.t() | Changeset.t()}
  )
  def update_available_objects_from_api(%Endpoint{} = e) do
    request = SR.new(e)

    with {:ok, request} <- Conduit.Sage.get_api_token(request),
         {:ok, object_list} <- Conduit.Sage.list_objects(request),
         {:ok, s} <- update_available_objects(e, object_list) do
      {:ok, s}
    end
  end

  @doc """
  Given an endpoint an object name this function will fetch the 
  description of the object correspoinding to to the object name
  and will attmept to persist the object descripiton to the DB.

  Becuase we need to check with the API again to see if a field 
  is forbidden this fucntion will result in two API calls to 
  the Sage API endpoint, one to describe the fields, and another to 
  detrmine which fields are forbidden.
  """
  @spec get_object_description_from_api(endpoint :: Ecto.Schema.t(), object_name :: String.t()) ::
          {:ok, Ecto.Schema.t()} | {:error, Exception.t() | Ecto.Changeset.t()}
  def get_object_description_from_api(%Endpoint{} = e, object_name) when is_binary(object_name) do
    request = SR.new(e)

    if object_name not in e.objects,
      do:
        raise(
          ArgumentError,
          "invalid object, not found in the list of available objects on the endpoint"
        )

    with {:ok, request} <-
           Conduit.Sage.renew_api_token(request,
             retries: 3,
             logging: make_logging_function(e, :both)
           ),
         {:ok, fields} <-
           Conduit.Sage.inspect_object(request, object_name,
             retries: 3,
             logging: make_logging_function(e, :both)
           ),
         {:ok, forbidden_fields} <-
           Conduit.Sage.forbidden_fields(request, object_name, fields,
             retries: 3,
             logging: make_logging_function(e, :both)
           ) do
      fields_with_forbidden =
        for f <- fields do
          # field names in the error response are not in matching case
          if Enum.any?(forbidden_fields, &(&1 =~ ~r/#{f.name}/i)) do
            Map.put(f, :forbidden, true)
          else
            f
          end
        end

      %Object{}
      |> Object.changeset_with_endpoint(e, %{fields: fields_with_forbidden, name: object_name})
      |> Repo.insert(on_conflict: {:replace, [:fields]}, conflict_target: [:endpoint_id, :name])
    end
  end

  @doc """
  Given an endpoint with known objects will pull descripitons for *ALL*
  objects.  This will result in 2 requests per object.
  """
  @spec get_all_object_description_from_api(endpoint :: Ecto.Schema.t()) ::
          {:ok, Ecto.Schema.t()} | {:error, Exception.t() | Ecto.Changeset.t()}
  def get_all_object_description_from_api(%Endpoint{} = e) do
    for object_name <- e.objects do
      get_object_description_from_api(e, object_name)
    end
    |> List.last()
  end

  @doc """
  Given an endpoint and a module with a valid schema this funciton 
  will retrieve all records from the API for the sage object 
  corresponding to the schema and insert them in the DB.

  This function only produces the side effect of populating the 
  database with object entries.
  """
  @spec get_all_object_records(endpoint :: Endpoint.t(), sage_object :: module()) ::
          :ok
  def get_all_object_records(%Endpoint{} = endpoint, module) do
    {:ok, request} = SR.new(endpoint) |> Conduit.Sage.get_api_token(retries: 3)
    sage_object = struct(module, [])
    chunk_size = chunk_size(sage_object)

    Conduit.Sage.query_all_object(request, sage_object,
      retries: 3,
      logging: make_logging_function(endpoint, :both),
      select: :all,
      page_size: 2000,
      returning: :changeset
    )
    |> Stream.flat_map(fn
      {:ok, structs} ->
        structs

      {:error, _e} ->
        Logger.warning(
          "an error occured when fetching records for #{inspect(module)}, check request logs"
        )

        []
    end)
    |> Stream.filter(fn cs ->
      if cs.valid? do
        true
      else
        Logger.warning("data from api could not be parsed: #{inspect(cs)}")
        false
      end
    end)
    |> Stream.map(& &1.changes)
    |> Stream.map(&insert_timestamps/1)
    |> Stream.chunk_every(chunk_size)
    |> Stream.each(
      &Conduit.Repo.insert_all(module, &1, on_conflict: :replace_all, conflict_target: :RECORDNO)
    )
    |> Stream.run()
  end

  defp chunk_size(object) do
    field_count =
      object
      |> Map.keys()
      |> Enum.count()

    # 65K is the max number of fields that can be inserted
    # to pgsql at once
    div(65_500, field_count)
  end

  # need to insert timestamps manually they will not be 
  # generated by Repo
  defp insert_timestamps(map) do
    # must truncate to seconds. DB cannot handle micro seconnds
    time = NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)

    map
    |> Map.put(:pg_updated_at, time)
    |> Map.put(:pg_inserted_at, time)
  end

  @get_all_records_by_object_prefix_opts NimbleOptions.new!(
                                           skip_populated_tables: [
                                             type: :boolean,
                                             default: false,
                                             doc:
                                               "if true will skip fetching tables that already have records. Useful if a previous fetch partially fails"
                                           ]
                                         )
  @spec get_all_records_by_object_prefix(endpoint :: Endpoint.t(), prefix :: String.t()) :: :ok
  def get_all_records_by_object_prefix(%Endpoint{} = endpoint, prefix, options \\ [])
      when is_binary(prefix) do
    opts = NimbleOptions.validate!(options, @get_all_records_by_object_prefix_opts) |> Map.new()
    matching_objects = Conduit.Sage.Objects.get_by_name_prefix(endpoint.id, prefix)

    for object <- matching_objects do
      module_name = "Elixir.Conduit.Sage.Object.#{String.capitalize(object.name)}"

      with true <- Code.ensure_loaded?(String.to_existing_atom(module_name)),
           module <- String.to_existing_atom(module_name),
           true <- should_fetch_records?(module, opts) do
        get_all_object_records(endpoint, module)
      else
        false ->
          Logger.warning("Schema module #{module_name} not found for object #{object.name}")

        :skip ->
          Logger.info("Skipping #{module_name} as table already has records")
      end
    end

    :ok
  end

  defp should_fetch_records?(module, %{skip_populated_tables: true}) do
    count = from(m in module, select: count(m.pg_id)) |> Repo.one()
    count == 0 || :skip
  end

  defp should_fetch_records?(_module, _opts), do: true

  defp make_logging_function(endpoint, to_log) do
    fn result, request ->
      Conduit.Sage.Request.Logs.log_request(endpoint, request, result, to_log)
    end
  end
end
