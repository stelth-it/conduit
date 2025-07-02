defmodule Elixir.Conduit.Sage.Object.Arreleaseablerecord do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RETAINAGEINVOICEITEMKEY RETAINAGEINVOICEKEY LINE_NO AMOUNT TRX_AMOUNT AMOUNTRETAINED TRX_AMOUNTRETAINED TRX_TOTALRELEASED TRX_AMOUNTREMAINING CUSTOMERID DOCDATE DOCENTRYKEY DOCNO DOCID DOCKEY SOURCEDOCUMENTID DEPARTMENTKEY DEPARTMENTID DEPARTMENT LOCATIONID LOCATION MEMO PROJECTCONTRACTID PROJECTCONTRACTKEY PROJECTCONTRACTLINEID PROJECTCONTRACTLINEKEY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARRELEASEABLERECORD" do
    field(:RECORDNO, :integer)

    field(:RETAINAGEINVOICEITEMKEY, :string)

    field(:RETAINAGEINVOICEKEY, :integer)

    field(:LINE_NO, :string)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRELEASED, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTREMAINING, Conduit.Sage.Object.Float)

    field(:CUSTOMERID, :string)

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

    field(:PROJECTCONTRACTID, :string)

    field(:PROJECTCONTRACTKEY, :integer)

    field(:PROJECTCONTRACTLINEID, :string)

    field(:PROJECTCONTRACTLINEKEY, :integer)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARRELEASEABLERECORD")
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
      Elixir.Conduit.Sage.Object.Arreleaseablerecord.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arreleaseablerecord.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arreleaseablerecord.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arreleaseablerecord.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arreleaseablerecord.field_list(:strings)

    def table_name(_t), do: "ARRELEASEABLERECORD"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
