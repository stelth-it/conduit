defmodule Elixir.Conduit.Sage.Object.Appostedadvance do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY RECORDTYPE STATE ENTITY VENDORID VENDORNAME DOCUMENTNUMBER MEMO DESCRIPTION2 WHENCREATED PAYMENTTYPE PAYMENTDATE BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE PAYMENTAMOUNT TOTALSELECTED TOTALPAID TOTALDUE PAYMENTTRXAMOUNT TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE PRBATCH PARENTPAYMENTKEY AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY FINANCIALACCOUNT MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APPOSTEDADVANCE" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:STATE, :string)

    field(:ENTITY, :string)

    field(:VENDORID, :string)

    field(:VENDORNAME, :string)

    field(:DOCUMENTNUMBER, :string)

    field(:MEMO, :string)

    field(:DESCRIPTION2, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:PAYMENTTYPE, :string)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:PAYMENTTRXAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:PRBATCH, :string)

    field(:PARENTPAYMENTKEY, :integer)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:FINANCIALACCOUNT, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APPOSTEDADVANCE")
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
      Elixir.Conduit.Sage.Object.Appostedadvance.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Appostedadvance.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Appostedadvance.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Appostedadvance.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Appostedadvance.field_list(:strings)

    def table_name(_t), do: "APPOSTEDADVANCE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
