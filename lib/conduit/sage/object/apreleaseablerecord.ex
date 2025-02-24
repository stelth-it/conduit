defmodule Elixir.Conduit.Sage.Object.Apreleaseablerecord do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO RETAINAGEBILLITEMKEY RETAINAGEBILLKEY LINE_NO AMOUNT TRX_AMOUNT AMOUNTRETAINED TRX_AMOUNTRETAINED TRX_TOTALRELEASED TRX_AMOUNTREMAINING VENDORID DOCDATE DOCENTRYKEY DOCNO DOCID DOCKEY SOURCEDOCUMENTID DEPARTMENTKEY DEPARTMENTID DEPARTMENT LOCATIONID LOCATION MEMO PRIMARYDOCKEY PRIMARYDOCLINEKEY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APRELEASEABLERECORD" do
    field(:RECORDNO, :integer)

    field(:RETAINAGEBILLITEMKEY, :string)

    field(:RETAINAGEBILLKEY, :integer)

    field(:LINE_NO, :string)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRELEASED, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTREMAINING, Conduit.Sage.Object.Float)

    field(:VENDORID, :string)

    field(:DOCDATE, Conduit.Sage.Object.Date)

    field(:DOCENTRYKEY, :integer)

    field(:DOCNO, :string)

    field(:DOCID, :string)

    field(:DOCKEY, :integer)

    field(:SOURCEDOCUMENTID, :string)

    field(:DEPARTMENTKEY, :string)

    field(:DEPARTMENTID, :string)

    field(:DEPARTMENT, :string)

    field(:LOCATIONID, :string)

    field(:LOCATION, :string)

    field(:MEMO, :string)

    field(:PRIMARYDOCKEY, :integer)

    field(:PRIMARYDOCLINEKEY, :integer)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APRELEASEABLERECORD")
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
      Elixir.Conduit.Sage.Object.Apreleaseablerecord.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apreleaseablerecord.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apreleaseablerecord.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apreleaseablerecord.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apreleaseablerecord.field_list(:strings)

    def table_name(_t), do: "APRELEASEABLERECORD"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
