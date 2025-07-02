defmodule Elixir.Conduit.Sage.Object.Arinvoice do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDTYPE RECORDID CONTACTTAXGROUP STATE RAWSTATE CUSTOMERID CUSTOMERNAME CUSTEMAILOPTIN TRX_ENTITYDUE CUSTMESSAGEKEY CUSTMESSAGEID DELIVERY_OPTIONS DOCNUMBER DESCRIPTION DESCRIPTION2 TERMNAME TERMKEY TERMVALUE WHENCREATED WHENPOSTED WHENDISCOUNT WHENDUE WHENPAID BASECURR CURRENCY EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE TOTALENTERED TOTALSELECTED TOTALPAID TOTALDUE TRX_TOTALENTERED TRX_TOTALSELECTED TRX_TOTALPAID TRX_TOTALDUE TRX_TOTALDISCOUNTAPPLIED BILLTOPAYTOCONTACTNAME SHIPTORETURNTOCONTACTNAME BILLTOPAYTOKEY SHIPTORETURNTOKEY CONTACT.CONTACTNAME CONTACT.PREFIX CONTACT.FIRSTNAME CONTACT.INITIAL CONTACT.LASTNAME CONTACT.COMPANYNAME CONTACT.PRINTAS CONTACT.PHONE1 CONTACT.PHONE2 CONTACT.CELLPHONE CONTACT.PAGER CONTACT.FAX CONTACT.EMAIL1 CONTACT.EMAIL2 CONTACT.URL1 CONTACT.URL2 CONTACT.VISIBLE CONTACT.MAILADDRESS.ADDRESS1 CONTACT.MAILADDRESS.ADDRESS2 CONTACT.MAILADDRESS.ADDRESS3 CONTACT.MAILADDRESS.CITY CONTACT.MAILADDRESS.STATE CONTACT.MAILADDRESS.ZIP CONTACT.MAILADDRESS.COUNTRY CONTACT.MAILADDRESS.COUNTRYCODE SHIPTO.CONTACTNAME SHIPTO.PREFIX SHIPTO.FIRSTNAME SHIPTO.INITIAL SHIPTO.LASTNAME SHIPTO.COMPANYNAME SHIPTO.PRINTAS SHIPTO.PHONE1 SHIPTO.PHONE2 SHIPTO.CELLPHONE SHIPTO.PAGER SHIPTO.FAX SHIPTO.EMAIL1 SHIPTO.EMAIL2 SHIPTO.URL1 SHIPTO.URL2 SHIPTO.VISIBLE SHIPTO.MAILADDRESS.ADDRESS1 SHIPTO.MAILADDRESS.ADDRESS2 SHIPTO.MAILADDRESS.ADDRESS3 SHIPTO.MAILADDRESS.CITY SHIPTO.MAILADDRESS.STATE SHIPTO.MAILADDRESS.ZIP SHIPTO.MAILADDRESS.COUNTRY SHIPTO.MAILADDRESS.COUNTRYCODE BILLTO.CONTACTNAME BILLTO.PREFIX BILLTO.FIRSTNAME BILLTO.INITIAL BILLTO.LASTNAME BILLTO.COMPANYNAME BILLTO.PRINTAS BILLTO.PHONE1 BILLTO.PHONE2 BILLTO.CELLPHONE BILLTO.PAGER BILLTO.FAX BILLTO.EMAIL1 BILLTO.EMAIL2 BILLTO.URL1 BILLTO.URL2 BILLTO.MAILADDRESS.ADDRESS1 BILLTO.MAILADDRESS.ADDRESS2 BILLTO.MAILADDRESS.ADDRESS3 BILLTO.MAILADDRESS.CITY BILLTO.MAILADDRESS.STATE BILLTO.MAILADDRESS.ZIP BILLTO.MAILADDRESS.COUNTRY BILLTO.MAILADDRESS.COUNTRYCODE PRBATCH PRBATCHKEY MODULEKEY SCHOPKEY SYSTEMGENERATED HASPOSTEDREVREC BILLBACKTEMPLATEKEY AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY DUE_IN_DAYS SHIPTO.TAXGROUP.RECORDNO CONTACT.TAXID TAXSOLUTIONID RETAINAGEPERCENTAGE TRX_TOTALRETAINED TRX_TOTALRELEASED TOTALRETAINED SUPDOCID PROJECTCONTRACTKEY PROJECTCONTRACTID DUNNINGCOUNT RETAINAGERELEASED EXTERNALREFNO PC_DESCRIPTION CONTRACTDATE ARCHITECTKEY ARCHITECT BILLTHROUGHDATE BILLAPPLICATIONNO PCBINVSUMMARY.ORGCONTRACTAMT PCBINVSUMMARY.TOTAL_CHARGE PCBINVSUMMARY.TOTAL_DISCOUNT PCBINVSUMMARY.CHGAPPRPMONTADD PCBINVSUMMARY.CHGAPPRPMONTDED PCBINVSUMMARY.CHGAPPRCMONTADD PCBINVSUMMARY.CHGAPPRCMONTDED PCBINVSUMMARY.TOTNETAPPRCHNGS PCBINVSUMMARY.TOTREVSDCONAMT PCBINVSUMMARY.COMPPRIORAPPLNS PCBINVSUMMARY.TOTCOMPTODATE PCBINVSUMMARY.INVAMTRETAINED PCBINVSUMMARY.INVRETAINGEBILLD PCBINVSUMMARY.NETCHNGERETHELD PCBINVSUMMARY.RETHELDTODATE PCBINVSUMMARY.RETBILLEDTODATE PCBINVSUMMARY.RETBALANCETODATE PCBINVSUMMARY.PREVRETBALANCE PCBINVSUMMARY.TOTEARNEDLESSRETGE PCBINVSUMMARY.LESSPREVBILLINGS PCBINVSUMMARY.CURRENTAMOUNTDUE PCBINVSUMMARY.BALANCETOFINISH PCBINVSUMMARY.TOTAL_TAX PCBINVSUMMARY.ARINVOICENUMBER PCBINVSUMMARY.DOCID PCBINVSUMMARY.PROJECTID PCBINVSUMMARY.PROJECTNAME MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARINVOICE" do
    field(:RECORDNO, :string)

    field(:RECORDTYPE, :string)

    field(:RECORDID, :string)

    field(:CONTACTTAXGROUP, :string)

    field(:STATE, :string)

    field(:RAWSTATE, :string)

    field(:ENTITY, :string)

    field(:CUSTENTITY, :string)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:CUSTEMAILOPTIN, :boolean)

    field(:TRX_ENTITYDUE, Conduit.Sage.Object.Float)

    field(:CUSTMESSAGEKEY, :integer)

    field(:CUSTMESSAGEID, :string)

    field(:DELIVERY_OPTIONS, :string)

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

    field(:TRX_TOTALDISCOUNTAPPLIED, Conduit.Sage.Object.Float)

    field(:BILLTOPAYTOCONTACTNAME, :string)

    field(:SHIPTORETURNTOCONTACTNAME, :string)

    field(:BILLTOPAYTOKEY, :integer)

    field(:SHIPTORETURNTOKEY, :integer)

    field(:"CONTACT.CONTACTNAME", :string)

    field(:"CONTACT.PREFIX", :string)

    field(:"CONTACT.FIRSTNAME", :string)

    field(:"CONTACT.INITIAL", :string)

    field(:"CONTACT.LASTNAME", :string)

    field(:"CONTACT.COMPANYNAME", :string)

    field(:"CONTACT.PRINTAS", :string)

    field(:"CONTACT.PHONE1", :string)

    field(:"CONTACT.PHONE2", :string)

    field(:"CONTACT.CELLPHONE", :string)

    field(:"CONTACT.PAGER", :string)

    field(:"CONTACT.FAX", :string)

    field(:"CONTACT.EMAIL1", :string)

    field(:"CONTACT.EMAIL2", :string)

    field(:"CONTACT.URL1", :string)

    field(:"CONTACT.URL2", :string)

    field(:"CONTACT.VISIBLE", :boolean)

    field(:"CONTACT.MAILADDRESS.ADDRESS1", :string)

    field(:"CONTACT.MAILADDRESS.ADDRESS2", :string)

    field(:"CONTACT.MAILADDRESS.ADDRESS3", :string)

    field(:"CONTACT.MAILADDRESS.CITY", :string)

    field(:"CONTACT.MAILADDRESS.STATE", :string)

    field(:"CONTACT.MAILADDRESS.ZIP", :string)

    field(:"CONTACT.MAILADDRESS.COUNTRY", :string)

    field(:"CONTACT.MAILADDRESS.COUNTRYCODE", :string)

    field(:"SHIPTO.CONTACTNAME", :string)

    field(:"SHIPTO.PREFIX", :string)

    field(:"SHIPTO.FIRSTNAME", :string)

    field(:"SHIPTO.INITIAL", :string)

    field(:"SHIPTO.LASTNAME", :string)

    field(:"SHIPTO.COMPANYNAME", :string)

    field(:"SHIPTO.PRINTAS", :string)

    field(:"SHIPTO.PHONE1", :string)

    field(:"SHIPTO.PHONE2", :string)

    field(:"SHIPTO.CELLPHONE", :string)

    field(:"SHIPTO.PAGER", :string)

    field(:"SHIPTO.FAX", :string)

    field(:"SHIPTO.EMAIL1", :string)

    field(:"SHIPTO.EMAIL2", :string)

    field(:"SHIPTO.URL1", :string)

    field(:"SHIPTO.URL2", :string)

    field(:"SHIPTO.VISIBLE", :boolean)

    field(:"SHIPTO.MAILADDRESS.ADDRESS1", :string)

    field(:"SHIPTO.MAILADDRESS.ADDRESS2", :string)

    field(:"SHIPTO.MAILADDRESS.ADDRESS3", :string)

    field(:"SHIPTO.MAILADDRESS.CITY", :string)

    field(:"SHIPTO.MAILADDRESS.STATE", :string)

    field(:"SHIPTO.MAILADDRESS.ZIP", :string)

    field(:"SHIPTO.MAILADDRESS.COUNTRY", :string)

    field(:"SHIPTO.MAILADDRESS.COUNTRYCODE", :string)

    field(:"BILLTO.CONTACTNAME", :string)

    field(:"BILLTO.PREFIX", :string)

    field(:"BILLTO.FIRSTNAME", :string)

    field(:"BILLTO.INITIAL", :string)

    field(:"BILLTO.LASTNAME", :string)

    field(:"BILLTO.COMPANYNAME", :string)

    field(:"BILLTO.PRINTAS", :string)

    field(:"BILLTO.PHONE1", :string)

    field(:"BILLTO.PHONE2", :string)

    field(:"BILLTO.CELLPHONE", :string)

    field(:"BILLTO.PAGER", :string)

    field(:"BILLTO.FAX", :string)

    field(:"BILLTO.EMAIL1", :string)

    field(:"BILLTO.EMAIL2", :string)

    field(:"BILLTO.URL1", :string)

    field(:"BILLTO.URL2", :string)

    field(:"BILLTO.MAILADDRESS.ADDRESS1", :string)

    field(:"BILLTO.MAILADDRESS.ADDRESS2", :string)

    field(:"BILLTO.MAILADDRESS.ADDRESS3", :string)

    field(:"BILLTO.MAILADDRESS.CITY", :string)

    field(:"BILLTO.MAILADDRESS.STATE", :string)

    field(:"BILLTO.MAILADDRESS.ZIP", :string)

    field(:"BILLTO.MAILADDRESS.COUNTRY", :string)

    field(:"BILLTO.MAILADDRESS.COUNTRYCODE", :string)

    field(:PRBATCH, :string)

    field(:PRBATCHKEY, :integer)

    field(:MODULEKEY, :string)

    field(:SCHOPKEY, :integer)

    field(:SYSTEMGENERATED, :string)

    field(:HASPOSTEDREVREC, :string)

    field(:BILLBACKTEMPLATEKEY, :integer)

    field(:BBRECORDKEY, :integer)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:DUE_IN_DAYS, :string)

    field(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

    field(:"CONTACT.TAXID", :string)

    field(:TAXSOLUTIONID, :string)

    field(:RETAINAGEPERCENTAGE, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALRELEASED, Conduit.Sage.Object.Float)

    field(:TOTALRETAINED, Conduit.Sage.Object.Float)

    field(:SUPDOCID, :string)

    field(:PROJECTCONTRACTKEY, :integer)

    field(:PROJECTCONTRACTID, :string)

    field(:DUNNINGCOUNT, :integer)

    field(:RETAINAGEINVTYPE, :string)

    field(:RETAINAGERELEASED, :boolean)

    field(:EXTERNALREFNO, :string)

    field(:PC_DESCRIPTION, :string)

    field(:CONTRACTDATE, Conduit.Sage.Object.Date)

    field(:ARCHITECTKEY, :integer)

    field(:ARCHITECT, :string)

    field(:BILLTHROUGHDATE, Conduit.Sage.Object.Date)

    field(:BILLAPPLICATIONNO, :string)

    field(:"PCBINVSUMMARY.ORGCONTRACTAMT", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTAL_CHARGE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTAL_DISCOUNT", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.CHGAPPRPMONTADD", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.CHGAPPRPMONTDED", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.CHGAPPRCMONTADD", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.CHGAPPRCMONTDED", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTNETAPPRCHNGS", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTREVSDCONAMT", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.COMPPRIORAPPLNS", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTCOMPTODATE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.INVAMTRETAINED", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.INVRETAINGEBILLD", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.NETCHNGERETHELD", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.RETHELDTODATE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.RETBILLEDTODATE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.RETBALANCETODATE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.PREVRETBALANCE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTEARNEDLESSRETGE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.LESSPREVBILLINGS", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.CURRENTAMOUNTDUE", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.BALANCETOFINISH", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.TOTAL_TAX", Conduit.Sage.Object.Float)

    field(:"PCBINVSUMMARY.ARINVOICENUMBER", :string)

    field(:"PCBINVSUMMARY.DOCID", :string)

    field(:"PCBINVSUMMARY.PROJECTID", :string)

    field(:"PCBINVSUMMARY.PROJECTNAME", :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARINVOICE")
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
      Elixir.Conduit.Sage.Object.Arinvoice.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arinvoice.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arinvoice.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arinvoice.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arinvoice.field_list(:strings)

    def table_name(_t), do: "ARINVOICE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
