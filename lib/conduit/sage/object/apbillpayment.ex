defmodule Elixir.Conduit.Sage.Object.Apbillpayment do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PAYMENTKEY PAYITEMKEY RECORDKEY PAIDITEMKEY AMOUNT STATE PARENTPYMT PAYMENTDATE CURRENCY TRX_AMOUNT INVBASEAMT INVTRXAMT WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APBILLPAYMENT" do
    field(:RECORDNO, :string)

    field(:PAYMENTKEY, :integer)

    field(:PAYITEMKEY, :integer)

    field(:RECORDKEY, :integer)

    field(:PAIDITEMKEY, :integer)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:STATE, :string)

    field(:PARENTPYMT, :integer)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:CURRENCY, :string)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:INVBASEAMT, Conduit.Sage.Object.Float)

    field(:INVTRXAMT, Conduit.Sage.Object.Float)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APBILLPAYMENT")
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
      Elixir.Conduit.Sage.Object.Apbillpayment.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apbillpayment.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apbillpayment.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apbillpayment.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apbillpayment.field_list(:strings)

    def table_name(_t), do: "APBILLPAYMENT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
