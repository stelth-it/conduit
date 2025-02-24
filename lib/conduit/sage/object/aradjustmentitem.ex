defmodule Elixir.Conduit.Sage.Object.Aradjustmentitem do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDKEY ACCOUNTKEY ACCOUNTNO OFFSETGLACCOUNTNO OFFSETGLACCOUNTTITLE ACCOUNTTITLE ACCOUNTLABELKEY ACCOUNTLABEL PRENTRYOFFSETACCOUNTNO ENTRY_DATE AMOUNT TRX_AMOUNT DEPARTMENTID DEPARTMENTNAME LOCATIONID LOCATIONNAME ENTRYDESCRIPTION EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE LINEITEM LINE_NO CURRENCY BASECURR TOTALPAID TRX_TOTALPAID TOTALSELECTED TRX_TOTALSELECTED PARENTENTRY PAYMENTTAXCAPTURE BASELOCATION STATE RECORDTYPE WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "ARADJUSTMENTITEM" do
    field(:RECORDNO, :string)

    field(:RECORDKEY, :integer)

    field(:ACCOUNTKEY, :integer)

    field(:ACCOUNTNO, :string)

    field(:OFFSETGLACCOUNTNO, :string)

    field(:OFFSETGLACCOUNTTITLE, :string)

    field(:ACCOUNTTITLE, :string)

    field(:ACCOUNTLABELKEY, :integer)

    field(:ACCOUNTLABEL, :string)

    field(:PRENTRYOFFSETACCOUNTNO, :string)

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

    field(:LINEITEM, :string)

    field(:LINE_NO, :string)

    field(:CURRENCY, :string)

    field(:BASECURR, :string)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:PARENTENTRY, :integer)

    field(:PAYMENTTAXCAPTURE, :boolean)

    field(:BASELOCATION, :integer)

    field(:STATE, :string)

    field(:RECORDTYPE, :string)

    field(:DETAILID, :string)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARADJUSTMENTITEM")
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
      Elixir.Conduit.Sage.Object.Aradjustmentitem.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Aradjustmentitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Aradjustmentitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Aradjustmentitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Aradjustmentitem.field_list(:strings)

    def table_name(_t), do: "ARADJUSTMENTITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
