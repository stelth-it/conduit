defmodule Conduit.Quickbooks.Object.SchemaAction do
  @moduledoc """
  Represents a pending actio to create a schema file.
  """

  defstruct [:path, :content, :file_name, :object_name, overwrite: false]

  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Quickbooks.Object
  import Ecto.Changeset

  @type t :: %__MODULE__{
          path: Path.t(),
          content: String.t(),
          overwrite: boolean(),
          file_name: String.t(),
          object_name: String.t()
        }

  @doc """
  Given an object or object name and endpoint returns a schema action struct.

  ## Options
  - path (type: string)(default: endpoint value): will be used as the base path for writing the migration.
  - overwrite (type: boolean)(default: false): if true will overwrite existing migration files.
  - file_name (type: string)(default: object name <> partition name): when written will always be prepended with timestamp.
  """
  @spec from_object_in_endpoint(
          input_object :: Object.t() | String.t(),
          input_endpoint :: Endpoint.t(),
          opts :: Keyword.t()
        ) ::
          t()
  def from_object_in_endpoint(obj, ep, opts \\ [])

  def from_object_in_endpoint(%Object{} = obj, %Endpoint{} = ep, opts) do
    default_options = %{
      overwrite: false
    }

    opts_map =
      {default_options, %{overwrite: :boolean, path: :string, file_name: :string}}
      |> cast(Map.new(opts), [:overwrite, :path, :file_name])
      |> apply_action(:validate)
      |> case do
        {:error, _cs} -> raise ArgumentError, "invalid options"
        {:ok, opts_map} -> opts_map
      end

    %__MODULE__{
      path: Endpoint.schema_path(ep),
      overwrite: opts_map.overwrite,
      content: Object.schema(obj, Endpoint.database_prefix(ep)),
      file_name: "#{obj.name}_#{Endpoint.database_prefix(ep)}",
      object_name: obj.name
    }
  end

  def from_object_in_endpoint(obj_name, %Endpoint{} = ep, opts) do
    if obj = get_in(ep.objects, [Access.find(&(&1.name == obj_name))]) do
      from_object_in_endpoint(obj, ep, opts)
    else
      raise ArgumentError, "no object with that name exists"
    end
  end

  @doc """
  Creates the directory needed to hold schemas
  """
  def create_directory(%__MODULE__{} = ma), do: File.dir?(ma.path) || File.mkdir_p(ma.path)

  def create_directory_and_write(%__MODULE__{} = ma, full_file_name) do
    with v when v in [true, :ok] <- create_directory(ma),
         :ok <- File.write(full_file_name, ma.content) do
      {:ok, ma}
    else
      _ -> {:error, ma}
    end
  end

  @doc """
  Writes the migration data to the file system.

  Will try to create the directory that wil store the
  schema, will raise if directory creation fails
  """
  @spec write_schema(t()) :: {:error, File.posix()} | {:ok, t()}
  def write_schema(%__MODULE__{} = ma) do
    case {File.exists?(full_file_name(ma)), ma.overwrite} do
      {_, true} ->
        create_directory_and_write(ma, full_file_name(ma))

      {false, _} ->
        create_directory_and_write(ma, full_file_name(ma))

      _ ->
        {:ok, ma}
    end
  end

  @doc """
  Removes a schema file specified in a schema action.
  This does **not** rollback any migration, it only deletes the file.

  Should be used to cleanup if there is an issue with writing schemas.
  """
  def remove_schema(%__MODULE__{} = ma) do
    File.rm(full_file_name(ma))
  end

  @doc """
  Writes the schema file given an object or object name, an 
  endpoint and ops.  

  The ops are the same as for `from_object_in_endpoint/3`
  """
  def write_schema(%Object{} = obj, %Endpoint{} = ep, opts) do
    from_object_in_endpoint(obj, ep, opts)
    |> write_schema()
  end

  def write_schema(obj, %Endpoint{} = ep, opts) when is_binary(obj) do
    from_object_in_endpoint(obj, ep, opts)
    |> write_schema()
  end

  # appends extension
  def full_file_name(%__MODULE__{} = ma) do
    Path.join(ma.path, ma.file_name <> ".ex")
  end

  def object_name(%__MODULE__{object_name: on}), do: on
end
