defmodule Elixir.Conduit.QAD.Table.Rqd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqd_det" do
    field :rqd_nbr, :string

    field :rqd_line, :integer

    field :rqd_part, :string

    field :rqd_req_qty, :decimal

    field :rqd_um_conv, :decimal

    field :rqd_vend, :string

    field :rqd_ship, :string

    field :rqd_vpart, :string

    field :rqd_taxable, Conduit.QAD.Types.Bool

    field :rqd_disc_pct, :decimal

    field :rqd_due_date, Conduit.QAD.Types.Date

    field :rqd_desc, :string

    field :rqd_type, :string

    field :rqd_max_cost, :decimal

    field :rqd_category, :string

    field :rqd_status, :string

    field :rqd_rev, :string

    field :rqd_loc, :string

    field :rqd_insp_rqd, Conduit.QAD.Types.Bool

    field :rqd_acct, :string

    field :rqd_cc, :string

    field :rqd_project, :string

    field :rqd_need_date, Conduit.QAD.Types.Date

    field :rqd_pur_cost, :decimal

    field :rqd_aprv_stat, :string

    field :rqd_rel_date, Conduit.QAD.Types.Date

    field :rqd_site, :string

    field :rqd_um, :string

    field :rqd_cmtindx, :integer

    field :rqd_oot_ponetcst, :decimal

    field :rqd_oot_poum, :string

    field :rqd_oot_rqnetcst, :decimal

    field :rqd_oot_rqum, :string

    field :rqd_pr_list, :string

    field :rqd_pr_list2, :string

    field :rqd_grade, :string

    field :rqd_expire, Conduit.QAD.Types.Date

    field :rqd_rctstat, :string

    field :rqd_assay, :decimal

    field :rqd_lot_rcpt, Conduit.QAD.Types.Bool

    field :rqd__chr01, :string

    field :rqd__chr02, :string

    field :rqd__chr03, :string

    field :rqd__chr04, :string

    field :rqd__qadc01, :string

    field :rqd__qadc02, :string

    field :rqd__qadc03, :string

    field :rqd__qadc04, :string

    field :rqd_open, Conduit.QAD.Types.Bool

    field :rqd_oot_extra, {:array, :string}

    field :rqd_domain, :string

    field :oid_rqd_det, :decimal, primary_key: true

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
