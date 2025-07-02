defmodule Elixir.Conduit.Sage.Object.Apbill do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDTYPE RECORDID CONTACTTAXGROUP FINANCIALENTITY STATE RAWSTATE VENDORID VENDORNAME FORM1099TYPE FORM1099BOX VENDTYPE1099TYPE TRX_ENTITYDUE DOCNUMBER DESCRIPTION DESCRIPTION2 TERMNAME TERMKEY TERMVALUE WHENCREATED WHENPOSTED WHENDISCOUNT WHENDUE WHENPAID RECPAYMENTDATE PAYMENTPRIORITY ONHOLD BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE TOTALENTERED TOTALSELECTED TOTALPAID TOTALDUE TRX_TOTALENTERED TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE BILLTOPAYTOCONTACTNAME SHIPTORETURNTOCONTACTNAME BILLTOPAYTOKEY SHIPTORETURNTOKEY PRBATCH PRBATCHKEY MODULEKEY SCHOPKEY SYSTEMGENERATED AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY DUE_IN_DAYS PAYTO.TAXGROUP.RECORDNO INCLUSIVETAX TAXSOLUTIONID RETAINAGEPERCENTAGE TRX_TOTALRETAINED TRX_TOTALRELEASED TOTALRETAINED SUPDOCID BILLBACKTEMPLATE USERID CREATEDUSERID DOCSOURCE UPLOADSTATUS RECIPIENTEMAIL SENDEREMAIL RETAINAGERELEASED MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL Rasset_class"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APBILL" do
    field(:RECORDNO, :string)

    field(:RECORDTYPE, :string)

    field(:RECORDID, :string)

    field(:CONTACTTAXGROUP, :string)

    field(:FINANCIALENTITY, :string)

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

    field(:DESCRIPTION2, :string)

    field(:TERMNAME, :string)

    field(:TERMKEY, :integer)

    field(:TERMVALUE, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:WHENPOSTED, Conduit.Sage.Object.Date)

    field(:WHENDISCOUNT, Conduit.Sage.Object.Date)

    field(:WHENDUE, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:RECPAYMENTDATE, Conduit.Sage.Object.Date)

    field(:PAYMENTPRIORITY, :string)

    field(:ONHOLD, :boolean)

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

    field(:MODULEKEY, :string)

    field(:SCHOPKEY, :integer)

    field(:SYSTEMGENERATED, :string)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:DUE_IN_DAYS, :string)

    field(:"PAYTO.TAXGROUP.RECORDNO", :integer)

    field(:INCLUSIVETAX, :boolean)

    field(:TAXSOLUTIONID, :string)

    field(:RETAINAGEPERCENTAGE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRELEASED, Conduit.Sage.Object.Float)

    field(:TOTALRETAINED, Conduit.Sage.Object.Float)

    field(:SUPDOCID, :string)

    field(:BILLBACKTEMPLATE, :string)

    field(:BBTEMPLATE_USEIET, :boolean)

    field(:USERID, :string)

    field(:CREATEDUSERID, :string)

    field(:DOCSOURCE, :string)

    field(:UPLOADSTATUS, :string)

    field(:RECIPIENTEMAIL, :string)

    field(:SENDEREMAIL, :string)

    field(:SOURCEMODULE, :string)

    field(:RETAINAGERELEASED, :boolean)

    field(:BBRECORDKEY, :integer)

    field(:RETAINAGEINVTYPE, :string)

    field(:MEGAENTITYKEY, :integer)

    field(:MEGAENTITYID, :string)

    field(:MEGAENTITYNAME, :string)

    field(:RECORD_URL, :string)

    field(:Rasset, :string)

    field(:Rasset_class, :string)

    field(:Rfixed_assets_log, :string)

    field(:Rinsurance_detail, :string)

    field(:Rcip, :string)

    field(:Rcip_item, :string)

    field(:Rcip_asset, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APBILL")
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
      Elixir.Conduit.Sage.Object.Apbill.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apbill.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apbill.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apbill.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apbill.field_list(:strings)

    def table_name(_t), do: "APBILL"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
