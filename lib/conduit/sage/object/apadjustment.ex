defmodule Elixir.Conduit.Sage.Object.Apadjustment do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDTYPE RECORDID CONTACTTAXGROUP STATE RAWSTATE VENDORID VENDORNAME FORM1099TYPE FORM1099BOX VENDTYPE1099TYPE TRX_ENTITYDUE DOCNUMBER DESCRIPTION WHENCREATED WHENPOSTED WHENPAID BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE TOTALENTERED TOTALSELECTED TOTALPAID TOTALDUE TRX_TOTALENTERED TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE BILLTOPAYTOCONTACTNAME SHIPTORETURNTOCONTACTNAME BILLTOPAYTOKEY SHIPTORETURNTOKEY PRBATCHKEY MODULEKEY AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY INCLUSIVETAX SUPDOCID PAYTO.TAXGROUP.RECORDNO MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APADJUSTMENT" do
    field(:RECORDNO, :string)

    field(:RECORDTYPE, :string)

    field(:RECORDID, :string)

    field(:CONTACTTAXGROUP, :string)

    field(:STATE, :string)

    field(:RAWSTATE, :string)

    field(:ENTITY, :string)

    field(:VENDORID, :string)

    field(:VENDORNAME, :string)

    field(:FORM1099TYPE, :string)

    field(:FORM1099BOX, :string)

    field(:VENDTYPE1099TYPE, :string)

    field(:TRX_ENTITYDUE, Conduit.Sage.Object.Float)

    field(:DOCNUMBER, :string)

    field(:DESCRIPTION, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:WHENPOSTED, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :integer)

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

    field(:SHIPTORETURNTOCONTACTNAME, :string)

    field(:BILLTOPAYTOKEY, :integer)

    field(:SHIPTORETURNTOKEY, :integer)

    field(:PRBATCH, :string)

    field(:PRBATCHKEY, :integer)

    field(:PRBATCH_OPEN, :string)

    field(:PRBATCH_NOGL, :boolean)

    field(:MODULEKEY, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:INCLUSIVETAX, :boolean)

    field(:SUPDOCID, :string)

    field(:"PAYTO.TAXGROUP.RECORDNO", :integer)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APADJUSTMENT")
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
      Elixir.Conduit.Sage.Object.Apadjustment.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apadjustment.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apadjustment.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apadjustment.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apadjustment.field_list(:strings)

    def table_name(_t), do: "APADJUSTMENT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
