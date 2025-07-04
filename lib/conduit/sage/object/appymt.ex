defmodule Elixir.Conduit.Sage.Object.Appymt do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY RECORDTYPE RECORDID FINANCIALENTITY FINANCIALENTITYTYPE FINANCIALACCOUNTNAME FINANCIALACCOUNTCURRENCY STATE RAWSTATE PAYMENTPROVIDER PAYMENTMETHOD PAYMENTMETHODKEY ENTITY VENDORID VENDORNAME DOCNUMBER DESCRIPTION DESCRIPTION2 WHENCREATED WHENDUE WHENPAID BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE TOTALENTERED TOTALSELECTED TOTALPAID TOTALDUE TRX_TOTALENTERED TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE BILLTOPAYTOCONTACTNAME PRBATCH AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY CLEARED CLRDATE BILLTOPAYTOKEY WHENPOSTED INCLUSIVETAX TAXSOLUTIONID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APPYMT" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:RECORDID, :string)

    field(:FINANCIALENTITY, :string)

    field(:FINANCIALENTITYTYPE, :string)

    field(:FINANCIALACCOUNTNAME, :string)

    field(:FINANCIALACCOUNTCURRENCY, :string)

    field(:STATE, :string)

    field(:RAWSTATE, :string)

    field(:PAYMENTPROVIDER, :string)

    field(:PAYMENTMETHOD, :string)

    field(:PAYMENTMETHODKEY, :integer)

    field(:ENTITY, :string)

    field(:VENDORID, :string)

    field(:VENDORNAME, :string)

    field(:DOCNUMBER, :string)

    field(:DESCRIPTION, :string)

    field(:DESCRIPTION2, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:WHENDUE, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:BILLTOPAYTOCONTACTNAME, :string)

    field(:PRBATCH, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:BILLTOPAYTOKEY, :integer)

    field(:WHENPOSTED, Conduit.Sage.Object.Date)

    field(:INCLUSIVETAX, :boolean)

    field(:TAXSOLUTIONID, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APPYMT")
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
      Elixir.Conduit.Sage.Object.Appymt.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Appymt.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Appymt.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Appymt.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Appymt.field_list(:strings)

    def table_name(_t), do: "APPYMT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
