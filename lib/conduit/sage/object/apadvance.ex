defmodule Elixir.Conduit.Sage.Object.Apadvance do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY RECORDTYPE PAYMENTMETHOD PAYMENTMETHODKEY DESCRIPTION VENDORNAME VENDORID TOTALENTERED TOTALPAID TOTALSELECTED TOTALDUE STATE DOCNUMBER CLEARED CLRDATE SYSTEMGENERATED CURRENCY TRX_TOTALENTERED TRX_TOTALPAID TRX_TOTALSELECTED TRX_TOTALDUE BASECURR AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY FINANCIALENTITY ADVANCEDATE PAYMENTDATE EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE SUPDOCID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APADVANCE" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:PAYMENTMETHOD, :string)

    field(:PAYMENTMETHODKEY, :integer)

    field(:DESCRIPTION, :string)

    field(:VENDORNAME, :string)

    field(:VENDORID, :string)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:STATE, :string)

    field(:DOCNUMBER, :string)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:SYSTEMGENERATED, :string)

    field(:CURRENCY, :string)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:BASECURR, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:ENTITY, :string)

    field(:FINANCIALENTITY, :string)

    field(:ADVANCEDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:SUPDOCID, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APADVANCE")
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
      Elixir.Conduit.Sage.Object.Apadvance.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apadvance.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apadvance.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apadvance.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apadvance.field_list(:strings)

    def table_name(_t), do: "APADVANCE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
