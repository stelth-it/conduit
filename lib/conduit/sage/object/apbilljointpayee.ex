defmodule Elixir.Conduit.Sage.Object.Apbilljointpayee do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO JOINTPAYEENAME JOINTPAYEEPRINTAS APBILLKEY APBILLID WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APBILLJOINTPAYEE" do
    field(:RECORDNO, :string)

    field(:JOINTPAYEENAME, :string)

    field(:JOINTPAYEEPRINTAS, :string)

    field(:APBILLKEY, :integer)

    field(:APBILLID, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APBILLJOINTPAYEE")
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
      Elixir.Conduit.Sage.Object.Apbilljointpayee.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apbilljointpayee.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apbilljointpayee.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apbilljointpayee.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apbilljointpayee.field_list(:strings)

    def table_name(_t), do: "APBILLJOINTPAYEE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
