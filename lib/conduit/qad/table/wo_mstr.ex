defmodule Elixir.Conduit.QAD.Table.Wo_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wo_mstr" do
    field :wo_nbr, :string

    field :wo_lot, :string

    field :wo_so_job, :string

    field :wo_ord_date, Conduit.QAD.Types.Date

    field :wo_rel_date, Conduit.QAD.Types.Date

    field :wo_due_date, Conduit.QAD.Types.Date

    field :wo_per_date, Conduit.QAD.Types.Date

    field :wo_part, :string

    field :wo_type, :string

    field :wo_qty_ord, :decimal

    field :wo_qty_comp, :decimal

    field :wo_qty_rjct, :decimal

    field :wo_status, :string

    field :wo_vend, :string

    field :wo_rmks, :string

    field :wo_qty_chg, :decimal

    field :wo_rjct_chg, :decimal

    field :wo_bo_chg, :decimal

    field :wo_yield_pct, :decimal

    field :wo_rev, :string

    field :wo_acct, :string

    field :wo_cc, :string

    field :wo__qad01, :string

    field :wo_lot_prev, :string

    field :wo_schd_type, :string

    field :wo_cmtindx, :integer

    field :wo_project, :string

    field :wo_lead_time, :integer

    field :wo_wip_tot, :decimal

    field :wo_lbr_tot, :decimal

    field :wo_mtl_tot, :decimal

    field :wo_bdn_tot, :decimal

    field :wo_sub_tot, :decimal

    field :wo_user1, :string

    field :wo_user2, :string

    field :wo_ovh_tot, :decimal

    field :wo_loc, :string

    field :wo_serial, :string

    field :wo_routing, :string

    field :wo_bom_code, :string

    field :wo_site, :string

    field :wo_queue_eff, :decimal

    field :wo_draw, :string

    field :wo_lbr_up, Conduit.QAD.Types.Bool

    field :wo_bdn_up, Conduit.QAD.Types.Bool

    field :wo_gl_lbr, Conduit.QAD.Types.Bool

    field :wo_gl_bdn, Conduit.QAD.Types.Bool

    field :wo__chr01, :string

    field :wo__chr02, :string

    field :wo__chr03, :string

    field :wo__chr04, :string

    field :wo__chr05, :string

    field :wo__dte01, Conduit.QAD.Types.Date

    field :wo__dte02, Conduit.QAD.Types.Date

    field :wo__dec01, :decimal

    field :wo__dec02, :decimal

    field :wo__log01, Conduit.QAD.Types.Bool

    field :wo_line, :string

    field :wo_var, Conduit.QAD.Types.Bool

    field :wo_mtl_var, :decimal

    field :wo_lbr_var, :decimal

    field :wo_bdn_var, :decimal

    field :wo_sub_var, :decimal

    field :wo_mvar_acct, :string

    field :wo_mvar_cc, :string

    field :wo_mvrr_acct, :string

    field :wo_mvrr_cc, :string

    field :wo_svar_acct, :string

    field :wo_svar_cc, :string

    field :wo_svrr_acct, :string

    field :wo_svrr_cc, :string

    field :wo_flr_acct, :string

    field :wo_flr_cc, :string

    field :wo__dec03, :decimal

    field :wo_rjct_tot, :decimal

    field :wo_mthd_var, :decimal

    field :wo_rval_tot, :decimal

    field :wo_acct_close, Conduit.QAD.Types.Bool

    field :wo_close_date, Conduit.QAD.Types.Date

    field :wo_close_eff, Conduit.QAD.Types.Date

    field :wo_fsm_type, :string

    field :wo_xvar_acct, :string

    field :wo_xvar_cc, :string

    field :wo_myld_var, :decimal

    field :wo_joint_type, :string

    field :wo_prod_pct, :decimal

    field :wo_qty_type, :string

    field :wo__dec04, :decimal

    field :wo_base_id, :string

    field :wo_unit_cost, :decimal

    field :wo_mix_var, :decimal

    field :wo_bdn_totx, :decimal

    field :wo_lbr_totx, :decimal

    field :wo_mtl_totx, :decimal

    field :wo_sub_totx, :decimal

    field :wo_ovh_totx, :decimal

    field :wo_rctstat_active, Conduit.QAD.Types.Bool

    field :wo_batch, :string

    field :wo_assay, :decimal

    field :wo_grade, :string

    field :wo_expire, Conduit.QAD.Types.Date

    field :wo_rctstat, :string

    field :wo_lot_next, :string

    field :wo_lot_rcpt, Conduit.QAD.Types.Bool

    field :wo_ca_int_type, :string

    field :wo_iss_site, :string

    field :wo_itm_line, :integer

    field :wo_date_posted, Conduit.QAD.Types.Date

    field :wo__qadc01, :string

    field :wo__qadc02, :string

    field :wo__qadc03, :string

    field :wo__qadt01, Conduit.QAD.Types.Date

    field :wo__qadt02, Conduit.QAD.Types.Date

    field :wo__qade01, :decimal

    field :wo__qade02, :decimal

    field :wo__qade03, :decimal

    field :wo__qadi01, :integer

    field :wo__qadi02, :integer

    field :wo__qadl01, Conduit.QAD.Types.Bool

    field :wo__qadl02, Conduit.QAD.Types.Bool

    field :wo_eng_code, :string

    field :wo_sub, :string

    field :wo_flr_sub, :string

    field :wo_mvar_sub, :string

    field :wo_mvrr_sub, :string

    field :wo_svar_sub, :string

    field :wo_svrr_sub, :string

    field :wo_xvar_sub, :string

    field :wo_ref, :string

    field :wo_record_date, Conduit.QAD.Types.Date

    field :wo_stat_close_date, Conduit.QAD.Types.Date

    field :wo_stat_close_userid, :string

    field :wo_app_owner, :string

    field :wo_domain, :string

    field :oid_wo_mstr, :decimal, primary_key: true

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
