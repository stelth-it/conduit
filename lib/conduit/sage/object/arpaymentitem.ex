defmodule Elixir.Conduit.Sage.Object.Arpaymentitem do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO ACCOUNTNO ACCOUNTTITLE ACCOUNTLABEL ALLOCATION AMOUNT TRX_AMOUNT DEPARTMENTID DEPARTMENTNAME LOCATIONID LOCATIONNAME ENTRYDESCRIPTION EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE LINE_NO CURRENCY TOTALPAID TRX_TOTALPAID TOTALSELECTED TRX_TOTALSELECTED RECORDTYPE ENTRY_DATE RECORDKEY VENDORACCTNOKEYVERSION ACCOUNTKEY GLACCOUNTNO GLACCOUNTTITLE FORM1099 PARENTENTRY LINEITEM GLOFFSET BASELOCATION ALLOCATIONKEY SUBTOTAL DEFERREVENUE REVRECTEMPLATEKEY REVRECTEMPLATE DEFERREDREVACCTKEY DEFERREDREVACCTNO DEFERREDREVACCTTITLE REVRECSTARTDATE REVRECENDDATE ENTRYCURRENCY ENTRYEXCHRATEDATE ENTRYEXCHRATETYPE ENTRYEXCHRATE BILLABLE BILLED STATE RELEASETOPAY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY LOCATIONKEY DEPARTMENTKEY CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARPAYMENTITEM" do
    field(:RECORDNO, :string)

    field(:ACCOUNTNO, :string)

    field(:ACCOUNTTITLE, :string)

    field(:ACCOUNTLABEL, :string)

    field(:ALLOCATION, :string)

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

    field(:LINE_NO, :string)

    field(:CURRENCY, :string)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:RECORDTYPE, :string)

    field(:ENTRY_DATE, Conduit.Sage.Object.Date)

    field(:RECORDKEY, :integer)

    field(:VENDORACCTNOKEYVERSION, :integer)

    field(:ACCOUNTKEY, :integer)

    field(:GLACCOUNTNO, :string)

    field(:GLACCOUNTTITLE, :string)

    field(:FORM1099, :string)

    field(:PARENTENTRY, :integer)

    field(:LINEITEM, :string)

    field(:GLOFFSET, :integer)

    field(:BASELOCATION, :integer)

    field(:ALLOCATIONKEY, :integer)

    field(:SUBTOTAL, :string)

    field(:DEFERREVENUE, :boolean)

    field(:REVRECTEMPLATEKEY, :integer)

    field(:REVRECTEMPLATE, :string)

    field(:DEFERREDREVACCTKEY, :integer)

    field(:DEFERREDREVACCTNO, :string)

    field(:DEFERREDREVACCTTITLE, :string)

    field(:REVRECSTARTDATE, Conduit.Sage.Object.Date)

    field(:REVRECENDDATE, Conduit.Sage.Object.Date)

    field(:ENTRYCURRENCY, :string)

    field(:ENTRYEXCHRATEDATE, Conduit.Sage.Object.Date)

    field(:ENTRYEXCHRATETYPE, :integer)

    field(:ENTRYEXCHRATE, Conduit.Sage.Object.Float)

    field(:BILLABLE, :boolean)

    field(:BILLED, :boolean)

    field(:STATE, :string)

    field(:RELEASETOPAY, :boolean)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:LOCATIONKEY, :integer)

    field(:DEPARTMENTKEY, :integer)

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

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARPAYMENTITEM")
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
      Elixir.Conduit.Sage.Object.Arpaymentitem.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arpaymentitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arpaymentitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arpaymentitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arpaymentitem.field_list(:strings)

    def table_name(_t), do: "ARPAYMENTITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
