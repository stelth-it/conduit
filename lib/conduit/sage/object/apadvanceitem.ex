defmodule Elixir.Conduit.Sage.Object.Apadvanceitem do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO RECORDKEY ACCOUNTKEY ACCOUNTNO ACCOUNTTITLE ACCOUNTLABEL AMOUNT TRX_AMOUNT DEPARTMENTID DEPARTMENTNAME LOCATIONID LOCATIONNAME ENTRY_DATE ENTRYDESCRIPTION EXCH_RATE_DATE EXCH_RATE_TYPE_ID EXCHANGE_RATE LINEITEM LINE_NO BASECURR CURRENCY TOTALPAID TRX_TOTALPAID TOTALSELECTED TRX_TOTALSELECTED RECORDTYPE BASELOCATION PARENTENTRY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APADVANCEITEM" do
    field(:RECORDNO, :string)

    field(:RECORDKEY, :integer)

    field(:ACCOUNTKEY, :integer)

    field(:ACCOUNTNO, :string)

    field(:ACCOUNTTITLE, :string)

    field(:ACCOUNTLABEL, :string)

    field(:AMOUNT, Conduit.Sage.Object.Float)

    field(:TRX_AMOUNT, Conduit.Sage.Object.Float)

    field(:DEPARTMENTID, :string)

    field(:DEPARTMENTNAME, :string)

    field(:LOCATIONID, :string)

    field(:LOCATIONNAME, :string)

    field(:ENTRY_DATE, Conduit.Sage.Object.Date)

    field(:ENTRYDESCRIPTION, :string)

    field(:EXCH_RATE_DATE, Conduit.Sage.Object.Date)

    field(:EXCH_RATE_TYPE_ID, :string)

    field(:EXCHANGE_RATE, Conduit.Sage.Object.Float)

    field(:LINEITEM, :string)

    field(:LINE_NO, :string)

    field(:BASECURR, :string)

    field(:CURRENCY, :string)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:RECORDTYPE, :string)

    field(:BASELOCATION, :integer)

    field(:PARENTENTRY, :integer)

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

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APADVANCEITEM")
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
      Elixir.Conduit.Sage.Object.Apadvanceitem.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apadvanceitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apadvanceitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apadvanceitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apadvanceitem.field_list(:strings)

    def table_name(_t), do: "APADVANCEITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
