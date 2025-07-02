defmodule Elixir.Conduit.QAD.Table.Svc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_svc_ctrl" do
    field :svc_code, :string

    field :svc_dflt_pri, :integer

    field :svc_prt_0itm, Conduit.QAD.Types.Bool

    field :svc_dispatch, Conduit.QAD.Types.Bool

    field :svc_pt_isb, Conduit.QAD.Types.Bool

    field :svc_eng_lbcd, :string

    field :svc_ship_isb, Conduit.QAD.Types.Bool

    field :svc_dflt_cyc, :string

    field :svc_hold_call, :integer

    field :svc_dflt_tm, :string

    field :svc_cmmts, Conduit.QAD.Types.Bool

    field :svc_dflt_que, :string

    field :svc_trvl_um, :string

    field :svc_site, :string

    field :svc_loc, :string

    field :svc_um, :string

    field :svc_auto_ext, Conduit.QAD.Types.Bool

    field :svc_arears, Conduit.QAD.Types.Bool

    field :svc_open, :string

    field :svc_close, :string

    field :svc_per_bill, Conduit.QAD.Types.Bool

    field :svc_prorate, Conduit.QAD.Types.Bool

    field :svc_auto_tim, Conduit.QAD.Types.Bool

    field :svc_sys_type, :string

    field :svc_que_prog, :integer

    field :svc_call_pre, :string

    field :svc__chr01, :string

    field :svc__chr02, :string

    field :svc__chr03, :string

    field :svc__chr04, :string

    field :svc__chr05, :string

    field :svc__chr06, :string

    field :svc__log01, Conduit.QAD.Types.Bool

    field :svc__log02, Conduit.QAD.Types.Bool

    field :svc__log03, Conduit.QAD.Types.Bool

    field :svc__log04, Conduit.QAD.Types.Bool

    field :svc__log05, Conduit.QAD.Types.Bool

    field :svc__log06, Conduit.QAD.Types.Bool

    field :svc__log07, Conduit.QAD.Types.Bool

    field :svc__chr07, :string

    field :svc__chr08, :string

    field :svc__chr09, :string

    field :svc__chr10, :string

    field :svc__log08, Conduit.QAD.Types.Bool

    field :svc__log09, Conduit.QAD.Types.Bool

    field :svc__log10, Conduit.QAD.Types.Bool

    field :svc__dec01, :decimal

    field :svc__dec02, :decimal

    field :svc__dec03, :decimal

    field :svc__dec04, :decimal

    field :svc_plst_pct, :decimal

    field :svc_inst_cl, Conduit.QAD.Types.Bool

    field :svc_srstatus, :string

    field :svc_sr_pre, :string

    field :svc_que_paus, :integer

    field :svc_serial, :string

    field :svc_pt_mstr, Conduit.QAD.Types.Bool

    field :svc_sub_cvr, Conduit.QAD.Types.Bool

    field :svc_ins_days, :integer

    field :svc_node, :string

    field :svc_warr_st, Conduit.QAD.Types.Bool

    field :svc_isb_hist, Conduit.QAD.Types.Bool

    field :svc_rma_hist, Conduit.QAD.Types.Bool

    field :svc_pvm_cl, Conduit.QAD.Types.Bool

    field :svc_warr_svcode, :string

    field :svc_warr_cd, :string

    field :svc_sv_cd, :string

    field :svc_tm_cd, :string

    field :svc_gw_cd, :string

    field :svc_bill, Conduit.QAD.Types.Bool

    field :svc_call_pdev, :string

    field :svc_autorenew, Conduit.QAD.Types.Bool

    field :svc_user1, :string

    field :svc_user2, :string

    field :svc_esc_sch, Conduit.QAD.Types.Bool

    field :svc_esc_prt, :string

    field :svc_mand_po, Conduit.QAD.Types.Bool

    field :svc_ivc_hold, Conduit.QAD.Types.Bool

    field :svc_fault_code, Conduit.QAD.Types.Bool

    field :svc_gw_svcode, :string

    field :svc_sa_cd, :string

    field :svc_temp_cus, :string

    field :svc_temp_close, Conduit.QAD.Types.Bool

    field :svc_gen_0itm, Conduit.QAD.Types.Bool

    field :svc_cp_sauser, Conduit.QAD.Types.Bool

    field :svc_cp_causer, Conduit.QAD.Types.Bool

    field :svc_isb_compbom, Conduit.QAD.Types.Bool

    field :svc_isb_bom, Conduit.QAD.Types.Bool

    field :svc_time_zone, :integer

    field :svc__qadl04, Conduit.QAD.Types.Bool

    field :svc_sa_account, Conduit.QAD.Types.Bool

    field :svc_isb_repair, :string

    field :svc_ca_sys, Conduit.QAD.Types.Bool

    field :svc_travel_step, :integer

    field :svc_ca_est_time, :string

    field :svc_srr_close, :string

    field :svc_srr_open, :string

    field :svc_assign_eng, Conduit.QAD.Types.Bool

    field :svc_schedule_ca, Conduit.QAD.Types.Bool

    field :svc_esc_pause, :integer

    field :svc_esc_user, :string

    field :svc_esc_dflt, :string

    field :svc_avoidance, Conduit.QAD.Types.Bool, primary_key: true

    field :svc__qadl06, Conduit.QAD.Types.Bool

    field :svc__qadi04, :integer

    field :svc_ca_est_trv, :string

    field :svc_ca_model, Conduit.QAD.Types.Bool

    field :svc_chg_cd, :string

    field :svc_chg_svcode, :string

    field :svc_isb_nsbom, Conduit.QAD.Types.Bool

    field :svc_pt_prod, Conduit.QAD.Types.Bool

    field :svc_sap_bom_type, :string

    field :svc_sa_accounts, Conduit.QAD.Types.Bool

    field :svc__qadl07, Conduit.QAD.Types.Bool

    field :svc_ca_pvm_type, :string

    field :svc_ca_upd_type, :string

    field :svc_ca_ins_type, :string

    field :svc_ca_cor_type, :string

    field :svc_ca_tec_type, :string

    field :svc_ca_time_wnd, Conduit.QAD.Types.Bool

    field :svc_ca_wo_wnd, Conduit.QAD.Types.Bool

    field :svc_create_cus, Conduit.QAD.Types.Bool

    field :svc_ack_letter, Conduit.QAD.Types.Bool

    field :svc_comp_status, :string

    field :svc_con_fsc_code, :string

    field :svc_eg_tax_usage, :string

    field :svc_exch_um, :string

    field :svc_ex_tax_usage, :string

    field :svc_fixed_um, :string

    field :svc_hold_status, :string

    field :svc_invoice_sts, :string

    field :svc_lb_tax_usage, :string

    field :svc_pc_list_type, Conduit.QAD.Types.Bool

    field :svc_pts_fsc_code, :string

    field :svc_pt_tax_usage, :string

    field :svc_tax_environ, :string

    field :svc_trace, Conduit.QAD.Types.Bool

    field :svc_wait_status, :string

    field :svc_scheduler, :integer

    field :svc_cancl_status, :string

    field :svc_close_record, Conduit.QAD.Types.Bool

    field :svc_invoice_acct, Conduit.QAD.Types.Bool

    field :svc_ca_coverage, Conduit.QAD.Types.Bool

    field :svc_ca_allow_inv, Conduit.QAD.Types.Bool

    field :svc_ca_print0, Conduit.QAD.Types.Bool

    field :svc_ca_inv_draft, Conduit.QAD.Types.Bool

    field :svc_return_sts, :string

    field :svc_scrap_sts, :string

    field :svc_invoice_cost, Conduit.QAD.Types.Bool

    field :svc_rc_transfer, Conduit.QAD.Types.Bool

    field :svc_dflt_warr, :string

    field :svc_pm_est_time, :string

    field :svc_upd_est_time, :string

    field :svc_inst_est_time, :string

    field :svc_corr_est_time, :string

    field :svc_wkctr, :string

    field :svc_db_timezone, :string

    field :svc__qadc03, :string

    field :svc__qadt01, Conduit.QAD.Types.Date

    field :svc__qadt02, Conduit.QAD.Types.Date

    field :svc__qadt03, Conduit.QAD.Types.Date

    field :svc__qadd01, :decimal

    field :svc__qadd02, :decimal

    field :svc__qadd03, :decimal

    field :svc_project_hndl, :integer

    field :svc__qadi02, :integer

    field :svc__qadi03, :integer

    field :svc__qadl01, Conduit.QAD.Types.Bool

    field :svc__qadl02, Conduit.QAD.Types.Bool

    field :svc__qadl03, Conduit.QAD.Types.Bool

    field :svc_mod_userid, :string

    field :svc_mod_date, Conduit.QAD.Types.Date

    field :svc_multi_time_zones, Conduit.QAD.Types.Bool

    field :svc_server_timezone, :string

    field :svc_itm_data, Conduit.QAD.Types.Bool

    field :svc__qadc04, :string

    field :svc__qadc05, :string

    field :svc__qadi05, :integer

    field :svc_domain, :string

    field :oid_svc_ctrl, :decimal, primary_key: true

    field :svc_sched_status, :string

    field :svc_trv_fsc_code, :string

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
