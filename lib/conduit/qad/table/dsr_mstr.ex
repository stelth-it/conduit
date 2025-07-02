defmodule Elixir.Conduit.QAD.Table.Dsr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dsr_mstr" do
    field :dsr_req_nbr, :string

    field :dsr_site, :string

    field :dsr_ord_date, Conduit.QAD.Types.Date

    field :dsr_due_date, Conduit.QAD.Types.Date

    field :dsr_part, :string

    field :dsr_qty_req, :decimal

    field :dsr_status, :string

    field :dsr_rmks, :string

    field :dsr_rev, :string

    field :dsr_project, :string

    field :dsr_cmtindx, :integer

    field :dsr_so_job, :string

    field :dsr_loc, :string

    field :dsr_user1, :string

    field :dsr_user2, :string

    field :dsr__chr01, :string

    field :dsr__chr02, :string

    field :dsr__chr03, :string

    field :dsr__chr04, :string

    field :dsr__chr05, :string

    field :dsr__dte01, Conduit.QAD.Types.Date

    field :dsr__dte02, Conduit.QAD.Types.Date

    field :dsr__dec01, :decimal

    field :dsr__dec02, :decimal

    field :dsr__log01, Conduit.QAD.Types.Bool

    field :dsr_app_owner, :string

    field :dsr_domain, :string

    field :oid_dsr_mstr, :decimal, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields), empty_values: ["?", empty_values()])
  end
end
