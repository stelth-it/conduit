defmodule Elixir.Conduit.Sage.Object.Glbudgetitem do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO BUDGETKEY BUDGETID CURRENCY SYSTEMGENERATED PERIODKEY ACCOUNTKEY DEPTKEY LOCATIONKEY AMOUNT BASEDON GROWBY PERPERIOD NOTE ACCT_NO ACCOUNT_TYPE ACCTTITLE NORMALBALANCE STATISTICAL DEPT_NO DEPTITLE LOCATION_NO LOCATIONTITLE PERIODNAME REPORTINGPERIODNAME PSTARTDATE PENDDATE MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLBUDGETITEM" do
    field :RECORDNO, :string, primary_key: true

    field :BUDGETKEY, :integer, primary_key: true

    field :BUDGETID, :string, primary_key: true

    field :CURRENCY, :string, primary_key: true

    field :SYSTEMGENERATED, :string, primary_key: true

    field :PERIODKEY, :integer, primary_key: true

    field :ACCOUNTKEY, :integer, primary_key: true

    field :DEPTKEY, :integer, primary_key: true

    field :LOCATIONKEY, :integer, primary_key: true

    field :AMOUNT, Conduit.Sage.Object.Float, primary_key: true

    field :BASEDON, :string, primary_key: true

    field :GROWBY, Conduit.Sage.Object.Float, primary_key: true

    field :PERPERIOD, :string, primary_key: true

    field :NOTE, :string, primary_key: true

    field :ACCT_NO, :string, primary_key: true

    field :ACCOUNT_TYPE, :string, primary_key: true

    field :ACCTTITLE, :string, primary_key: true

    field :NORMALBALANCE, :integer, primary_key: true

    field :STATISTICAL, :string, primary_key: true

    field :DEPT_NO, :string, primary_key: true

    field :DEPTITLE, :string, primary_key: true

    field :LOCATION_NO, :string, primary_key: true

    field :LOCATIONTITLE, :string, primary_key: true

    field :PERIODNAME, :string, primary_key: true

    field :REPORTINGPERIODNAME, :string, primary_key: true

    field :PSTARTDATE, Conduit.Sage.Object.Date, primary_key: true

    field :PENDDATE, Conduit.Sage.Object.Date, primary_key: true

    field :MEGAENTITYKEY, :integer, primary_key: true

    field :MEGAENTITYID, :string, primary_key: true

    field :MEGAENTITYNAME, :string, primary_key: true

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLBUDGETITEM")
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
      Elixir.Conduit.Sage.Object.Glbudgetitem.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glbudgetitem.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glbudgetitem.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glbudgetitem.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glbudgetitem.field_list(:strings)

    def table_name(_t), do: "GLBUDGETITEM"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
