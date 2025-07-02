defmodule Elixir.Conduit.QAD.Table.Ptp_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ptp_det" do
    field :ptp_part, :string

    field :ptp_site, :string

    field :ptp_batch, :decimal

    field :ptp_bom_code, :string

    field :ptp__qad01, Conduit.QAD.Types.Date

    field :ptp_buyer, :string

    field :ptp_cum_lead, :integer

    field :ptp__qad02, :decimal

    field :ptp_ins_lead, :integer

    field :ptp_ins_rqd, Conduit.QAD.Types.Bool

    field :ptp_iss_pol, Conduit.QAD.Types.Bool

    field :ptp_mfg_lead, :decimal

    field :ptp_ms, Conduit.QAD.Types.Bool

    field :ptp_ord_max, :decimal

    field :ptp_ord_min, :decimal

    field :ptp_ord_mult, :decimal

    field :ptp_ord_per, :integer

    field :ptp_ord_pol, :string

    field :ptp_ord_qty, :decimal

    field :ptp_phantom, Conduit.QAD.Types.Bool

    field :ptp_plan_ord, Conduit.QAD.Types.Bool

    field :ptp_pm_code, :string

    field :ptp_pur_lead, :integer

    field :ptp_rev, :string

    field :ptp_rop, :decimal

    field :ptp_routing, :string

    field :ptp_run, :decimal

    field :ptp_run_ll, :decimal

    field :ptp_setup, :decimal

    field :ptp_setup_ll, :decimal

    field :ptp_sfty_stk, :decimal

    field :ptp_sfty_tme, :decimal

    field :ptp_timefnce, :integer

    field :ptp_user1, :string

    field :ptp_user2, :string

    field :ptp_vend, :string

    field :ptp_yld_pct, :decimal

    field :ptp_assay, :decimal

    field :ptp_grade, :string

    field :ptp_ll_bom, :integer

    field :ptp_eco_pend, Conduit.QAD.Types.Bool

    field :ptp_rollup, Conduit.QAD.Types.Bool

    field :ptp_added, Conduit.QAD.Types.Date

    field :ptp_draw, :string

    field :ptp_trantype, :string

    field :ptp__chr01, :string

    field :ptp__chr02, :string

    field :ptp__chr03, :string

    field :ptp__chr04, :string

    field :ptp__chr05, :string

    field :ptp__chr06, :string

    field :ptp__chr07, :string

    field :ptp__chr08, :string

    field :ptp__chr09, :string

    field :ptp__chr10, :string

    field :ptp__dte01, Conduit.QAD.Types.Date

    field :ptp__dte02, Conduit.QAD.Types.Date

    field :ptp__dec01, :decimal

    field :ptp__dec02, :decimal

    field :ptp__log01, Conduit.QAD.Types.Bool

    field :ptp__log02, Conduit.QAD.Types.Bool

    field :ptp_ll_drp, :integer

    field :ptp__qad05, :integer

    field :ptp_po_site, :string

    field :ptp__qad04, :integer

    field :ptp__qad03, :integer

    field :ptp_mod_date, Conduit.QAD.Types.Date

    field :ptp_userid, :string

    field :ptp_network, :string

    field :ptp_rollup_id, :string

    field :ptp_mfg_pct, :decimal

    field :ptp_pur_pct, :decimal

    field :ptp_drp_pct, :decimal

    field :ptp_pou_code, :string

    field :ptp_wks_avg, :decimal

    field :ptp_wks_max, :decimal

    field :ptp_wks_min, :decimal

    field :ptp_pick_logic, :integer

    field :ptp_joint_type, :string

    field :ptp_btb_type, :string

    field :ptp_cfg_type, :string

    field :ptp_op_yield, Conduit.QAD.Types.Bool

    field :ptp_run_seq1, :string

    field :ptp_run_seq2, :string

    field :ptp_atp_enforcement, :string

    field :ptp_atp_family, Conduit.QAD.Types.Bool

    field :ptp_domain, :string

    field :oid_ptp_det, :decimal, primary_key: true

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
