defmodule Conduit.QAD.Types.Date do
  use Ecto.Type

  @impl true
  def type, do: :naive_datetime

  @impl true
  def cast(%NaiveDateTime{} = date), do: {:ok, date}
  def cast(nil), do: {:ok, nil}

  def cast(date_string) when is_binary(date_string) do
    case parse_date(date_string) do
      {:ok, date} -> {:ok, date}
      :error -> :error
    end
  end

  def cast(_), do: :error

  @impl true
  def dump(%NaiveDateTime{} = date) do
    {:ok, date}
  end

  def dump(nil), do: {:ok, nil}
  def dump(_), do: :error

  @impl true
  def load(%NaiveDateTime{} = date) do
    {:ok, date}
  end

  def load(nil), do: {:ok, nil}
  def load(_), do: :error

  @doc """
  Parses a date string in "mm/dd/yy" or "mm/dd/yyyy" format into a NaiveDateTime struct.
  Time is set to midnight (00:00:00).



  ## Examples

      iex> parse_date("01/15/99")
      {:ok, ~N[1999-01-15 00:00:00]}
      
      iex> parse_date("01/15/23")
      {:ok, ~N[2023-01-15 00:00:00]}

      iex> parse_date("01/15/2023")
      {:ok, ~N[2023-01-15 00:00:00]}
      
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

      case NaiveDateTime.new(full_year, month, day, 0, 0, 0) do
        {:ok, datetime} -> {:ok, datetime}
        {:error, _} -> :error
      end
    else
      _ -> :error
    end
  end

  def parse_date(<<month::binary-size(2), "/", day::binary-size(2), "/", year::binary-size(4)>>) do
    with {month, ""} <- Integer.parse(month),
         {day, ""} <- Integer.parse(day),
         {year, ""} <- Integer.parse(year),
         true <- month in 1..12 and day in 1..31 do
      case NaiveDateTime.new(year, month, day, 0, 0, 0) do
        {:ok, datetime} -> {:ok, datetime}
        {:error, _} -> :error
      end
    else
      _ -> :error
    end
  end

  def parse_date(_), do: :error
end
