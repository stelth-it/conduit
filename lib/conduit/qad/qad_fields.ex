defmodule Conduit.QAD.QadFields do
  import Conduit.QAD.QadFields.QadField

  @doc """
  Given a list of fields will reutrn a list of field names
  with field names with mult value duplicated mult times.
  """
  def explode(field_list) when is_list(field_list) do
    Enum.flat_map(field_list, fn
      %{mult: nil} = field ->
        [field.field_name]

      %{mult: n} = field when is_integer(n) ->
        List.duplicate(field.field_name, n)
    end)
  end

  @doc """
  Given a list of fields will create a markdown table
  describing each one.
  """
  def create_markdown_table(field_list) do
    [markdown_table_header() | Enum.map(field_list, &markdown_table_entry/1)]
    |> Enum.join("\n")
  end

  @doc """
  Creates a markdown table describing all field types.
  The source DB is progress and it has weird types 
  that might trip up an LLM.
  """
  def field_description_markdown_table() do
    translations = %{
      "char" => "string",
      "date" => "date",
      "deci-10" => "decimal",
      "inte" => "integer",
      "logi" => "boolean",
      "deci-0" => "decimal",
      "raw" => "binary",
      "int6" => "integer",
      "deci-4" => "decimal",
      "deci-2" => "decimal"
    }

    [
      "| type name | equivalent type |\n| -- | -- |"
      | Enum.map(translations, &create_type_entry/1)
    ]
    |> Enum.join("\n")
  end

  defp create_type_entry({type, translation}) do
    "| #{type} | #{translation} |"
  end
end
