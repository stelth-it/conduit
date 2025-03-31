defmodule Elixir.Conduit.Sage.Object.Glentry do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO BATCHNO USERNO LINE_NO TR_TYPE ENTRY_DATE AMOUNT TRX_AMOUNT ACCOUNTKEY ACCOUNTNO DEPARTMENTKEY DEPARTMENT DEPARTMENTTITLE LOCATIONKEY LOCATION LOCATIONNAME DOCUMENT DESCRIPTION UNITS BASECURR CURRENCY CLEARED CLRDATE TIMEPERIOD ADJ EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE RECON_DATE ALLOCATION ALLOCATIONKEY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY STATE BILLABLE BILLED ADDITIONAL_INFO SALESFORCE_RECORD_ID PART_NUMBER CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "GLENTRY" do
    field :RECORDNO, :string, primary_key: true

    field :BATCHNO, :integer, primary_key: true

    field :USERNO, :integer, primary_key: true

    field :LINE_NO, :integer, primary_key: true

    field :TR_TYPE, :integer, primary_key: true

    field :ENTRY_DATE, Conduit.Sage.Object.Date, primary_key: true

    field :AMOUNT, Conduit.Sage.Object.Float, primary_key: true

    field :TRX_AMOUNT, Conduit.Sage.Object.Float, primary_key: true

    field :ACCOUNTKEY, :integer, primary_key: true

    field :ACCOUNTNO, :string, primary_key: true

    field :DEPARTMENTKEY, :integer, primary_key: true

    field :DEPARTMENT, :string, primary_key: true

    field :DEPARTMENTTITLE, :string, primary_key: true

    field :LOCATIONKEY, :integer, primary_key: true

    field :LOCATION, :string, primary_key: true

    field :LOCATIONNAME, :string, primary_key: true

    field :DOCUMENT, :string, primary_key: true

    field :DESCRIPTION, :string, primary_key: true

    field :UNITS, :integer, primary_key: true

    field :BASECURR, :string, primary_key: true

    field :CURRENCY, :string, primary_key: true

    field :CLEARED, :string, primary_key: true

    field :CLRDATE, Conduit.Sage.Object.Date, primary_key: true

    field :TIMEPERIOD, :integer, primary_key: true

    field :ADJ, :string, primary_key: true

    field :EXCH_RATE_DATE, Conduit.Sage.Object.Date, primary_key: true

    field :EXCH_RATE_TYPE_ID, :string, primary_key: true

    field :EXCHANGE_RATE, Conduit.Sage.Object.Float, primary_key: true

    field :RECON_DATE, Conduit.Sage.Object.Date, primary_key: true

    field :ALLOCATION, :string, primary_key: true

    field :ALLOCATIONKEY, :integer, primary_key: true

    field :WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true

    field :WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :CREATEDBY, :integer, primary_key: true

    field :MODIFIEDBY, :integer, primary_key: true

    field :STATE, :string, primary_key: true

    field :BILLABLE, :boolean, primary_key: true

    field :BILLED, :boolean, primary_key: true

    field :ADDITIONAL_INFO, :string, primary_key: true

    field :SALESFORCE_RECORD_ID, :string, primary_key: true

    field :PART_NUMBER, :string, primary_key: true

    field :CUSTOMERDIMKEY, :integer, primary_key: true

    field :CUSTOMERID, :string, primary_key: true

    field :CUSTOMERNAME, :string, primary_key: true

    field :VENDORDIMKEY, :integer, primary_key: true

    field :VENDORID, :string, primary_key: true

    field :VENDORNAME, :string, primary_key: true

    field :EMPLOYEEDIMKEY, :integer, primary_key: true

    field :EMPLOYEEID, :string, primary_key: true

    field :EMPLOYEENAME, :string, primary_key: true

    field :ITEMDIMKEY, :integer, primary_key: true

    field :ITEMID, :string, primary_key: true

    field :ITEMNAME, :string, primary_key: true

    field :CLASSDIMKEY, :integer, primary_key: true

    field :CLASSID, :string, primary_key: true

    field :CLASSNAME, :string, primary_key: true

    field :WAREHOUSEDIMKEY, :integer, primary_key: true

    field :WAREHOUSEID, :string, primary_key: true

    field :WAREHOUSENAME, :string, primary_key: true

    field :RECORD_URL, :string, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLENTRY")
  end

  def from_api(struct, params \\ %{}) do
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
      Elixir.Conduit.Sage.Object.Glentry.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glentry.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glentry.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glentry.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glentry.field_list(:strings)

    def table_name(_t), do: "GLENTRY"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
