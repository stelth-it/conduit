defmodule Conduit.Sage.Object.Float do
  use Ecto.Type

  def type, do: :float

  # Handle existing float values
  def cast(float) when is_float(float), do: {:ok, float}

  # handle floats missing a leading zero
  def cast(<<".", _rest::binary>> = str) do
    case Float.parse("0#{str}") do
      {float, ""} -> {:ok, float}
      _ -> :error
    end
  end

  def cast(<<"-.", fraction::binary>> = _str) do
    case Float.parse("-0.#{fraction}") do
      {float, ""} -> {:ok, float}
      _ -> :error
    end
  end

  # handle normal floats
  def cast(binary) when is_binary(binary) do
    case Float.parse(binary) do
      {float, ""} -> {:ok, float}
      _ -> :error
    end
  end

  def cast(_), do: :error

  # Database -> Elixir
  def load(float) when is_float(float), do: {:ok, float}
  def load(_), do: :error

  # Elixir -> Database
  def dump(float) when is_float(float), do: {:ok, float}
  def dump(_), do: :error

  def equal?(float1, float2), do: float1 == float2
end
