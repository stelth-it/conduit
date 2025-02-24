defmodule Elixir.Conduit.Sage.Object.Customerrefund do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY PRBATCH RECORDTYPE FINANCIALENTITY STATE RAWSTATE PAYMENTMETHODKEY PAYMENTMETHOD CUSTOMERKEY CUSTOMERID CUSTOMERNAME ENTITY BILLTOPAYTONAME BILLTOPAYTOKEY RECORDID DOCNUMBER DESCRIPTION REFUNDDATE WHENPAID BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE TOTALENTERED AMOUNTTOREFUND TOTALPAID TOTALDUE TOTALSELECTED TRX_TOTALENTERED TRX_TOTALPAID TRX_TOTALDUE TRX_TOTALSELECTED CLEARED CLRDATE SUPDOCID AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "CUSTOMERREFUND" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:PRBATCH, :string)

    field(:RECORDTYPE, :string)

    field(:FINANCIALENTITY, :string)

    field(:STATE, :string)

    field(:RAWSTATE, :string)

    field(:PAYMENTMETHODKEY, :integer)

    field(:PAYMENTMETHOD, :string)

    field(:CUSTOMERKEY, :integer)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:ENTITY, :string)

    field(:BILLTOPAYTONAME, :string)

    field(:BILLTOPAYTOKEY, :integer)

    field(:RECORDID, :string)

    field(:DOCNUMBER, :string)

    field(:DESCRIPTION, :string)

    field(:REFUNDDATE, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:AMOUNTTOREFUND, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:SUPDOCID, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "CUSTOMERREFUND")
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
      Elixir.Conduit.Sage.Object.Customerrefund.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Customerrefund.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Customerrefund.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Customerrefund.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Customerrefund.field_list(:strings)

    def table_name(_t), do: "CUSTOMERREFUND"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
