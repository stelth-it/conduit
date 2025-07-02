defmodule Elixir.Conduit.Sage.Object.Glacctgrp do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO NAME NORMAL_BALANCE ASOF INCLUDECHILDAMT TITLE TOTALTITLE DBCR FILTERDEPT FILTERLOC MEMBERTYPE DEPTNO LOCNO ISKPI FILTERVENDOR FILTERCUSTOMER FILTERPROJECT FILTEREMPLOYEE FILTERITEM FILTERCLASS FILTERCONTRACT FILTERTASK FILTERWAREHOUSE FILTERCOSTTYPE FILTERASSET FILTERAFFILIATEENTITY WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY ACCTGROUPMANAGER GLACCTGRPPURPOSEID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME CUSTOMERDIMKEY CUSTOMERID CUSTOMERNAME VENDORDIMKEY VENDORID VENDORNAME EMPLOYEEDIMKEY EMPLOYEEID EMPLOYEENAME ITEMDIMKEY ITEMID ITEMNAME CLASSDIMKEY CLASSID CLASSNAME WAREHOUSEDIMKEY WAREHOUSEID WAREHOUSENAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLACCTGRP" do
    field :RECORDNO, :integer, primary_key: true

    field :NAME, :string, primary_key: true

    field :NORMAL_BALANCE, :string, primary_key: true

    field :ASOF, :string, primary_key: true

    field :INCLUDECHILDAMT, :boolean, primary_key: true

    field :TITLE, :string, primary_key: true

    field :TOTALTITLE, :string, primary_key: true

    field :DBCR, :string, primary_key: true

    field :FILTERDEPT, :string, primary_key: true

    field :FILTERLOC, :string, primary_key: true

    field :MEMBERTYPE, :string, primary_key: true

    field :DEPTNO, :string, primary_key: true

    field :LOCNO, :string, primary_key: true

    field :ISKPI, :boolean, primary_key: true

    field :FILTERVENDOR, :string, primary_key: true

    field :FILTERCUSTOMER, :string, primary_key: true

    field :FILTERPROJECT, :string, primary_key: true

    field :FILTEREMPLOYEE, :string, primary_key: true

    field :FILTERITEM, :string, primary_key: true

    field :FILTERCLASS, :string, primary_key: true

    field :FILTERCONTRACT, :string, primary_key: true

    field :FILTERTASK, :string, primary_key: true

    field :FILTERWAREHOUSE, :string, primary_key: true

    field :FILTERCOSTTYPE, :string, primary_key: true

    field :FILTERASSET, :string, primary_key: true

    field :FILTERAFFILIATEENTITY, :string, primary_key: true

    field :WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true

    field :WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :CREATEDBY, :integer, primary_key: true

    field :MODIFIEDBY, :integer, primary_key: true

    field :ACCTGROUPMANAGER, :string, primary_key: true

    field :GLACCTGRPPURPOSEID, :string, primary_key: true

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLACCTGRP")
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
      Elixir.Conduit.Sage.Object.Glacctgrp.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glacctgrp.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glacctgrp.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glacctgrp.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glacctgrp.field_list(:strings)

    def table_name(_t), do: "GLACCTGRP"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
