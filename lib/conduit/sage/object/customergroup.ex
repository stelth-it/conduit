defmodule Elixir.Conduit.Sage.Object.Customergroup do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO ID NAME DESCRIPTION GROUPTYPE WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "CUSTOMERGROUP" do
    field(:RECORDNO, :integer)

    field(:ID, :string)

    field(:NAME, :string)

    field(:DESCRIPTION, :string)

    field(:GROUPTYPE, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "CUSTOMERGROUP")
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
      Elixir.Conduit.Sage.Object.Customergroup.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Customergroup.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Customergroup.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Customergroup.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Customergroup.field_list(:strings)

    def table_name(_t), do: "CUSTOMERGROUP"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
