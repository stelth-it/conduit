defmodule Mix.Tasks.Qad.Remove.Empty do
  @moduledoc """
  Removes empty QAD export files from priv directory.

  ## Usage

      mix qad.remove.empty

  This task does not accept any arguments.
  """
  use Mix.Task
  @requirements ["loadpaths"]

  @shortdoc "Removes empty QAD export files in priv directory"
  @impl Mix.Task
  def run(_args) do
    File.cd!("priv/qad_data/reports")

    for export_file <- File.ls!() do
      first_line =
        File.stream!(export_file)
        |> Enum.take(1)
        |> List.first()

      if String.trim(first_line) in [".", ""] do
        File.rm!(export_file)
        Mix.shell().info([:yellow, "#{export_file} was deleted"])
      end
    end
  end
end
