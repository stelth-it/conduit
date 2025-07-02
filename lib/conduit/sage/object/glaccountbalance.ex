defmodule Elixir.Conduit.Sage.Object.Glaccountbalance do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "BOOKID CURRENCY PERIOD OPENBAL TOTDEBIT TOTCREDIT TOTADJDEBIT TOTADJCREDIT FORBAL ENDBAL ACCOUNTREC ACCOUNTNO ACCOUNTTITLE DEPARTMENTID LOCATIONID WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY LOCATIONNO CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLACCOUNTBALANCE" do
    field :BOOKID, :string, primary_key: true

    field :CURRENCY, :string, primary_key: true

    field :PERIOD, :string, primary_key: true

    field :OPENBAL, Conduit.Sage.Object.Float, primary_key: true

    field :TOTDEBIT, Conduit.Sage.Object.Float, primary_key: true

    field :TOTCREDIT, Conduit.Sage.Object.Float, primary_key: true

    field :TOTADJDEBIT, Conduit.Sage.Object.Float, primary_key: true

    field :TOTADJCREDIT, Conduit.Sage.Object.Float, primary_key: true

    field :FORBAL, Conduit.Sage.Object.Float, primary_key: true

    field :ENDBAL, Conduit.Sage.Object.Float, primary_key: true

    field :ACCOUNTREC, :integer, primary_key: true

    field :ACCOUNTNO, :string, primary_key: true

    field :ACCOUNTTITLE, :string, primary_key: true

    field :DEPARTMENTID, :string, primary_key: true

    field :LOCATIONID, :string, primary_key: true

    field :WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true

    field :WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :CREATEDBY, :integer, primary_key: true

    field :MODIFIEDBY, :integer, primary_key: true

    field :LOCATIONNO, :integer, primary_key: true

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLACCOUNTBALANCE")
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
      Elixir.Conduit.Sage.Object.Glaccountbalance.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glaccountbalance.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glaccountbalance.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glaccountbalance.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glaccountbalance.field_list(:strings)

    def table_name(_t), do: "GLACCOUNTBALANCE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
