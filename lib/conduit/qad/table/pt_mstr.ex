defmodule Elixir.Conduit.QAD.Table.Pt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pt_mstr" do
    field :pt_part, :string

    field :pt_desc1, :string

    field :pt_desc2, :string

    field :pt_um, :string

    field :pt__qad13, :string

    field :pt__qad12, :decimal

    field :pt_draw, :string

    field :pt_prod_line, :string

    field :pt_group, :string

    field :pt_part_type, :string

    field :pt_status, :string

    field :pt_abc, :string

    field :pt_iss_pol, Conduit.QAD.Types.Bool

    field :pt_phantom, Conduit.QAD.Types.Bool

    field :pt_loc, :string

    field :pt__qad01, :decimal

    field :pt__qad02, :decimal

    field :pt_abc_amt, :decimal

    field :pt__qad03, :decimal

    field :pt__qad04, :decimal

    field :pt_avg_int, :integer

    field :pt__qad05, Conduit.QAD.Types.Date

    field :pt_cyc_int, :integer

    field :pt__qad06, Conduit.QAD.Types.Date

    field :pt__qad07, Conduit.QAD.Types.Date

    field :pt__qad08, Conduit.QAD.Types.Date

    field :pt_ms, Conduit.QAD.Types.Bool

    field :pt_plan_ord, Conduit.QAD.Types.Bool

    field :pt_mrp, Conduit.QAD.Types.Bool

    field :pt_ord_pol, :string

    field :pt_ord_qty, :decimal

    field :pt_ord_per, :integer

    field :pt_sfty_stk, :decimal

    field :pt_sfty_time, :decimal

    field :pt_rop, :decimal

    field :pt_buyer, :string

    field :pt_vend, :string

    field :pt__qad09, :decimal

    field :pt_pm_code, :string

    field :pt_mfg_lead, :decimal

    field :pt_pur_lead, :integer

    field :pt_insp_rqd, Conduit.QAD.Types.Bool

    field :pt_insp_lead, :integer

    field :pt_cum_lead, :integer

    field :pt_ord_min, :decimal

    field :pt_ord_max, :decimal

    field :pt_ord_mult, :decimal

    field :pt_yield_pct, :decimal

    field :pt__qad16, :decimal

    field :pt_setup, :decimal

    field :pt_setup_ll, :decimal

    field :pt_run_ll, :decimal

    field :pt_run, :decimal

    field :pt_price, :decimal

    field :pt_xmtl_tl, :decimal

    field :pt_xlbr_tl, :decimal

    field :pt_xbdn_tl, :decimal

    field :pt_xsub_tl, :decimal

    field :pt_xmtl_ll, :decimal

    field :pt_xlbr_ll, :decimal

    field :pt_xbdn_ll, :decimal

    field :pt_xsub_ll, :decimal

    field :pt_xtot_cur, :decimal

    field :pt_cur_date, Conduit.QAD.Types.Date

    field :pt_xmtl_stdtl, :decimal

    field :pt_xlbr_stdtl, :decimal

    field :pt_xbdn_stdtl, :decimal

    field :pt_xsub_stdtl, :decimal

    field :pt_xtot_std, :decimal

    field :pt_std_date, Conduit.QAD.Types.Date

    field :pt_ll_code, :integer

    field :pt_abc_qty, :decimal

    field :pt__qad10, :decimal

    field :pt__qad11, :decimal

    field :pt_routing, :string

    field :pt_lot_ser, :string

    field :pt_timefence, :integer

    field :pt_xmtl_stdll, :decimal

    field :pt_xlbr_stdll, :decimal

    field :pt_xbdn_stdll, :decimal

    field :pt_xsub_stdll, :decimal

    field :pt_rev, :string

    field :pt_last_eco, Conduit.QAD.Types.Date

    field :pt__qad15, Conduit.QAD.Types.Bool

    field :pt__qad17, Conduit.QAD.Types.Bool

    field :pt_qc_lead, :integer

    field :pt_auto_lot, Conduit.QAD.Types.Bool

    field :pt_assay, :decimal

    field :pt_batch, :decimal

    field :pt__qad14, Conduit.QAD.Types.Date

    field :pt_user3, :string

    field :pt_user1, :string

    field :pt_user2, :string

    field :pt_net_wt, :decimal

    field :pt_net_wt_um, :string

    field :pt_size, :decimal

    field :pt_size_um, :string

    field :pt_taxable, Conduit.QAD.Types.Bool

    field :pt_taxc, :string

    field :pt_rollup, Conduit.QAD.Types.Bool

    field :pt_xovh_ll, :decimal

    field :pt_xovh_tl, :decimal

    field :pt_xovh_stdll, :decimal

    field :pt_xovh_stdtl, :decimal

    field :pt_site, :string

    field :pt_shelflife, :integer

    field :pt_critical, Conduit.QAD.Types.Bool

    field :pt_sngl_lot, Conduit.QAD.Types.Bool

    field :pt_upc, :string

    field :pt_hazard, :string

    field :pt_added, Conduit.QAD.Types.Date

    field :pt__chr01, :string

    field :pt__chr02, :string

    field :pt__chr03, :string

    field :pt__chr04, :string

    field :pt__chr05, :string

    field :pt__chr06, :string

    field :pt__chr07, :string

    field :pt__chr08, :string

    field :pt__chr09, :string

    field :pt__chr10, :string

    field :pt__dte01, Conduit.QAD.Types.Date

    field :pt__dte02, Conduit.QAD.Types.Date

    field :pt__dec01, :decimal

    field :pt__dec02, :decimal

    field :pt__log01, Conduit.QAD.Types.Bool

    field :pt__log02, Conduit.QAD.Types.Bool

    field :pt__qad18, :decimal

    field :pt__qad21, :decimal

    field :pt__qad19, :decimal

    field :pt__qad20, :decimal

    field :pt_length, :decimal

    field :pt_height, :decimal

    field :pt_width, :decimal

    field :pt_dim_um, :string

    field :pt_pkg_code, :string

    field :pt_network, :string

    field :pt_ll_drp, :integer

    field :pt_fr_class, :string

    field :pt_spec_hdlg, :string

    field :pt_bom_code, :string

    field :pt_loc_type, :string

    field :pt_transtype, :string

    field :pt_cover, :string

    field :pt_unit_isb, Conduit.QAD.Types.Bool

    field :pt_article, :string

    field :pt_po_site, :string

    field :pt_ship_wt, :decimal

    field :pt_ship_wt_um, :string

    field :pt_formula, Conduit.QAD.Types.Bool

    field :pt_dea, Conduit.QAD.Types.Bool

    field :pt__qad26, Conduit.QAD.Types.Bool

    field :pt__qad22, Conduit.QAD.Types.Bool

    field :pt__qad25, :integer

    field :pt__qad24, :integer

    field :pt__qad23, :integer

    field :pt_comm_code, :string

    field :pt_inst_call, Conduit.QAD.Types.Bool

    field :pt_sys_type, :string

    field :pt_tariff, :string

    field :pt_origin, :string

    field :pt_sttr, :decimal

    field :pt_mfg_mtbf, :decimal

    field :pt_mfg_mttr, :decimal

    field :pt_fru, Conduit.QAD.Types.Bool

    field :pt_ven_warr, Conduit.QAD.Types.Bool

    field :pt_svc_group, :string

    field :pt_svc_type, :string

    field :pt_mtbf, :decimal

    field :pt_mttr, :decimal

    field :pt_isb, Conduit.QAD.Types.Bool

    field :pt_pvm_days, :integer

    field :pt_warr_cd, :string

    field :pt_mod_date, Conduit.QAD.Types.Date

    field :pt_userid, :string

    field :pt_obs_date, Conduit.QAD.Types.Date

    field :pt_pvm_bom, :string

    field :pt_pvm_route, :string

    field :pt_pvm_um, :string

    field :pt_rp_bom, :string

    field :pt_rp_route, :string

    field :pt_rp_vendor, :string

    field :pt_rctpo_status, :string

    field :pt_rollup_id, :string

    field :pt_spec_grav, :decimal

    field :pt_joint_type, :string

    field :pt_mfg_pct, :decimal

    field :pt_pur_pct, :decimal

    field :pt_drp_pct, :decimal

    field :pt_pou_code, :string

    field :pt_wks_avg, :decimal

    field :pt_wks_max, :decimal

    field :pt_wks_min, :decimal

    field :pt_pick_logic, :integer

    field :pt_fiscal_class, :string

    field :pt_dsgn_grp, :string

    field :pt_drwg_loc, :string

    field :pt_ecn_rev, :string

    field :pt_drwg_size, :string

    field :pt_model, :string

    field :pt_repairable, Conduit.QAD.Types.Bool

    field :pt_rctwo_status, :string

    field :pt_lot_grp, :string

    field :pt_rctpo_active, Conduit.QAD.Types.Bool

    field :pt_rctwo_active, Conduit.QAD.Types.Bool

    field :pt_break_cat, :string

    field :pt_fsc_code, :string

    field :pt_trace_active, Conduit.QAD.Types.Bool

    field :pt_trace_detail, Conduit.QAD.Types.Bool

    field :pt_pm_mrp, Conduit.QAD.Types.Bool

    field :pt_ins_call_type, :string

    field :pt_ins_bom, :string

    field :pt_ins_route, :string

    field :pt_promo, :string

    field :pt_meter_interval, :decimal

    field :pt_meter_um, :string

    field :pt_wh, Conduit.QAD.Types.Bool

    field :pt_btb_type, :string

    field :pt_cfg_type, :string

    field :pt_app_owner, :string

    field :pt_op_yield, Conduit.QAD.Types.Bool

    field :pt_run_seq1, :string

    field :pt_run_seq2, :string

    field :pt_atp_enforcement, :string

    field :pt_atp_family, Conduit.QAD.Types.Bool

    field :pt_domain, :string

    field :oid_pt_mstr, :decimal, primary_key: true

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
