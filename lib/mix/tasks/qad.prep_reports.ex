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
          ## comma is fine, all strings are wrapped in quotes anyway
          |> Enum.map(&replace_space_delimiters(&1, ","))

        File.write!("#{file}.prepped", new_content)
      end)
    end)
    |> Task.await_many(:infinity)

    for file_path <- files_with_bad_utf8_non_break_space() do
      fix_bad_non_break_space(file_path) |> File.write!(file_path)
    end
  end

  @doc """
  'fixes' invalid non breaking space characters by throwing them away.
  """
  def fix_bad_non_break_space(file_path) do
    File.stream!(file_path)
    |> Stream.map(fn bin ->
      for <<c::8 <- bin>>, c != 160, into: "", do: <<c>>
    end)
    |> Enum.join("")
  end

  @doc """
  We know that these files have invalid non breaking space characters 
  that must be removed. 

  It appears that the data was exported in the latin-1 character set 
  and the non breaking space code in that encoding OxA0 is not valid 
  utf-8
  """
  def files_with_bad_utf8_non_break_space() do
    [
      "bcd_det.d.prepped",
      "cr_mstr.d.prepped"
    ]
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
