defmodule Conduit.Sage.XML do
  @derive Jason.Encoder
  defstruct [:name, :value, :attr, meta: false]

  @type t :: %__MODULE__{
          name: String.t(),
          value: t() | String.t(),
          attr: Keyword.t() | nil,
          meta: boolean()
        }

  @new_opts NimbleOptions.new!(
              name: [type: :string, required: true],
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
                   ]}
              ],
              attr: [type: :keyword_list]
            )
  @spec tag(opts :: Keyword.t()) :: t()
  def tag(opts \\ []) do
    opts = NimbleOptions.validate!(opts, @new_opts)

    string_tag =
      case opts[:name] do
        n when is_atom(n) -> Atom.to_string(n)
        n when is_binary(n) -> n
        _ -> raise ArgumentError, "name must be a string or atom"
      end

    %__MODULE__{
      name: string_tag,
      value: opts[:value],
      attr: if(opts[:attr], do: Map.new(opts[:attr]), else: %{})
    }
  end

  @meta_opts NimbleOptions.new!(
               name: [type: :string, required: true],
               value: [
                 type: {:or, [:string, {:struct, __MODULE__}]}
               ],
               attr: [type: :keyword_list]
             )
  def meta(opts \\ []) do
    NimbleOptions.validate!(opts, @meta_opts)
    %{tag(opts) | meta: true}
  end

  def attribute_string(nil), do: ""

  def attribute_string(attr) when is_list(attr) or is_map(attr) do
    for {k, v} <- attr, reduce: "" do
      acc ->
        acc <> " #{Atom.to_string(k)}=\"#{v}\""
    end
  end

  defimpl String.Chars, for: Conduit.Sage.XML do
    alias Conduit.Sage.XML, as: X

    def to_string(%X{name: name, value: value, attr: attr_list, meta: false} = _s) do
      case value do
        nil ->
          "<#{name}#{X.attribute_string(attr_list)} />"

        value when is_list(value) ->
          "<#{name}#{X.attribute_string(attr_list)}>#{Enum.map_join(value, "\n", &Kernel.to_string/1)}</#{name}>"

        value ->
          "<#{name}#{X.attribute_string(attr_list)}>#{Kernel.to_string(value)}</#{name}>"
      end
    end

    def to_string(%X{name: name, value: value, attr: attr_list, meta: true} = _s) do
      case value do
        nil ->
          "<?#{name}#{X.attribute_string(attr_list)}?>"

        val ->
          "<?#{name}#{X.attribute_string(attr_list)}?>#{Kernel.to_string(val)}"
      end
    end
  end
end
