defmodule Elixir.Conduit.Sage.Object.Apbillbatch do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO TITLE CREATED STATUS RECORDTYPE TOTAL OPEN PARENTKEY NOGL ACCOUNTNOKEY AUTOCREATED SYSTEMGENERATED WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APBILLBATCH" do
    field(:RECORDNO, :string)

    field(:TITLE, :string)

    field(:CREATED, Conduit.Sage.Object.Date)

    field(:STATUS, :string)

    field(:RECORDTYPE, :string)

    field(:TOTAL, Conduit.Sage.Object.Float)

    field(:OPEN, :string)

    field(:PARENTKEY, :string)

    field(:NOGL, :boolean)

    field(:ACCOUNTNOKEY, :string)

    field(:AUTOCREATED, :string)

    field(:SYSTEMGENERATED, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APBILLBATCH")
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
      Elixir.Conduit.Sage.Object.Apbillbatch.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apbillbatch.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apbillbatch.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apbillbatch.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apbillbatch.field_list(:strings)

    def table_name(_t), do: "APBILLBATCH"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
