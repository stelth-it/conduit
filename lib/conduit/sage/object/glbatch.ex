defmodule Elixir.Conduit.Sage.Object.Glbatch do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO BATCHNO BATCH_TITLE BALANCE JOURNAL BATCH_DATE MODULE USERKEY REFERENCENO REVERSED REVERSEDKEY REVERSEDFROM TEMPLATEKEY PRBATCHKEY MODIFIED MODIFIEDBYID SCHOPKEY GLACCTALLOCATIONRUNKEY BASELOCATION BASELOCATION_NO USERINFO.LOGINID WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY STATE JOURNALSEQNO TAXIMPLICATIONS VATVENDORID VATCUSTOMERID VATCONTACTID TAXSOLUTIONID SUPDOCID SUPDOCKEY MEGAENTITYKEY MEGAENTITYID MEGAENTITYNAME SALESFORCE_ERROR_MESSAGE SALESFORCE_JOB_URL SALESFORCE_RECORD_ID SALESFORCE_RECORD_URL SALESFORCE_SYNC_STATUS SALESFORCE_TIMESTAMP REVISED_TICKET TICKET_COMPLETE_DATE RECORD_URL Rasset Rdepreciation_schedule Rasset_adjustment Rasset_class RassetOutOfService RassetTransfer Rcip_asset Rcip"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLBATCH" do
    field :RECORDNO, :string, primary_key: true

    field :BATCHNO, :integer, primary_key: true

    field :BATCH_TITLE, :string, primary_key: true

    field :BALANCE, Conduit.Sage.Object.Float, primary_key: true

    field :JOURNAL, :string, primary_key: true

    field :BATCH_DATE, Conduit.Sage.Object.Date, primary_key: true

    field :MODULE, :string, primary_key: true

    field :USERKEY, :integer, primary_key: true

    field :REFERENCENO, :string, primary_key: true

    field :REVERSED, Conduit.Sage.Object.Date, primary_key: true

    field :REVERSEDKEY, :integer, primary_key: true

    field :REVERSEDFROM, :string, primary_key: true

    field :TEMPLATEKEY, :integer, primary_key: true

    field :PRBATCHKEY, :integer, primary_key: true

    field :MODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :MODIFIEDBYID, :string, primary_key: true

    field :SCHOPKEY, :integer, primary_key: true

    field :GLACCTALLOCATIONRUNKEY, :integer, primary_key: true

    field :BASELOCATION, :string, primary_key: true

    field :BASELOCATION_NO, :string, primary_key: true

    field :"USERINFO.LOGINID", :string, primary_key: true

    field :WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true

    field :WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :CREATEDBY, :integer, primary_key: true

    field :MODIFIEDBY, :integer, primary_key: true

    field :STATE, :string, primary_key: true

    field :JOURNALSEQNO, :string, primary_key: true

    field :TAXIMPLICATIONS, :string, primary_key: true

    field :VATVENDORID, :string, primary_key: true

    field :VATCUSTOMERID, :string, primary_key: true

    field :VATCONTACTID, :string, primary_key: true

    field :TAXSOLUTIONID, :string, primary_key: true

    field :SUPDOCID, :string, primary_key: true

    field :SUPDOCKEY, :integer, primary_key: true

    field :MEGAENTITYKEY, :integer, primary_key: true

    field :MEGAENTITYID, :string, primary_key: true

    field :MEGAENTITYNAME, :string, primary_key: true

    field :SALESFORCE_ERROR_MESSAGE, :string, primary_key: true

    field :SALESFORCE_JOB_URL, :string, primary_key: true

    field :SALESFORCE_RECORD_ID, :string, primary_key: true

    field :SALESFORCE_RECORD_URL, :string, primary_key: true

    field :SALESFORCE_SYNC_STATUS, :string, primary_key: true

    field :SALESFORCE_TIMESTAMP, :string, primary_key: true

    field :REVISED_TICKET, :string, primary_key: true

    field :TICKET_COMPLETE_DATE, Conduit.Sage.Object.Date, primary_key: true

    field :RECORD_URL, :string, primary_key: true

    field :Rasset, :string, primary_key: true

    field :Rdepreciation_schedule, :string, primary_key: true

    field :Rasset_adjustment, :string, primary_key: true

    field :Rasset_class, :string, primary_key: true

    field :RassetOutOfService, :string, primary_key: true

    field :RassetTransfer, :string, primary_key: true

    field :Rcip_asset, :string, primary_key: true

    field :Rcip, :string, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLBATCH")
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
      Elixir.Conduit.Sage.Object.Glbatch.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glbatch.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glbatch.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glbatch.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glbatch.field_list(:strings)

    def table_name(_t), do: "GLBATCH"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
