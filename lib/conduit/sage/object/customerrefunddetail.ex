defmodule Elixir.Conduit.Sage.Object.Customerrefunddetail do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PARENTPAYMENTKEY PAYMENTKEY PAYMENTENTRYKEY PAYMENTDATE PAYMENTAMOUNT TRX_PAYMENTAMOUNT ADJUSTMENTKEY ADJUSTMENTENTRYKEY NEGATIVEINVOICEKEY NEGATIVEINVOICEENTRYKEY ADVANCEKEY ADVANCEENTRYKEY OVERPAYMENTKEY OVERPAYMENTENTRYKEY CURRENCY STATE MODULEKEY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "CUSTOMERREFUNDDETAIL" do
    field(:RECORDNO, :string)

    field(:PARENTPAYMENTKEY, :integer)

    field(:PAYMENTKEY, :integer)

    field(:PAYMENTENTRYKEY, :integer)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:ADJUSTMENTKEY, :integer)

    field(:ADJUSTMENTENTRYKEY, :integer)

    field(:NEGATIVEINVOICEKEY, :integer)

    field(:NEGATIVEINVOICEENTRYKEY, :integer)

    field(:ADVANCEKEY, :integer)

    field(:ADVANCEENTRYKEY, :integer)

    field(:OVERPAYMENTKEY, :integer)

    field(:OVERPAYMENTENTRYKEY, :integer)

    field(:CURRENCY, :string)

    field(:STATE, :string)

    field(:MODULEKEY, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "CUSTOMERREFUNDDETAIL")
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
      Elixir.Conduit.Sage.Object.Customerrefunddetail.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Customerrefunddetail.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Customerrefunddetail.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Customerrefunddetail.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Customerrefunddetail.field_list(:strings)

    def table_name(_t), do: "CUSTOMERREFUNDDETAIL"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
