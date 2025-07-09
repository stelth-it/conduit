defmodule Conduit.Quickbooks.Object.SchemaAction do
  @moduledoc """
  Represents a pending actio to create a schema file.
  """

  defstruct [:path, :content, :file_name, overwrite: false]

  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Quickbooks.Object
  import Ecto.Changeset

  @type t :: %__MODULE__{
          path: Path.t(),
          content: String.t(),
          overwrite: boolean(),
          file_name: String.t()
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
      path: Endpoint.schema_path(ep),
      overwrite: false,
      file_name: "#{obj.name}_#{Endpoint.database_prefix(ep)}"
    }

    opts_map =
      {default_options, %{overwrite: :boolean, path: :string, file_name: :string}}
      |> cast(Map.new(opts), [:overwrite, :path, :file_name])
      |> apply_action(:validate)
      |> case do
        {:error, cs} -> raise ArgumentError, "invalid options"
        {:ok, opts_map} -> opts_map
      end

    %__MODULE__{
      path: opts_map.path,
      overwrite: opts_map.overwrite,
      content: Object.schema(obj, Endpoint.database_prefix(ep)),
      file_name: opts_map.file_name
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
  def create_directory!(%__MODULE__{} = ma), do: File.dir?(ma.path) || File.mkdir_p!(ma.path)

  @doc """
  Writes the migration data to the file system.

  Will try to create the directory that wil store the
  schema, will raise if directory creation fails
  """
  @spec write_schema(t()) :: {:error, File.posix()} | :ok
  def write_schema(%__MODULE__{} = ma) do
    create_directory!(ma)
    full_file_name = Path.join(ma.path, ma.file_name <> ".ex")

    case {File.exists?(full_file_name), ma.overwrite} do
      {_, true} ->
        File.write(full_file_name, ma.content)

      {false, _} ->
        File.write(full_file_name, ma.content)

      _ ->
        :ok
    end
  end
end
