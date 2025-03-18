defmodule Conduit.QAD.Types.Bool do
  @moduledoc """
  Custom Ecto type for handling QAD boolean values stored as "Y" or "N" strings.

  Converts between string format ("Y"/"N") and Elixir boolean values (true/false).

  Examples:
    "Y" -> true
    "N" -> false
  """
  use Ecto.Type

  @type t :: boolean()

  @impl true
  def type, do: :string

  @impl true
  def cast(true), do: {:ok, true}
  def cast(false), do: {:ok, false}
  def cast(nil), do: {:ok, nil}

  def cast(value) when is_binary(value) do
    case value do
      "y" -> {:ok, true}
      "n" -> {:ok, false}
      "yes" -> {:ok, true}
      "no" -> {:ok, false}
      "0" -> {:ok, false}
      "1" -> {:ok, true}
      _ -> :error
    end
  end

  def cast(_), do: :error

  @impl true
  def dump(value) when is_boolean(value) or is_nil(value), do: {:ok, value}
  def dump(_), do: :error

  @impl true
  def load(value) when is_boolean(value) or is_nil(value), do: {:ok, value}
  def load(_), do: :error
end
