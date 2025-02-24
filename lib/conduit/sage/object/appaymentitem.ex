defmodule Elixir.Conduit.Sage.Object.Appaymentitem do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDTYPE ENTRY_DATE RECORDKEY VENDORACCTNOKEYVERSION ENTRYDESCRIPTION ACCOUNTKEY GLACCOUNTNO GLACCOUNTTITLE AMOUNT LOCATIONID LOCATIONNAME DEPARTMENTID DEPARTMENTNAME LINE_NO FORM1099 ACCOUNTLABEL TOTALSELECTED TOTALPAID PARENTENTRY LINEITEM GLOFFSET BASELOCATION ALLOCATIONKEY ALLOCATION SUBTOTAL DEFERREVENUE REVRECTEMPLATEKEY REVRECTEMPLATE DEFERREDREVACCTKEY DEFERREDREVACCTNO DEFERREDREVACCTTITLE REVRECSTARTDATE REVRECENDDATE ENTRYCURRENCY ENTRYEXCHRATEDATE ENTRYEXCHRATETYPE ENTRYEXCHRATE TRX_AMOUNT TRX_TOTALSELECTED TRX_TOTALPAID BILLABLE BILLED STATE RELEASETOPAY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY LOCATIONKEY DEPARTMENTKEY CURRENCY ACCOUNTNO ACCOUNTTITLE EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE PRIMARYDOCKEY PRIMARYDOCLINEKEY CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APPAYMENTITEM" do
    field(:RECORDNO, :string)

    field(:RECORDTYPE, :string)

    field(:ENTRY_DATE, Conduit.Sage.Object.Date)

    field(:RECORDKEY, :integer)

    field(:VENDORACCTNOKEYVERSION, :integer)

    field(:ENTRYDESCRIPTION, :string)

    field(:ACCOUNTKEY, :integer)

    field(:GLACCOUNTNO, :string)

    field(:GLACCOUNTTITLE, :string)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:LOCATIONID, :string)

    field(:LOCATIONNAME, :string)

    field(:DEPARTMENTID, :string)

    field(:DEPARTMENTNAME, :string)

    field(:LINE_NO, :string)

    field(:FORM1099, :string)

    field(:ACCOUNTLABEL, :string)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:PARENTENTRY, :integer)

    field(:LINEITEM, :string)

    field(:GLOFFSET, :integer)

    field(:BASELOCATION, :integer)

    field(:ALLOCATIONKEY, :integer)

    field(:ALLOCATION, :string)

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

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

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

    field(:CURRENCY, :string)

    field(:ACCOUNTNO, :string)

    field(:ACCOUNTTITLE, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :integer)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:PRIMARYDOCKEY, :integer)

    field(:PRIMARYDOCLINEKEY, :integer)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APPAYMENTITEM")
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
      Elixir.Conduit.Sage.Object.Appaymentitem.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Appaymentitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Appaymentitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Appaymentitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Appaymentitem.field_list(:strings)

    def table_name(_t), do: "APPAYMENTITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
