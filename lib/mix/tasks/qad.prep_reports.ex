defmodule Mix.Tasks.Qad.PrepReports do
  use Mix.Task

  @requirements ["loadpaths"]

  @impl Mix.Task
  def run(_args) do
    Mix.shell().info([:yellow, "Hold on to your butts. This is a long running task."])
    File.cd!("priv/qad_data/reports")

    files =
      File.ls!()

    files
    |> Enum.map(fn file ->
      Task.async(fn ->
        # remove last 12 lines
        new_content =
          file
          |> File.stream!()
          |> Enum.reverse()
          |> Enum.drop(12)
          |> Enum.reverse()
          ## use the ascii unit seperator character.  Very unlikely they use this in their export.
          |> Enum.map(&replace_space_delimiters(&1, <<0x1F>>))

        File.write!("#{file}.prepped", new_content)
      end)
    end)
    |> Task.await_many(:infinity)
  end

  def replace_space_delimiters(line, replacement_character) do
    line
    |> String.split("")
    |> Enum.map_reduce(:outside, fn
      "\"" = quote, :outside ->
        {quote, :inside}

      "\"" = quote, :inside ->
        {quote, :outside}

      " ", :outside ->
        {replacement_character, :outside}

      char, in? ->
        {char, in?}
    end)
    |> elem(0)
    |> Enum.join("")
  end
end
