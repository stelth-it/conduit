defmodule Elixir.Conduit.Sage.Object.Arrecurinvoiceentry do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDKEY ENTRYDESCRIPTION ACCOUNTKEY GLACCOUNTNO GLACCOUNTTITLE AMOUNT LOCATIONID LOCATIONNAME DEPARTMENTID DEPARTMENTNAME LINE_NO FORM1099 ACCOUNTLABEL CURRENCY BASECURR EXCHRATEDATE EXCHRATETYPE EXCHRATE TRX_AMOUNT ALLOCATIONKEY ALLOCATION BILLABLE WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY DEFERREDREVACCTKEY REVRECSTARTDATE REVRECENDDATE REVRECTEMPLATE DEFERREDREVACCTNO DEFERREDREVACCTTITLE SUBTOTAL ACCOUNTLABELKEY CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARRECURINVOICEENTRY" do
    field(:RECORDNO, :string)

    field(:RECORDKEY, :integer)

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

    field(:CURRENCY, :string)

    field(:BASECURR, :string)

    field(:EXCHRATEDATE, Conduit.Sage.Object.Date)

    field(:EXCHRATETYPE, :integer)

    field(:EXCHRATE, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:ALLOCATIONKEY, :integer)

    field(:ALLOCATION, :string)

    field(:BILLABLE, :boolean)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:DEFERREDREVACCTKEY, :integer)

    field(:REVRECSTARTDATE, Conduit.Sage.Object.Date)

    field(:REVRECENDDATE, Conduit.Sage.Object.Date)

    field(:REVRECTEMPLATE, :string)

    field(:DEFERREDREVACCTNO, :string)

    field(:DEFERREDREVACCTTITLE, :string)

    field(:SUBTOTAL, :string)

    field(:ACCOUNTLABELKEY, :integer)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARRECURINVOICEENTRY")
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
      Elixir.Conduit.Sage.Object.Arrecurinvoiceentry.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arrecurinvoiceentry.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arrecurinvoiceentry.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arrecurinvoiceentry.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arrecurinvoiceentry.field_list(:strings)

    def table_name(_t), do: "ARRECURINVOICEENTRY"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
