defmodule Elixir.Conduit.Sage.Object.Arrecurinvoice do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO CONTACTTAXGROUP DESCRIPTION WHENCREATED WHENMODIFIED TERMNAME RECORDID TOTALENTERED DOCNUMBER MODULEKEY STATUS CUSTOMERNAME SCHOPKEY ENTITY CONTRACTID CONTRACTDESC CUSTOMERID USERNAME BILLTOCONTACTNAME SHIPTOCONTACTNAME CURRENCY TRX_TOTALENTERED CUSTMESSAGEID PAYMETHOD PAYINFULL PAYMENTAMOUNT CUSTOMERCREDITCARDKEY CUSTOMERBANKACCOUNTKEY CREDITCARDTYPE ACCOUNTTYPE BANKACCOUNTID GLACCOUNTKEY STARTDATE ENDDATE NEXTEXECDATE LASTEXECDATE RECURDUEDATE FREQUENCY EXECCOUNT REPEATCOUNT REPEATBY REPEATINTERVAL AUWHENCREATED CREATEDBY MODIFIEDBY SHIPTO.TAXGROUP.RECORDNO TAXSOLUTIONID CUSTEMAILOPTIN SUPDOCID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "ARRECURINVOICE" do
    field(:RECORDNO, :string)

    field(:CONTACTTAXGROUP, :string)

    field(:DESCRIPTION, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:TERMNAME, :string)

    field(:RECORDID, :string)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:DOCNUMBER, :string)

    field(:MODULEKEY, :string)

    field(:STATUS, :string)

    field(:CUSTOMERNAME, :string)

    field(:SCHOPKEY, :integer)

    field(:ENTITY, :string)

    field(:CONTRACTID, :string)

    field(:CONTRACTDESC, :string)

    field(:CUSTOMERID, :string)

    field(:USERNAME, :string)

    field(:BILLTOCONTACTNAME, :string)

    field(:SHIPTOCONTACTNAME, :string)

    field(:CURRENCY, :string)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:CUSTMESSAGEID, :string)

    field(:PAYMETHOD, :string)

    field(:PAYINFULL, :boolean)

    field(:PAYMENTAMOUNT, Conduit.Sage.Object.Float)

    field(:CUSTOMERCREDITCARDKEY, :string)

    field(:CUSTOMERBANKACCOUNTKEY, :string)

    field(:CREDITCARDTYPE, :string)

    field(:ACCOUNTTYPE, :string)

    field(:BANKACCOUNTID, :string)

    field(:GLACCOUNTKEY, :string)

    field(:STARTDATE, Conduit.Sage.Object.Date)

    field(:ENDDATE, Conduit.Sage.Object.Date)

    field(:NEXTEXECDATE, Conduit.Sage.Object.Date)

    field(:LASTEXECDATE, Conduit.Sage.Object.Date)

    field(:RECURDUEDATE, Conduit.Sage.Object.Date)

    field(:FREQUENCY, :string)

    field(:EXECCOUNT, :integer)

    field(:REPEATCOUNT, :integer)

    field(:REPEATBY, :string)

    field(:REPEATINTERVAL, :integer)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:"SHIPTO.TAXGROUP.RECORDNO", :integer)

    field(:TAXSOLUTIONID, :string)

    field(:CUSTEMAILOPTIN, :boolean)

    field(:SUPDOCID, :string)

    field(:MEGAENTITYKEY, :integer)

    field(:MEGAENTITYID, :string)

    field(:MEGAENTITYNAME, :string)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "ARRECURINVOICE")
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
      Elixir.Conduit.Sage.Object.Arrecurinvoice.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Arrecurinvoice.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Arrecurinvoice.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Arrecurinvoice.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Arrecurinvoice.field_list(:strings)

    def table_name(_t), do: "ARRECURINVOICE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
