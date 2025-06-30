defmodule Conduit.Quickbooks.FieldTranslations do
  defstruct [:schema_lines, :migration_lines, :extractor, :ecto_type]

  @type t :: %__MODULE__{
          schema_lines: list(String.t()),
          migration_lines: list(String.t()),
          extractor: list((map() -> term())),
          ecto_type: atom()
        }
  def string(field_name, key_name) do
    %__MODULE__{
      ecto_type: :string,
      schema_lines: ["field #{inspect(field_name)}, :string"],
      migration_lines: ["add #{inspect(field_name)}, :string"],
      extractor: [
        fn map ->
          {field_name, map[key_name]}
        end
      ]
    }
  end
end
