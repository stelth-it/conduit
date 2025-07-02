defmodule Elixir.Conduit.Sage.Object.Aradvance do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY PRBATCH FINANCIALENTITY UNDEPOSITEDACCOUNTNO PAYMENTMETHOD PAYMENTMETHODKEY CUSTOMERID CUSTOMERNAME DOCNUMBER DESCRIPTION BASECURR CURRENCY RECEIPTDATE PAYMENTDATE EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE RECORDTYPE STATE TOTALENTERED TRX_TOTALENTERED TOTALSELECTED TRX_TOTALSELECTED TOTALPAID TRX_TOTALPAID TOTALDUE TRX_TOTALDUE AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RAWSTATE CLEARED CLRDATE SYSTEMGENERATED SUPDOCID CONTACTTAXGROUP SHIPTO.TAXGROUP.RECORDNO TAXSOLUTIONID LINKEDDOCID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARADVANCE" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:PRBATCH, :string)

    field(:FINANCIALENTITY, :string)

    field(:UNDEPOSITEDACCOUNTNO, :string)

    field(:PAYMENTMETHOD, :string)

    field(:PAYMENTMETHODKEY, :integer)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:DOCNUMBER, :string)

    field(:DESCRIPTION, :string)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:RECEIPTDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:RECORDTYPE, :string)

    field(:STATE, :string)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:RAWSTATE, :string)

    field(:ENTITY, :string)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:SYSTEMGENERATED, :string)

    field(:SUPDOCID, :string)

    field(:CONTACTTAXGROUP, :string)

    field(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

    field(:TAXSOLUTIONID, :string)

    field(:LINKEDDOCID, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARADVANCE")
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
      Elixir.Conduit.Sage.Object.Aradvance.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Aradvance.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Aradvance.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Aradvance.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Aradvance.field_list(:strings)

    def table_name(_t), do: "ARADVANCE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
