defmodule Conduit.QAD.TableParse do
  alias Conduit.QAD.QadTable

  NimbleCSV.define(CSVParser, seperator: <<0x1F>>)

  def parse_csv(%QadTable{} = table) do
    table
    |> QadTable.report_file_location()
    |> File.stream!()
    |> CSVParser.parse_stream(skip_headers: false)
    |> Stream.map(fn values ->
      Enum.zip(QadTable.list_field_names(table), values)
    end)
    |> Enum.to_list()
  end
end
