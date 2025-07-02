defmodule Elixir.Conduit.QAD.Table.Dsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dsd_det" do
    field :dsd_req_nbr, :string

    field :dsd_site, :string

    field :dsd_shipsite, :string

    field :dsd_shipdate, Conduit.QAD.Types.Date

    field :dsd_due_date, Conduit.QAD.Types.Date

    field :dsd_per_date, Conduit.QAD.Types.Date

    field :dsd_part, :string

    field :dsd_qty_ord, :decimal

    field :dsd_qty_conf, :decimal

    field :dsd_qty_rcvd, :decimal

    field :dsd_qty_ship, :decimal

    field :dsd_transit, :decimal

    field :dsd_status, :string

    field :dsd_rmks, :string

    field :dsd_rev, :string

    field :dsd_git_site, :string

    field :dsd_git_acct, :string

    field :dsd_git_cc, :string

    field :dsd_project, :string

    field :dsd_cmtindx, :integer

    field :dsd_residual, :decimal

    field :dsd_loc, :string

    field :dsd_trans_id, :string

    field :dsd_updated, Conduit.QAD.Types.Bool

    field :dsd_user1, :string

    field :dsd_user2, :string

    field :dsd__chr01, :string

    field :dsd__chr02, :string

    field :dsd__chr03, :string

    field :dsd__chr04, :string

    field :dsd__chr05, :string

    field :dsd__dte01, Conduit.QAD.Types.Date

    field :dsd__dte02, Conduit.QAD.Types.Date

    field :dsd__dec01, :decimal

    field :dsd__dec02, :decimal

    field :dsd__log01, Conduit.QAD.Types.Bool

    field :dsd_nbr, :string

    field :dsd_qty_chg, :decimal

    field :dsd_po_nbr, :string

    field :dsd_pod_line, :integer

    field :dsd_git_sub, :string

    field :dsd_domain, :string

    field :oid_dsd_det, :decimal, primary_key: true

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
