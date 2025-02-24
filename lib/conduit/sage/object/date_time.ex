defmodule Conduit.Sage.Object.DateTime do
  @moduledoc """
  The Sage API sends dates in the format: "MM/DD/YYYY HH:MM:SS"
  we need to convert this to an elixir naive date time.
  """
  use Ecto.Type

  @type t :: NaiveDateTime.t()

  def type, do: :naive_datetime

  def cast(date_string) when is_binary(date_string) do
    {:ok, to_naive_datetime(date_string)}
  end

  def cast(%NaiveDateTime{} = nd), do: {:ok, nd}
  def cast(_), do: :error

  # we should not be loading
  def load(%NaiveDateTime{} = nd), do: {:ok, nd}
  def load(_), do: :error

  def dump(%NaiveDateTime{} = nd), do: {:ok, nd}
  def dump(_), do: :error

  @reg ~r/(?<month>\d{2})\/(?<day>\d{2})\/(?<year>\d{4})\s(?<hour>\d{2}):(?<minute>\d{2}):(?<second>\d{2})/
  defp to_naive_datetime(date_string) do
    labelled_date =
      Regex.named_captures(@reg, date_string)
      |> Enum.map(fn {k, v} -> {String.to_atom(k), String.to_integer(v)} end)
      |> Map.new()

    NaiveDateTime.new!(
      labelled_date.year,
      labelled_date.month,
      labelled_date.day,
      labelled_date.hour,
      labelled_date.minute,
      labelled_date.second,
      0
    )
  end

  defp to_sage_time_string(%{
         day: day,
         month: month,
         year: year,
         hour: hour,
         minute: minute,
         second: second
       }) do
    "#{convert_and_pad(month)}/#{convert_and_pad(day)}/#{year} #{convert_and_pad(hour)}:#{convert_and_pad(minute)}:#{convert_and_pad(second)}"
  end

  defp convert_and_pad(int_input),
    do: int_input |> Integer.to_string() |> String.pad_leading(2, "0")

  def embed_as(:api), do: :dump
  def embed_as(_), do: :self
end
