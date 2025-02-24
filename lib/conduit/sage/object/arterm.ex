defmodule Elixir.Conduit.Sage.Object.Arterm do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "NAME DESCRIPTION STATUS RECORDNO WHENMODIFIED WHENCREATED MODIFIEDBY CREATEDBY DUEDATE DUEFROM DISCDATE DISCFROM DISCAMOUNT DISCPERCAMN DISCFUDGEDAYS PEN_TYPES PENAMOUNT PENPERCAMN PENFUDGEDAYS DISCCALCON RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "ARTERM" do
    field(:NAME, :string)

    field(:DESCRIPTION, :string)

    field(:STATUS, :string)

    field(:RECORDNO, :integer)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:MODIFIEDBY, :integer)

    field(:CREATEDBY, :integer)

    field(:DUEDATE, :integer)

    field(:DUEFROM, :string)

    field(:DISCDATE, :integer)

    field(:DISCFROM, :string)

    field(:DISCAMOUNT, :integer)

    field(:DISCPERCAMN, :string)

    field(:DISCFUDGEDAYS, :integer)

    field(:PEN_TYPES, :string)

    field(:PENAMOUNT, :integer)

    field(:PENPERCAMN, :string)

    field(:PENFUDGEDAYS, :integer)

    field(:DISCCALCON, :string)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARTERM")
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
      Elixir.Conduit.Sage.Object.Arterm.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arterm.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arterm.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arterm.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arterm.field_list(:strings)

    def table_name(_t), do: "ARTERM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
