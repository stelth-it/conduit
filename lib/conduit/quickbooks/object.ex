defmodule Conduit.Quickbooks.Object do
  @moduledoc """
  Represents an object in the QB API.
  """

  use Ecto.Schema
  alias Conduit.Quickbooks.Object.Field

  @type t :: %__MODULE__{
          name: String.t(),
          schema_path: String.t(),
          fields: list(Field.t()),
          json_data_key: String.t()
        }

  embedded_schema do
    field :name, :string
    field :schema_path, :string
    field :json_data_key, :string
    embeds_many :fields, Field
  end

  def from_scrape(name, fields) do
    %__MODULE__{
      name: name,
      fields: fields
    }
  end

  @doc """
  Extracts the data associated with the 
  object from the given map representing 
  a response from the api

  nil is returned if no matching data is found
  """
  @spec extract_data_from_api(object :: t(), body_data :: map()) :: list(map()) | nil
  def extract_data_from_api(%__MODULE__{} = obj, response_data) do
    response_data["QueryResponse"][obj.json_data_key]
  end

  @doc """
  Returns the schema path if it exists, null otherwise
  """
  @spec get_schema_path(object :: t()) :: String.t() | nil
  def get_schema_path(%__MODULE__{schema_path: path}) do
    path
  end

  @doc """
  Returns the name to be used to refer to this object in queries
  """
  @spec query_name(object :: t()) :: query_name :: String.t()
  def query_name(%__MODULE__{name: name}) do
    String.capitalize(name)
  end

  @doc """
  Given a map represneting a JSON response
  extracts all fields into a map.
  """
  @spec extract_fields(object :: t(), api_response :: map()) :: extracted :: map()
  def extract_fields(%__MODULE__{} = object, api_response) do
    for field <- object.fields, into: %{} do
      Field.extract_field(field, api_response)
    end
  end

  def migration(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/migration.eex",
      assigns: [table_name: obj.name, fields: obj.fields, prefix: prefix]
    )
  end

  def schema(%__MODULE__{} = obj, prefix) do
    EEx.eval_file("./lib/conduit/quickbooks/object/schema.eex",
      assigns: [
        module_name: schema_module_name(obj, prefix, :string),
        prefix: prefix,
        table_name: obj.name,
        field_atoms: internal_field_names_for_schema(obj),
        required_field_atoms: intenral_required_field_names_for_schema(obj),
        fields: obj.fields
      ]
    )
  end

  @doc """
  Given an object, a prefix, and an input map 
  applies the changeset function in the corresponding
  schema module
  """
  @spec apply_changeset(object :: t(), prefix :: String.t(), input_map :: map()) ::
          Ecto.Changeset.t()
  def apply_changeset(%__MODULE__{} = object, prefix, input_map) do
    schema_mod = load_module!(object, prefix)

    struct(schema_mod)
    |> schema_mod.changeset(input_map)
  end

  @doc """
  Checks if a module file is loaded.
  If it is not, it checks if a module file
  exists and compiles it.
  """
  @spec load_module!(object :: t(), prefix :: String.t()) :: module()
  def load_module!(%__MODULE__{} = obj, prefix) do
    case {Code.ensure_loaded(schema_module_name(obj, prefix, :atom)),
          File.exists?(obj.schema_path)} do
      {{:module, mod}, _} ->
        mod

      {_, true} ->
        [{mod, _bin} | _] = Code.compile_file(obj.schema_path)
        mod

      {_, _} ->
        raise RuntimeError, "could not find a schema module or valid schema module file!"
    end
  end

  @doc """
  Given an object and a prefix will return the module name for the 
  associated schema.  The third argument determines whether an 
  atom or a string is to be returned.
  """
  @spec schema_module_name(object :: t(), prefix :: String.t(), :atom | :string) ::
          atom() | String.t()
  def schema_module_name(%__MODULE__{} = obj, prefix, :atom) do
    Module.concat([
      "Conduit",
      "Quickbooks",
      "Object",
      Macro.camelize(prefix),
      String.capitalize(obj.name)
    ])
  end

  def schema_module_name(%__MODULE__{} = obj, prefix, :string) do
    Enum.join(
      [
        "Conduit",
        "Quickbooks",
        "Object",
        Macro.camelize(prefix),
        String.capitalize(obj.name)
      ],
      "."
    )
  end

  def internal_field_names_for_schema(%__MODULE__{} = obj) do
    obj.fields
    |> Enum.map(& &1.internal_field_name)
    |> Enum.map(&String.to_atom/1)
  end

  def intenral_required_field_names_for_schema(%__MODULE__{} = obj) do
    obj.fields
    |> Enum.filter(& &1.required)
    |> Enum.map(& &1.internal_field_name)
    |> Enum.map(&String.to_atom/1)
  end
end
