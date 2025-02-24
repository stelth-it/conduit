defmodule Elixir.Conduit.Sage.Object.Apdiscount do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO PRBATCHKEY RECORDTYPE DESCRIPTION TOTALENTERED TOTALPAID TOTALSELECTED TOTALDUE STATE WHENCREATED WHENPAID TERMKEY TERMNAME WHENDISCOUNT RECORDID USERKEY WHENDUE DOCNUMBER CLEARED CLRDATE MODULEKEY STATUS SYSTEMGENERATED WHENPOSTED ONHOLD TRX_TOTALENTERED TRX_TOTALPAID TRX_TOTALSELECTED TRX_TOTALDUE DELIVERYMETHOD RECON_DATE BASECURR LOCATIONKEY AUWHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY NR_TOTALENTERED NR_TRX_TOTALENTERED VENDORNAME MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APDISCOUNT" do
    field(:RECORDNO, :string)

    field(:PRBATCHKEY, :integer)

    field(:RECORDTYPE, :string)

    field(:DESCRIPTION, :string)

    field(:TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TOTALPAID, Conduit.Sage.Object.Float)

    field(:TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TOTALDUE, Conduit.Sage.Object.Float)

    field(:STATE, :string)

    field(:WHENCREATED, Conduit.Sage.Object.Date)

    field(:WHENPAID, Conduit.Sage.Object.Date)

    field(:TERMKEY, :integer)

    field(:TERMNAME, :string)

    field(:WHENDISCOUNT, Conduit.Sage.Object.Date)

    field(:RECORDID, :string)

    field(:USERKEY, :integer)

    field(:WHENDUE, Conduit.Sage.Object.Date)

    field(:DOCNUMBER, :string)

    field(:CLEARED, :string)

    field(:CLRDATE, Conduit.Sage.Object.Date)

    field(:MODULEKEY, :string)

    field(:STATUS, :string)

    field(:SYSTEMGENERATED, :string)

    field(:WHENPOSTED, Conduit.Sage.Object.Date)

    field(:ONHOLD, :boolean)

    field(:TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALPAID, Conduit.Sage.Object.Float)

    field(:TRX_TOTALSELECTED, Conduit.Sage.Object.Float)

    field(:TRX_TOTALDUE, Conduit.Sage.Object.Float)

    field(:DELIVERYMETHOD, :string)

    field(:RECON_DATE, Conduit.Sage.Object.Date)

    field(:BASECURR, :string)

    field(:LOCATIONKEY, :integer)

    field(:AUWHENCREATED, Conduit.Sage.Object.DateTime)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime)

    field(:CREATEDBY, :integer)

    field(:MODIFIEDBY, :integer)

    field(:NR_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:NR_TRX_TOTALENTERED, Conduit.Sage.Object.Float)

    field(:VENDORNAME, :string)

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APDISCOUNT")
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
      Elixir.Conduit.Sage.Object.Apdiscount.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apdiscount.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apdiscount.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apdiscount.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apdiscount.field_list(:strings)

    def table_name(_t), do: "APDISCOUNT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
