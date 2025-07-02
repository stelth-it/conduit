defmodule Elixir.Conduit.Sage.Object.Customervisibility do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO CUSTOMERID NAME VISIBILITY MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "CUSTOMERVISIBILITY" do
    field(:RECORDNO, :integer)

    field(:CUSTOMERID, :string)

    field(:NAME, :string)

    field(:VISIBILITY, :string)

    field(:MEGAENTITYKEY, :integer)

    field(:MEGAENTITYID, :string)

    field(:MEGAENTITYNAME, :string)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "CUSTOMERVISIBILITY")
  end

  def struct_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
    |> apply_action!(:received)
  end

  def cast_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
  end

  def field_list(:atoms) do
    @field_names
    |> Enum.map(fn d ->
      d
      |> String.downcase()
      |> String.to_atom()
    end)
  end

  def field_list(:strings) do
    @field_names
  end

  defimpl Conduit.Sage.Object.Queryable, for: __MODULE__ do
    def struct_from_api(t, params) do
      Elixir.Conduit.Sage.Object.Customervisibility.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Customervisibility.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Customervisibility.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Customervisibility.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Customervisibility.field_list(:strings)

    def table_name(_t), do: "CUSTOMERVISIBILITY"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
