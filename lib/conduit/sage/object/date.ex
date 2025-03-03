defmodule Conduit.Sage.Object.Date do
  use Ecto.Type

  @type t :: NaiveDateTime.t()
  def type, do: :naive_datetime

  def cast(%NaiveDateTime{} = date), do: {:ok, date}

  def cast(<<month::binary-size(2), "/", day::binary-size(2), "/", year::binary-size(4)>>) do
    with {month, _} <- Integer.parse(month),
         {day, _} <- Integer.parse(day),
         {year, _} <- Integer.parse(year),
         {:ok, naive} <- NaiveDateTime.new(year, month, day, 0, 0, 0) do
      {:ok, naive}
    else
      _ -> :error
    end
  end

  def cast(_), do: :error

  def load(%NaiveDateTime{} = date), do: {:ok, date}
  def load(nil), do: {:ok, nil}
  def load(_), do: :error

  def dump(%NaiveDateTime{} = date), do: {:ok, date}
  def dump(nil), do: {:ok, nil}
  def dump(_), do: :error

  def equal?(date1, date2), do: date1 == date2
end
