defmodule Elixir.Conduit.Sage.Object.Glaccount do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO ACCOUNTNO TITLE ACCOUNTTYPE NORMALBALANCE CLOSINGTYPE CLOSINGACCOUNTNO CLOSINGACCOUNTTITLE STATUS REQUIREDEPT REQUIRELOC TAXABLE CATEGORYKEY CATEGORY TAXCODE MRCCODE CLOSETOACCTKEY ALTERNATIVEACCOUNT WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY SUBLEDGERCONTROLON WIPSETUPACCTTYPE ENABLE_GLMATCHING RECLASSIFICATIONACCOUNTNO LETTRAGESEQUENCEID MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME REQUIRECUSTOMER REQUIREVENDOR REQUIREEMPLOYEE REQUIREITEM REQUIRECLASS REQUIREWAREHOUSE RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "GLACCOUNT" do
    field(:RECORDNO, :integer, primary_key: true)

    field(:ACCOUNTNO, :string, primary_key: true)

    field(:TITLE, :string, primary_key: true)

    field(:ACCOUNTTYPE, :string, primary_key: true)

    field(:NORMALBALANCE, :string, primary_key: true)

    field(:CLOSINGTYPE, :string, primary_key: true)

    field(:CLOSINGACCOUNTNO, :string, primary_key: true)

    field(:CLOSINGACCOUNTTITLE, :string, primary_key: true)

    field(:STATUS, :string, primary_key: true)

    field(:REQUIREDEPT, :boolean, primary_key: true)

    field(:REQUIRELOC, :boolean, primary_key: true)

    field(:TAXABLE, :boolean, primary_key: true)

    field(:CATEGORYKEY, :string, primary_key: true)

    field(:CATEGORY, :string, primary_key: true)

    field(:TAXCODE, :string, primary_key: true)

    field(:MRCCODE, :string, primary_key: true)

    field(:CLOSETOACCTKEY, :integer, primary_key: true)

    field(:ALTERNATIVEACCOUNT, :string, primary_key: true)

    field(:WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true)

    field(:WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true)

    field(:CREATEDBY, :integer, primary_key: true)

    field(:MODIFIEDBY, :integer, primary_key: true)

    field(:SUBLEDGERCONTROLON, :boolean, primary_key: true)

    field(:WIPSETUPACCTTYPE, :string, primary_key: true)

    field(:ENABLE_GLMATCHING, :boolean, primary_key: true)

    field(:RECLASSIFICATIONACCOUNTNO, :string, primary_key: true)

    field(:LETTRAGESEQUENCEID, :string, primary_key: true)

    field(:MEGAENTITYKEY, :integer, primary_key: true)

    field(:MEGAENTITYID, :string, primary_key: true)

    field(:MEGAENTITYNAME, :string, primary_key: true)

    field(:REQUIRECUSTOMER, :boolean, primary_key: true)

    field(:REQUIREVENDOR, :boolean, primary_key: true)

    field(:REQUIREEMPLOYEE, :boolean, primary_key: true)

    field(:REQUIREITEM, :boolean, primary_key: true)

    field(:REQUIRECLASS, :boolean, primary_key: true)

    field(:REQUIREWAREHOUSE, :boolean, primary_key: true)

    field(:RECORD_URL, :string, primary_key: true)

    field(:Rasset, :string, primary_key: true)

    field(:Rasset1, :string, primary_key: true)

    field(:Rasset_class, :string, primary_key: true)

    field(:Rasset_class1, :string, primary_key: true)

    field(:Rasset_class2, :string, primary_key: true)

    field(:Rasset_class3, :string, primary_key: true)

    field(:Rcip, :string, primary_key: true)

    field(:Rcip1, :string, primary_key: true)

    field(:RCIPAssetGLAccount, :string, primary_key: true)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLACCOUNT")
  end

  def from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
    |> apply_action!(:received)
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
      Elixir.Conduit.Sage.Object.Glaccount.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glaccount.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glaccount.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glaccount.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glaccount.field_list(:strings)

    def table_name(_t), do: "GLACCOUNT"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
