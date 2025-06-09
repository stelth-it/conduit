defmodule Conduit.Sage.XML do
  @moduledoc """
  Simple representation of XML. Mainly 
  saves us from having to do the bookkeeping
  of closing tags and inputting attributes properly.
  """
  @derive Jason.Encoder
  defstruct [:name, :value, :attr, meta: false]

  @type t :: %__MODULE__{
          name: String.t(),
          value: t() | String.t(),
          attr: Keyword.t() | nil,
          meta: boolean()
        }

  @doc """
  Validates whether input is atom or binary and returns binary.
  """
  @spec string_or_atom(input :: String.t() | atom()) ::
          {:ok, value :: String.t()} | {:error, message :: String.t()}
  def string_or_atom(value) when is_atom(value), do: {:ok, Atom.to_string(value)}
  def string_or_atom(value) when is_binary(value), do: {:ok, value}

  def string_or_atom(value),
    do: {:error, "expected atom or string, received: #{inspect(value)}"}

  @tag_opts NimbleOptions.new!(
              name: [
                type: {:custom, __MODULE__, :string_or_atom, []},
                type_doc: "`atom()` | `String.t()`",
                doc: "the name of the XML node."
              ],
              value: [
                type:
                  {:or,
                   [
                     :string,
                     {:struct, __MODULE__},
                     {:list,
                      {:or,
                       [
                         :string,
                         {:struct, __MODULE__}
                       ]}}
                   ]},
                doc:
                  "the value stored in the node, can be a string, an XML struct, or a list of either type."
              ],
              attr: [
                type: :keyword_list,
                default: [],
                doc: "the attributes associated with the node"
              ]
            )

  @doc """
  Creates a new XML node.

  ## Options
  #{NimbleOptions.docs(@tag_opts)}
  """
  @spec tag(opts :: Keyword.t()) :: t()
  def tag(opts \\ []) do
    opts
    |> NimbleOptions.validate!(@tag_opts)
    |> Keyword.update!(:attr, &Map.new/1)
    |> then(&struct!(__MODULE__, &1))
  end

  @doc """
  Creates a meta XML tag. Equivalent to 
  calling `tag/2` with `:meta` set to `true`.

  Note that meta tags cannot contain values.
  """
  def meta(opts \\ []) do
    NimbleOptions.validate!(opts, @tag_opts)
    if opts[:value], do: raise(ArgumentError, "meta tags cannot have values!")
    %{tag(opts) | meta: true}
  end

  defimpl String.Chars, for: Conduit.Sage.XML do
    alias Conduit.Sage.XML, as: X

    defp attribute_string(nil), do: ""

    defp attribute_string(attr) when is_list(attr) or is_map(attr) do
      for {k, v} <- attr, reduce: "" do
        acc ->
          acc <> " #{Atom.to_string(k)}=\"#{v}\""
      end
    end

    def to_string(%X{name: name, value: value, attr: attr_list, meta: false} = _s) do
      case value do
        nil ->
          "<#{name}#{attribute_string(attr_list)} />"

        value when is_list(value) ->
          "<#{name}#{attribute_string(attr_list)}>#{Enum.map_join(value, "\n", &Kernel.to_string/1)}</#{name}>"

        value ->
          "<#{name}#{attribute_string(attr_list)}>#{Kernel.to_string(value)}</#{name}>"
      end
    end

    def to_string(%X{name: name, value: value, attr: attr_list, meta: true} = _s) do
      case value do
        nil ->
          "<?#{name}#{attribute_string(attr_list)}?>"

        val ->
          "<?#{name}#{attribute_string(attr_list)}?>#{Kernel.to_string(val)}"
      end
    end
  end
end
