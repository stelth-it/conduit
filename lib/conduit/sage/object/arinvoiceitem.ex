defmodule Elixir.Conduit.Sage.Object.Arinvoiceitem do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDKEY ACCOUNTKEY ACCOUNTNO OFFSETGLACCOUNTNO OFFSETGLACCOUNTTITLE ACCOUNTTITLE ACCOUNTLABELKEY ACCOUNTLABEL ENTRY_DATE AMOUNT TRX_AMOUNT DEPARTMENTID DEPARTMENTNAME LOCATIONID LOCATIONNAME ENTRYDESCRIPTION EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE ALLOCATIONKEY ALLOCATION LINEITEM LINE_NO CURRENCY BASECURR TOTALPAID TRX_TOTALPAID TRX_DISCOUNTAPPLIED TOTALSELECTED TRX_TOTALSELECTED SUBTOTAL PARENTENTRY PAYMENTTAXCAPTURE DEFERREVENUE REVRECTEMPLATEKEY REVRECTEMPLATE DEFERREDREVACCTKEY DEFERREDREVACCTNO DEFERREDREVACCTTITLE REVRECSTARTDATE REVRECENDDATE BASELOCATION STATE RECORDTYPE WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RETAINAGEPERCENTAGE TRX_AMOUNTRETAINED AMOUNTRETAINED TRX_AMOUNTRELEASED PROJECTCONTRACTID PROJECTCONTRACTKEY PROJECTCONTRACTLINEID PROJECTCONTRACTLINEKEY ISRETAINAGERELEASE ISSUMMARIZED AMORTIZATIONTEMPLATEID AMORTIZATIONSTARTDATE AMORTIZATIONENDDATE ORIGDOCKEY ORIGDOCLINEKEY ORIGDOCID ORIGDOCLINEID AMORTIZATIONTEMPLATEINFO.TERM CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARINVOICEITEM" do
    field(:RECORDNO, :string)

    field(:RECORDKEY, :integer)

    field(:ACCOUNTKEY, :integer)

    field(:ACCOUNTNO, :string)

    field(:OFFSETGLACCOUNTNO, :string)

    field(:OFFSETGLACCOUNTTITLE, :string)

    field(:ACCOUNTTITLE, :string)

    field(:ACCOUNTLABELKEY, :integer)

    field(:ACCOUNTLABEL, :string)

    field(:ENTRY_DATE, Conduit.Sage.Object.Date)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:DEPARTMENTID, :string)

    field(:DEPARTMENTNAME, :string)

    field(:LOCATIONID, :string)

    field(:LOCATIONNAME, :string)

    field(:ENTRYDESCRIPTION, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :integer)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:ALLOCATIONKEY, :integer)

    field(:ALLOCATION, :string)

    field(:LINEITEM, :string)

    field(:LINE_NO, :string)

    field(:CURRENCY, :string)

    field(:BASECURR, :string)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_DISCOUNTAPPLIED, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:SUBTOTAL, :string)

    field(:PARENTENTRY, :integer)

    field(:PAYMENTTAXCAPTURE, :boolean)

    field(:DEFERREVENUE, :boolean)

    field(:REVRECTEMPLATEKEY, :integer)

    field(:REVRECTEMPLATE, :string)

    field(:DEFERREDREVACCTKEY, :integer)

    field(:DEFERREDREVACCTNO, :string)

    field(:DEFERREDREVACCTTITLE, :string)

    field(:REVRECSTARTDATE, Conduit.Sage.Object.Date)

    field(:REVRECENDDATE, Conduit.Sage.Object.Date)

    field(:BASELOCATION, :integer)

    field(:STATE, :string)

    field(:RECORDTYPE, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:RETAINAGEPERCENTAGE, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:AMOUNTRETAINED, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNTRELEASED, Conduit.Sage.Object.Float)

    field(:PROJECTCONTRACTID, :string)

    field(:PROJECTCONTRACTKEY, :integer)

    field(:PROJECTCONTRACTLINEID, :string)

    field(:PROJECTCONTRACTLINEKEY, :integer)

    field(:ISRETAINAGERELEASE, :boolean)

    field(:ISSUMMARIZED, :boolean)

    field(:AMORTIZATIONTEMPLATEID, :string)

    field(:AMORTIZATIONSTARTDATE, Conduit.Sage.Object.Date)

    field(:AMORTIZATIONENDDATE, Conduit.Sage.Object.Date)

    field(:ORIGDOCKEY, :integer)

    field(:ORIGDOCLINEKEY, :integer)

    field(:ORIGDOCID, :string)

    field(:ORIGDOCLINEID, :string)

    field(:"AMORTIZATIONTEMPLATEINFO.TERM", :string)

    field(:CUSTOMERDIMKEY, :integer)

    field(:CUSTOMERID, :string)

    field(:CUSTOMERNAME, :string)

    field(:VENDORDIMKEY, :integer)

    field(:VENDORID, :string)

    field(:VENDORNAME, :string)

    field(:EMPLOYEEDIMKEY, :integer)

    field(:EMPLOYEEID, :string)

    field(:EMPLOYEENAME, :string)

    field(:ITEMDIMKEY, :integer)

    field(:ITEMID, :string)

    field(:ITEMNAME, :string)

    field(:CLASSDIMKEY, :integer)

    field(:CLASSID, :string)

    field(:CLASSNAME, :string)

    field(:WAREHOUSEDIMKEY, :integer)

    field(:WAREHOUSEID, :string)

    field(:WAREHOUSENAME, :string)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARINVOICEITEM")
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
      Elixir.Conduit.Sage.Object.Arinvoiceitem.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arinvoiceitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arinvoiceitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arinvoiceitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arinvoiceitem.field_list(:strings)

    def table_name(_t), do: "ARINVOICEITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
