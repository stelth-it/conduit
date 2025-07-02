defmodule Elixir.Conduit.Sage.Object.Arpayment do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDID STATE CUSTOMERID CUSTOMERNAME DOCNUMBER DESCRIPTION WHENCREATED CLRDATE CLEARED RECEIPTDATE WHENPAID BASECURR CURRENCY TOTALENTERED TOTALPAID TOTALDUE TRX_TOTALENTERED TRX_TOTALPAID TRX_TOTALDUE PRBATCH AUWHENCREATED WHENMODIFIED PRBATCHKEY RECORDTYPE TOTALSELECTED TERMKEY TERMNAME WHENDISCOUNT USERKEY WHENDUE MODULEKEY STATUS SYSTEMGENERATED WHENPOSTED ONHOLD TRX_TOTALSELECTED DELIVERYMETHOD RECON_DATE LOCATIONKEY CREATEDBY MODIFIEDBY NR_TOTALENTERED NR_TRX_TOTALENTERED PAYMENTDATE PAYMENTAMOUNT DOCUMENTNUMBER MEMO PAYMENTTYPE FINANCIALACCOUNT BATCHTITLE POSTINGDATE MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARPAYMENT" do
    field(:RECORDNO, :string)

    field(:RECORDID, :string)

    field(:STATE, :string)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:DOCNUMBER, :string)

    field(:DESCRIPTION, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:CLEARED, :string)

    field(:RECEIPTDATE, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:PRBATCH, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TERMKEY, :integer)

    field(:TERMNAME, :string)

    field(:WHENDISCOUNT, Conduit.Sage.Object.Date)

    field(:USERKEY, :integer)

    field(:WHENDUE, Conduit.Sage.Object.Date)

    field(:MODULEKEY, :string)

    field(:STATUS, :string)

    field(:SYSTEMGENERATED, :string)

    field(:WHENPOSTED, Conduit.Sage.Object.Date)

    field(:ONHOLD, :boolean)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:DELIVERYMETHOD, :string)

    field(:RECON_DATE, Conduit.Sage.Object.Date)

    field(:LOCATIONKEY, :integer)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:NR_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:NR_TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:PAYMENTDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:DOCUMENTNUMBER, :string)

    field(:MEMO, :string)

    field(:PAYMENTTYPE, :string)

    field(:FINANCIALACCOUNT, :string)

    field(:BATCHTITLE, :string)

    field(:POSTINGDATE, Conduit.Sage.Object.Date)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARPAYMENT")
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
      Elixir.Conduit.Sage.Object.Arpayment.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arpayment.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arpayment.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arpayment.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arpayment.field_list(:strings)

    def table_name(_t), do: "ARPAYMENT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
