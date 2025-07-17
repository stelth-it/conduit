defmodule Conduit.Quickbooks.Object.Field do
  use Ecto.Schema

  @moduledoc """
  Represents a field for a quickbooks object.
  """

  @type t :: %__MODULE__{
          schema_line: String.t(),
          migration_line: String.t(),
          extractor: map(),
          metadata: list(String.t()),
          field_name: String.t(),
          internal_field_name: String.t(),
          required: boolean()
        }

  embedded_schema do
    field :schema_line, :string
    field :migration_line, :string
    field :extractor, :map
    field :metadata, {:array, :string}
    field :internal_field_name, :string
    field :field_name, :string
    field :required, :boolean, default: false
  end

  @doc """
  Given the type_label, field_name, and internal_field_name will
  create a field struct.

  The type label must be the lowercase string present in scraped data
  that specifies the QB 'type' of the data.  Reference fields are flattened
  into columns within the parent table.

  ## Arguments
  - type_label: lower case type from api docs.
  - field_name: the field name of used in API responses and docs
  - additional_info (optional): any additional attributes that should be set on the field, only valid struct fields will be merged.
  """
  @spec from_scrape(
          type_label :: String.t(),
          field_name :: String.t()
        ) :: list(t())
  def from_scrape(type_label, field_name, additional_info \\ []) do
    base_structs =
      case %{
        label: type_label,
        enum: enum?(type_label),
        id: id?(field_name),
        array: array?(field_name)
      } do
        %{array: true} ->
          array(strip_array(field_name), field_name |> strip_array() |> internal_field_name())

        %{enum: true} ->
          string(field_name, internal_field_name(field_name))

        %{label: "string", id: true} ->
          id(field_name, internal_field_name(field_name))

        %{label: curr_ref} when curr_ref in ["currencyref", "currencyreftype"] ->
          currencyref(field_name, internal_field_name(field_name))

        %{label: dec_type} when dec_type in ["decimal", "bigdecimal"] ->
          decimal(field_name, internal_field_name(field_name))

        %{label: "string"} ->
          string(field_name, internal_field_name(field_name))

        %{label: "line"} ->
          currencyref(field_name, internal_field_name(field_name))

        %{label: "referencetype"} ->
          reference(field_name, internal_field_name(field_name))

        %{label: "boolean"} ->
          boolean(field_name, internal_field_name(field_name))

        %{label: "modificationmetadata"} ->
          mod_date_time(field_name, internal_field_name(field_name))

        _ ->
          []
      end

    base_structs
    |> Enum.map(&struct(&1, additional_info))
  end

  def to_migration(%__MODULE__{migration_line: line}) do
    line
  end

  def to_schema(%__MODULE__{schema_line: line}) do
    line
  end

  @doc """
  Given a field and a map representing api response content
  will extract the field from the content
  """
  @spec extract_field(field :: t(), input_map :: map()) ::
          {name :: String.t(), value :: term()}
  def extract_field(%__MODULE__{extractor: %{"name" => name, "path" => path}}, input_map) do
    {name, get_in(input_map, path)}
  end

  def array(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :#{internal_field_name}, {:array, :map}",
        migration_line: "add :#{internal_field_name}, {:array, :map}",
        extractor: %{"name" => internal_field_name, "path" => [field_name]},
        internal_field_name: internal_field_name,
        field_name: field_name
      }
    ]
  end

  def decimal(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :#{internal_field_name}, :decimal",
        migration_line: "add :#{internal_field_name}, :decimal",
        extractor: %{"name" => internal_field_name, "path" => [field_name]},
        internal_field_name: internal_field_name,
        field_name: field_name
      }
    ]
  end

  def mod_date_time(field_name, _) do
    [
      %__MODULE__{
        schema_line: "field :qb_updated_at, :utc_datetime",
        migration_line:
          "add :qb_updated_at, :utc_datetime, comment: \"the time the record was last updated in QB\"",
        extractor: %{"name" => "qb_updated_at", "path" => [field_name, "LastUpdatedTime"]},
        internal_field_name: "qb_updated_at",
        field_name: field_name
      },
      %__MODULE__{
        schema_line: "field :qb_inserted_at, :utc_datetime",
        migration_line:
          "add :qb_inserted_at, :utc_datetime, comment: \"the time the record was created in QB\"",
        extractor: %{"name" => "qb_inserted_at", "path" => [field_name, "CreateTime"]},
        internal_field_name: "qb_inserted_at",
        field_name: field_name
      }
    ]
  end

  def boolean(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :#{internal_field_name}, :boolean",
        migration_line: "add :#{internal_field_name}, :boolean",
        extractor: %{"name" => internal_field_name, "path" => [field_name]},
        internal_field_name: internal_field_name,
        field_name: field_name
      }
    ]
  end

  def reference(field_name, internal_field_name) do
    ref_table_name = drop_snake_suffix(internal_field_name)

    value_name = ref_table_name <> "_value"
    name_name = ref_table_name <> "_name"

    [
      %__MODULE__{
        schema_line: "field :#{name_name}, :string",
        migration_line:
          "add :#{name_name}, :string, comment: \"the human friendly #{ref_table_name} name.\"",
        extractor: %{"name" => name_name, "path" => [field_name, "name"]},
        internal_field_name: name_name,
        field_name: field_name
      },
      %__MODULE__{
        schema_line: "field :#{value_name}, :string",
        migration_line:
          "add :#{value_name}, :string, comment: \"the id of the associated #{ref_table_name} entry\"",
        extractor: %{"name" => value_name, "path" => [field_name, "value"]},
        internal_field_name: value_name,
        field_name: field_name
      }
    ]
  end

  def string(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :#{internal_field_name}, :string",
        migration_line: "add :#{internal_field_name}, :string",
        extractor: %{"name" => internal_field_name, "path" => [field_name]},
        internal_field_name: internal_field_name,
        field_name: field_name
      }
    ]
  end

  def id(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :#{internal_field_name}, :string, primary_key: true",
        migration_line: "add :#{internal_field_name}, :string, primary_key: true",
        extractor: %{"name" => internal_field_name, "path" => [field_name]},
        internal_field_name: internal_field_name,
        required: true,
        field_name: field_name
      }
    ]
  end

  def currencyref(field_name, internal_field_name) do
    [
      %__MODULE__{
        schema_line: "field :currency_name, :string",
        migration_line:
          "add :currency_name, :string, comment: \"the human friendly currency name.\"",
        extractor: %{"name" => "currency_name", "path" => [field_name, "name"]},
        internal_field_name: "currency_name",
        field_name: field_name
      },
      %__MODULE__{
        schema_line: "field :currency_value, :string",
        migration_line: "add :currency_value, :string, comment: \"the id of the currency\"",
        extractor: %{"name" => "currency_value", "path" => [field_name, "value"]},
        internal_field_name: "currency_value",
        field_name: field_name
      }
    ]
  end

  # strip the array suffix from array label
  defp strip_array(label) do
    String.replace(label, ~r/ \[0..n\]/, "")
  end

  # array field names have a specific suffix
  defp array?(field_name) do
    field_name =~ ~r/.* \[0\.\.n\]/
  end

  # returns true if the field name is an id
  defp id?("Id"), do: true
  defp id?(_), do: false

  defp internal_field_name(field_name), do: Macro.underscore(field_name)

  # true if the field ends with enum
  defp enum?(type_label) do
    type_label =~ ~r/.*enum$/
  end

  defp drop_snake_suffix(snake_field_name_string) do
    # cuts of the tale of the snake, e.g. hello_there -> hello
    String.replace(snake_field_name_string, ~r/_.[^_]*$/, "")
  end
end
