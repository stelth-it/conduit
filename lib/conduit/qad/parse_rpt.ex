defmodule Conduit.QAD.ParseRpt do
  alias Conduit.QAD.{QadField, QadTable, FieldDetail}

  @moduledoc """
  Module for parsingn the qad.rpt report to extract 
  information on tables and fields
  """

  @line_patterns [
    {~r/(?<table_name>\w+)\s+(?<table_flags>[fs])\s+(?<field_count>\d+)\s+(?<index_count>\d+).*/,
     :table_meta},
    {~r/^\s*(?<order>\d+) (?<field_name>[a-z0-9_]+)\s+(?<field_type>[a-z0-9-]+).*/,
     :field_description},
    {~r/\*\* Field Name: (?<field_name>[a-z0-9_]+)\s+Description: (?<description>.*)/,
     :field_detail}
  ]

  def build_summary(file_path) do
    File.stream!(file_path)
    |> Stream.map(&String.trim_trailing/1)
    |> chunk_descripitons()
    |> Stream.map(&Enum.join(&1, ""))
    |> Stream.flat_map(fn line ->
      transform_line(line)
    end)
    |> Enum.reduce(
      {[], nil},
      fn
        %QadTable{} = entry, {[], nil} ->
          {[], entry}

        %QadTable{} = entry, {structs, struct} ->
          {[QadTable.reverse_fields(struct) | structs], entry}

        %QadField{} = entry, {tables, current_table} ->
          {tables, QadTable.add_field!(current_table, entry)}

        %FieldDetail{field_name: fname} = entry, {tables, current_table} ->
          updated_fields =
            Enum.map(current_table.fields, fn
              %{field_name: ^fname} = field ->
                QadField.put_description(field, entry.description)

              f ->
                f
            end)

          {tables, %{current_table | fields: updated_fields}}
      end
    )
    |> elem(0)
  end

  @spec transform_line(line :: String.t()) :: list(String.t()) | []
  def transform_line(line) do
    Enum.reduce_while(@line_patterns, [], fn {pattern, action}, acc ->
      if captured = Regex.named_captures(pattern, line) do
        {:halt, [apply(__MODULE__, action, [captured])]}
      else
        {:cont, acc}
      end
    end)
  end

  def chunk_descripitons(stream) do
    stream
    |> Stream.chunk_while(
      {false, []},
      fn
        e, {true, acc} ->
          {:cont, Enum.reverse([e | acc]), {false, []}}

        e, {false, []} ->
          if e =~ ~r/\*\* Field Name:/ do
            {:cont, {true, [e]}}
          else
            {:cont, [e], {false, []}}
          end
      end,
      fn _ -> {:cont, []} end
    )
  end

  def field_detail(info), do: FieldDetail.new!(info)
  def field_description(info), do: QadField.new!(info)

  def table_meta(info), do: QadTable.new!(info)
end
