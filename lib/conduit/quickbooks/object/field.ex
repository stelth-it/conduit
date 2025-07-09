defmodule Conduit.Quickbooks.Object.Field do
  use Ecto.Schema

  @moduledoc """
  Represents a field for a quickbooks object.
  """

  @type t :: %__MODULE__{
          schema_lines: list(String.t()),
          migration_lines: list(String.t()),
          extractor: list(map()),
          metadata: list(String.t()),
          field_name: String.t(),
          internal_field_name: String.t()
        }

  embedded_schema do
    field :schema_lines, {:array, :string}
    field :migration_lines, {:array, :string}
    field :extractor, {:array, :map}
    field :metadata, {:array, :string}
    field :internal_field_name, :string
    field :field_name, :string
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
          field_name :: String.t(),
          internal_field_name :: String.t()
        ) :: t()
  def from_scrape(type_label, field_name, additional_info \\ []) do
    internal_field_name = internal_field_name(field_name)

    base_struct =
      case {type_label, enum?(type_label)} do
        {_, true} ->
          string(field_name, internal_field_name)

        {"decimal", _} ->
          decimal(field_name, internal_field_name)

        {"string", _} ->
          if internal_field_name == "id" do
            id(field_name, internal_field_name)
          else
            string(field_name, internal_field_name)
          end

        {"currencyref", _} ->
          currencyref(field_name, internal_field_name)

        {"referencetype", _} ->
          reference(field_name, internal_field_name)

        {"boolean", _} ->
          boolean(field_name, internal_field_name)

        {"modificationmetadata", _} ->
          mod_date_time(field_name, internal_field_name)

        _ ->
          %__MODULE__{}
      end

    struct(
      base_struct,
      Keyword.merge(additional_info,
        field_name: field_name,
        internal_field_name: internal_field_name
      )
    )
  end

  def to_migration(%__MODULE__{migration_lines: lines}) do
    Enum.join(lines, "\n")
  end

  def to_schema(%__MODULE__{schema_lines: lines}) do
    Enum.join(lines, "\n")
  end

  def extract_fields(%__MODULE__{extractor: extractors}, input_map) do
    for {field_name, path} <- extractors, into: %{} do
      {field_name, get_in(input_map, path)}
    end
  end

  def decimal(field_name, internal_field_name) do
    %__MODULE__{
      schema_lines: [
        "field :#{internal_field_name}, :decimal"
      ],
      migration_lines: [
        "add :#{internal_field_name}, :decimal"
      ],
      extractor: [
        %{name: internal_field_name, path: [field_name]}
      ]
    }
  end

  def mod_date_time(field_name, _) do
    %__MODULE__{
      schema_lines: [
        "field :qb_inserted_at, :utc_datetime",
        "field :qb_updated_at, :utc_datetime"
      ],
      migration_lines: [
        "add :qb_inserted_at, :utc_datetime, comment: \"the time the record was created in QB\"",
        "add :qb_updated_at, :utc_datetime, comment: \"the time the record was last updated in QB\""
      ],
      extractor: [
        %{name: "qb_inserted_at", path: [field_name, "CreateTime"]},
        %{name: "qb_updated_at", path: [field_name, "LastUpdatedTime"]}
      ]
    }
  end

  def boolean(field_name, internal_field_name) do
    %__MODULE__{
      schema_lines: [
        "field :#{internal_field_name}, :boolean"
      ],
      migration_lines: [
        "add :#{internal_field_name}, :string"
      ],
      extractor: [
        %{name: internal_field_name, path: [field_name]}
      ]
    }
  end

  def reference(field_name, internal_field_name) do
    ref_table_name = drop_snake_suffix(internal_field_name)

    value_name = ref_table_name <> "_value"
    name_name = ref_table_name <> "_name"

    %__MODULE__{
      schema_lines: [
        "field :#{value_name}, :string",
        "field :#{name_name}, :string"
      ],
      migration_lines: [
        "add :#{name_name}, :string, comment: \"the human friendly #{ref_table_name} name.\"",
        "add :#{value_name}, :string, comment: \"the id of the associated #{ref_table_name} entry\""
      ],
      extractor: [
        %{name: name_name, path: [field_name, "name"]},
        %{name: value_name, path: [field_name, "value"]}
      ]
    }
  end

  def string(field_name, internal_field_name) do
    %__MODULE__{
      schema_lines: ["field :#{internal_field_name}, :string"],
      migration_lines: ["add :#{internal_field_name}, :string"],
      extractor: [
        %{name: internal_field_name, path: [field_name]}
      ]
    }
  end

  def id(field_name, internal_field_name) do
    %__MODULE__{
      schema_lines: ["field :#{internal_field_name}, :string, primary_key: true"],
      migration_lines: ["add :#{internal_field_name}, :string, primary_key: true"],
      extractor: [
        %{name: internal_field_name, path: [field_name]}
      ]
    }
  end

  def currencyref(field_name, internal_field_name) do
    %__MODULE__{
      schema_lines: ["field :currency_name, :string", "field :currency_value, :string"],
      migration_lines: [
        "add :currency_name, :string, comment: \"the human friendly currency name.\"",
        "add :currency_value, :string, comment: \"the id of the currency\""
      ],
      extractor: [
        %{name: "currency_name", path: [field_name, "name"]},
        %{name: "currency_value", path: [field_name, "value"]}
      ]
    }
  end

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
