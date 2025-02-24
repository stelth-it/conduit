defmodule Elixir.Conduit.Sage.Object.Arpostedoverpayment do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY RECORDTYPE STATE ENTITY CUSTOMERID CUSTOMERNAME DOCUMENTNUMBER MEMO DESCRIPTION2 WHENCREATED PAYMENTTYPE PAYMENTDATE CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE PAYMENTAMOUNT TOTALSELECTED TOTALPAID TOTALDUE TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE PARENTPAYMENTKEY AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY FINANCIALACCOUNT BATCHTITLE POSTINGDATE RECEIPTDATE CLEARED CLRDATE MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "ARPOSTEDOVERPAYMENT" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:STATE, :string)

    field(:ENTITY, :string)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:DOCUMENTNUMBER, :string)

    field(:MEMO, :string)

    field(:DESCRIPTION2, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:PAYMENTTYPE, :string)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:CURRENCY, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:PARENTPAYMENTKEY, :integer)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:FINANCIALACCOUNT, :string)

    field(:BATCHTITLE, :string)

    field(:POSTINGDATE, Conduit.Sage.Object.Date)

    field(:RECEIPTDATE, Conduit.Sage.Object.Date)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:MEGAENTITYKEY, :integer)

    field(:MEGAENTITYID, :string)

    field(:MEGAENTITYNAME, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARPOSTEDOVERPAYMENT")
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
      Elixir.Conduit.Sage.Object.Arpostedoverpayment.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arpostedoverpayment.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arpostedoverpayment.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arpostedoverpayment.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arpostedoverpayment.field_list(:strings)

    def table_name(_t), do: "ARPOSTEDOVERPAYMENT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
