defmodule Conduit.QAD.Types.Date do
  @moduledoc """
  Custom Ecto type for handling QAD date strings in "mm/dd/yy" format.

  Converts between string format "mm/dd/yy" and Elixir Date structs.
  Years starting with 9 are interpreted as 1900s, all others as 2000s.

  Examples:
    "01/15/99" -> ~D[1999-01-15]
    "01/15/23" -> ~D[2023-01-15]
  """
  use Ecto.Type

  @impl true
  def type, do: :string

  @impl true
  def cast(%Date{} = date), do: {:ok, date}
  def cast(nil), do: {:ok, nil}

  def cast(date_string) when is_binary(date_string) do
    case parse_date(date_string) do
      {:ok, date} -> {:ok, date}
      :error -> :error
    end
  end

  def cast(_), do: :error

  @impl true
  def dump(%Date{} = date) do
    {:ok, date}
  end

  def dump(nil), do: {:ok, nil}
  def dump(_), do: :error

  @impl true
  def load(%Date{} = date) do
    {:ok, date}
  end

  def load(nil), do: {:ok, nil}
  def load(_), do: :error

  @doc """
  Parses a date string in "mm/dd/yy" format into a Date struct.

  ## Examples

      iex> parse_date("01/15/99")
      {:ok, ~D[1999-01-15]}
      
      iex> parse_date("01/15/23")
      {:ok, ~D[2023-01-15]}
      
      iex> parse_date("invalid")
      :error
  """
  def parse_date(<<month::binary-size(2), "/", day::binary-size(2), "/", year::binary-size(2)>>) do
    with {month, ""} <- Integer.parse(month),
         {day, ""} <- Integer.parse(day),
         {year_num, ""} <- Integer.parse(year),
         true <- month in 1..12 and day in 1..31 do
      full_year =
        case year_num do
          n when n >= 90 -> 1900 + n
          n -> 2000 + n
        end

      Date.new(full_year, month, day)
    else
      _ -> :error
    end
  end

  def parse_date(_), do: :error
end
