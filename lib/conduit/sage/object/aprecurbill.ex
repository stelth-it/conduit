defmodule Elixir.Conduit.Sage.Object.Aprecurbill do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO CONTACTTAXGROUP DESCRIPTION WHENCREATED WHENMODIFIED TERMNAME RECORDID TOTALENTERED DOCNUMBER MODULEKEY STATUS SCHOPKEY ENTITY CONTRACTID CONTRACTDESC VENDORID VENDORNAME USERNAME PAYTOCONTACTNAME RETURNTOCONTACTNAME CURRENCY TRX_TOTALENTERED AUWHENCREATED CREATEDBY MODIFIEDBY STARTDATE ENDDATE NEXTEXECDATE LASTEXECDATE RECURDUEDATE FREQUENCY EXECCOUNT REPEATCOUNT REPEATBY REPEATINTERVAL PAYTO.TAXGROUP.RECORDNO INCLUSIVETAX TAXSOLUTIONID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APRECURBILL" do
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

    field(:SCHOPKEY, :integer)

    field(:ENTITY, :string)

    field(:CONTRACTID, :string)

    field(:CONTRACTDESC, :string)

    field(:VENDORID, :string)

    field(:VENDORNAME, :string)

    field(:USERNAME, :string)

    field(:PAYTOCONTACTNAME, :string)

    field(:RETURNTOCONTACTNAME, :string)

    field(:CURRENCY, :string)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

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

    field(:"PAYTO.TAXGROUP.RECORDNO", :integer)

    field(:INCLUSIVETAX, :boolean)

    field(:TAXSOLUTIONID, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APRECURBILL")
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
      Elixir.Conduit.Sage.Object.Aprecurbill.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Aprecurbill.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Aprecurbill.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Aprecurbill.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Aprecurbill.field_list(:strings)

    def table_name(_t), do: "APRECURBILL"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
