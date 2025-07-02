defmodule Elixir.Conduit.Sage.Object.Arpymtdetail do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDKEY POSADJKEY POSADJENTRYKEY INLINEKEY INLINEENTRYKEY INLINEAMOUNT TRX_INLINEAMOUNT ADVANCEKEY ADVANCEENTRYKEY POSTEDADVANCEKEY POSTEDADVANCEENTRYKEY POSTEDADVANCEAMOUNT TRX_POSTEDADVANCEAMOUNT OVERPAYMENTKEY OVERPAYMENTENTRYKEY POSTEDOVERPAYMENTKEY POSTEDOVERPAYMENTENTRYKEY POSTEDOVERPAYMENTAMOUNT TRX_POSTEDOVERPAYMENTAMOUNT NEGATIVEINVOICEKEY NEGATIVEINVOICEENTRYKEY NEGATIVEINVOICEAMOUNT TRX_NEGATIVEINVOICEAMOUNT ADJUSTMENTKEY ADJUSTMENTENTRYKEY ADJUSTMENTAMOUNT TRX_ADJUSTMENTAMOUNT PAYMENTKEY PAYMENTENTRYKEY PAYMENTDATE PAYMENTAMOUNT TRX_PAYMENTAMOUNT CURRENCY STATE WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY PARENTPAYMENTKEY"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARPYMTDETAIL" do
    field(:RECORDNO, :string)

    field(:RECORDKEY, :integer)

    field(:ENTRYKEY, :integer)

    field(:POSADJKEY, :integer)

    field(:POSADJENTRYKEY, :integer)

    field(:INLINEKEY, :integer)

    field(:INLINEENTRYKEY, :integer)

    field(:INLINEAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_INLINEAMOUNT, Conduit.Sage.Object.Float)

    field(:DISCOUNTKEY, :integer)

    field(:DISCOUNTENTRYKEY, :integer)

    field(:DISCOUNTDATE, Conduit.Sage.Object.Date)

    field(:DISCOUNTAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_DISCOUNTAMOUNT, Conduit.Sage.Object.Float)

    field(:ADVANCEKEY, :integer)

    field(:ADVANCEENTRYKEY, :integer)

    field(:POSTEDADVANCEKEY, :integer)

    field(:POSTEDADVANCEENTRYKEY, :integer)

    field(:POSTEDADVANCEAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_POSTEDADVANCEAMOUNT, Conduit.Sage.Object.Float)

    field(:OVERPAYMENTKEY, :integer)

    field(:OVERPAYMENTENTRYKEY, :integer)

    field(:POSTEDOVERPAYMENTKEY, :integer)

    field(:POSTEDOVERPAYMENTENTRYKEY, :integer)

    field(:POSTEDOVERPAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_POSTEDOVERPAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:NEGATIVEINVOICEKEY, :integer)

    field(:NEGATIVEINVOICEENTRYKEY, :integer)

    field(:NEGATIVEINVOICEAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_NEGATIVEINVOICEAMOUNT, Conduit.Sage.Object.Float)

    field(:ADJUSTMENTKEY, :integer)

    field(:ADJUSTMENTENTRYKEY, :integer)

    field(:ADJUSTMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_ADJUSTMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:PAYMENTKEY, :integer)

    field(:PAYMENTENTRYKEY, :integer)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:CURRENCY, :string)

    field(:STATE, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:PARENTPAYMENTKEY, :integer)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARPYMTDETAIL")
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
      Elixir.Conduit.Sage.Object.Arpymtdetail.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arpymtdetail.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arpymtdetail.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arpymtdetail.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arpymtdetail.field_list(:strings)

    def table_name(_t), do: "ARPYMTDETAIL"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
