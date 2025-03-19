defmodule Conduit.Repo.Migrations.AddQadTablesDetail do
  use Ecto.Migration

  def up do
    create table("QAD_WO_MSTR") do
      add :wo_nbr, :string
      add :wo_lot, :string

      add :wo_so_job, :string

      add :wo_ord_date, :naive_datetime

      add :wo_rel_date, :naive_datetime

      add :wo_due_date, :naive_datetime

      add :wo_per_date, :naive_datetime

      add :wo_part, :string

      add :wo_type, :string

      add :wo_qty_ord, :decimal

      add :wo_qty_comp, :decimal

      add :wo_qty_rjct, :decimal

      add :wo_status, :string

      add :wo_vend, :string

      add :wo_rmks, :string

      add :wo_qty_chg, :decimal

      add :wo_rjct_chg, :decimal

      add :wo_bo_chg, :decimal

      add :wo_yield_pct, :decimal

      add :wo_rev, :string

      add :wo_acct, :string

      add :wo_cc, :string

      add :wo__qad01, :string

      add :wo_lot_prev, :string

      add :wo_schd_type, :string

      add :wo_cmtindx, :integer

      add :wo_project, :string

      add :wo_lead_time, :integer

      add :wo_wip_tot, :decimal

      add :wo_lbr_tot, :decimal

      add :wo_mtl_tot, :decimal

      add :wo_bdn_tot, :decimal

      add :wo_sub_tot, :decimal

      add :wo_user1, :string

      add :wo_user2, :string

      add :wo_ovh_tot, :decimal

      add :wo_loc, :string

      add :wo_serial, :string

      add :wo_routing, :string

      add :wo_bom_code, :string

      add :wo_site, :string

      add :wo_queue_eff, :decimal

      add :wo_draw, :string

      add :wo_lbr_up, :boolean

      add :wo_bdn_up, :boolean

      add :wo_gl_lbr, :boolean

      add :wo_gl_bdn, :boolean

      add :wo__chr01, :string

      add :wo__chr02, :string

      add :wo__chr03, :string

      add :wo__chr04, :string

      add :wo__chr05, :string

      add :wo__dte01, :naive_datetime

      add :wo__dte02, :naive_datetime

      add :wo__dec01, :decimal

      add :wo__dec02, :decimal

      add :wo__log01, :boolean

      add :wo_line, :string

      add :wo_var, :boolean

      add :wo_mtl_var, :decimal

      add :wo_lbr_var, :decimal

      add :wo_bdn_var, :decimal

      add :wo_sub_var, :decimal

      add :wo_mvar_acct, :string

      add :wo_mvar_cc, :string

      add :wo_mvrr_acct, :string

      add :wo_mvrr_cc, :string

      add :wo_svar_acct, :string

      add :wo_svar_cc, :string

      add :wo_svrr_acct, :string

      add :wo_svrr_cc, :string

      add :wo_flr_acct, :string

      add :wo_flr_cc, :string

      add :wo__dec03, :decimal

      add :wo_rjct_tot, :decimal

      add :wo_mthd_var, :decimal

      add :wo_rval_tot, :decimal

      add :wo_acct_close, :boolean

      add :wo_close_date, :naive_datetime

      add :wo_close_eff, :naive_datetime

      add :wo_fsm_type, :string

      add :wo_xvar_acct, :string

      add :wo_xvar_cc, :string

      add :wo_myld_var, :decimal

      add :wo_joint_type, :string

      add :wo_prod_pct, :decimal

      add :wo_qty_type, :string

      add :wo__dec04, :decimal

      add :wo_base_id, :string

      add :wo_unit_cost, :decimal

      add :wo_mix_var, :decimal

      add :wo_bdn_totx, :decimal

      add :wo_lbr_totx, :decimal

      add :wo_mtl_totx, :decimal

      add :wo_sub_totx, :decimal

      add :wo_ovh_totx, :decimal

      add :wo_rctstat_active, :boolean

      add :wo_batch, :string

      add :wo_assay, :decimal

      add :wo_grade, :string

      add :wo_expire, :naive_datetime

      add :wo_rctstat, :string

      add :wo_lot_next, :string

      add :wo_lot_rcpt, :boolean

      add :wo_ca_int_type, :string

      add :wo_iss_site, :string

      add :wo_itm_line, :integer

      add :wo_date_posted, :naive_datetime

      add :wo__qadc01, :string

      add :wo__qadc02, :string

      add :wo__qadc03, :string

      add :wo__qadt01, :naive_datetime

      add :wo__qadt02, :naive_datetime

      add :wo__qade01, :decimal

      add :wo__qade02, :decimal

      add :wo__qade03, :decimal

      add :wo__qadi01, :integer

      add :wo__qadi02, :integer

      add :wo__qadl01, :boolean

      add :wo__qadl02, :boolean

      add :wo_eng_code, :string

      add :wo_sub, :string

      add :wo_flr_sub, :string

      add :wo_mvar_sub, :string

      add :wo_mvrr_sub, :string

      add :wo_svar_sub, :string

      add :wo_svrr_sub, :string

      add :wo_xvar_sub, :string

      add :wo_ref, :string

      add :wo_record_date, :naive_datetime

      add :wo_stat_close_date, :naive_datetime

      add :wo_stat_close_userid, :string

      add :wo_app_owner, :string

      add :wo_domain, :string

      add :oid_wo_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WOD_DET") do
      add :wod_nbr, :string

      add :wod_lot, :string

      add :wod_iss_date, :naive_datetime

      add :wod_part, :string

      add :wod_qty_req, :decimal

      add :wod_qty_all, :decimal

      add :wod_qty_pick, :decimal

      add :wod_qty_iss, :decimal

      add :wod_tot_std, :decimal

      add :wod_deliver, :string

      add :wod_qty_chg, :decimal

      add :wod_bo_chg, :decimal

      add :wod_loc, :string

      add :wod_serial, :string

      add :wod_cmtindx, :integer

      add :wod_user1, :string

      add :wod_user2, :string

      add :wod_op, :integer

      add :wod_critical, :boolean

      add :wod_site, :string

      add :wod__chr01, :string

      add :wod__chr02, :string

      add :wod__chr03, :string

      add :wod__chr04, :string

      add :wod__chr05, :string

      add :wod__dte01, :naive_datetime

      add :wod__dte02, :naive_datetime

      add :wod__dec01, :decimal

      add :wod__dec02, :decimal

      add :wod__log01, :boolean

      add :wod_bom_qty, :decimal

      add :wod_mtl_totx, :decimal

      add :wod_mvuse_post, :decimal

      add :wod_bom_amt, :decimal

      add :wod_mvrte_post, :decimal

      add :wod_mvrte_rval, :decimal

      add :wod_mvuse_rval, :decimal

      add :wod_mvrte_accr, :decimal

      add :wod_mvuse_accr, :decimal

      add :wod_ca_int_type, :string

      add :wod_covered_amt, :decimal

      add :wod_eng_code, :string

      add :wod_fcg_code, :string

      add :wod_fcg_index, :integer

      add :wod_fis_column, :integer

      add :wod_fis_sort, :string

      add :wod_fsc_code, :string

      add :wod_fsm_type, :string

      add :wod_list_pr, :decimal

      add :wod_price, :decimal

      add :wod_prod_line, :string

      add :wod_qty_posted, :decimal

      add :wod_qty_ret, :decimal

      add :wod_status, :string

      add :wod_line_price, :decimal

      add :wod_covered_post, :decimal

      add :wod_sv_code, :string

      add :wod_project, :string

      add :wod_ret_iss, :decimal

      add :wod_exg_price, :decimal

      add :wod_ret_site, :string

      add :wod_ret_loc, :string

      add :wod_std_cost, :decimal

      add :wod_itm_line, :integer

      add :wod_sod_line, :integer

      add :wod_sod_nbr, :string

      add :wod_seo_load, :boolean

      add :wod_from_loc, :string

      add :wod_from_site, :string

      add :wod_ref, :string

      add :wod_ret_serial, :string

      add :wod__qadc01, :string

      add :wod__qadc02, :string

      add :wod__qadc03, :string

      add :wod__qadt01, :naive_datetime

      add :wod__qadt02, :naive_datetime

      add :wod__qade01, :decimal

      add :wod__qade02, :decimal

      add :wod__qadl01, :boolean

      add :wod__qadl02, :boolean

      add :wod_isb_ref, :integer

      add :wod_ret_ref, :string

      add :wod_yield_pct, :decimal

      add :wod_domain, :string

      add :oid_wod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLT_MSTR") do
      add :wlt_tr_type, :string

      add :wlt_trnbr, :integer

      add :wlt_prcons_ind, :boolean

      add :wlt_mtl_type, :string

      add :wlt_prodby_id, :string

      add :wlt_prodby_op, :integer

      add :wlt_part, :string

      add :wlt_lotser, :string

      add :wlt_ref, :string

      add :wlt_qty, :decimal

      add :wlt_cr_date, :naive_datetime

      add :wlt_cr_time, :integer

      add :wlt_mod_date, :naive_datetime

      add :wlt_mod_time, :integer

      add :wlt_mod_userid, :string

      add :wlt__qadc01, :string

      add :wlt__qadc02, :string

      add :wlt__qadc03, :string

      add :wlt__qadc04, :string

      add :wlt__qadd01, :decimal

      add :wlt__qadd02, :decimal

      add :wlt__qadi01, :integer

      add :wlt__qadi02, :integer

      add :wlt__qadl01, :boolean

      add :wlt__qadl02, :boolean

      add :wlt__qadt01, :naive_datetime

      add :wlt__qadt02, :naive_datetime

      add :wlt__chr01, :string

      add :wlt__chr02, :string

      add :wlt__chr03, :string

      add :wlt__chr04, :string

      add :wlt__dec01, :decimal

      add :wlt__dec02, :decimal

      add :wlt__int01, :integer

      add :wlt__int02, :integer

      add :wlt__log01, :boolean

      add :wlt__log02, :boolean

      add :wlt__dte01, :naive_datetime

      add :wlt__dte02, :naive_datetime

      add :wlt_user1, :string

      add :wlt_user2, :string

      add :wlt_domain, :string

      add :oid_wlt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLRM_MSTR") do
      add :wlrm_routing, :string

      add :wlrm_start, :naive_datetime

      add :wlrm_trc_parent, :boolean

      add :wlrm_maxlotsize, :decimal

      add :wlrm_nrm_id, :string

      add :wlrm_wip_split_ok, :boolean

      add :wlrm_wip_cmb_ok, :boolean

      add :wlrm_overissue, :boolean

      add :wlrm_lt_startop, :integer

      add :wlrm_ser_startop, :integer

      add :wlrm_end, :naive_datetime

      add :wlrm_mod_date, :naive_datetime

      add :wlrm_mod_userid, :string

      add :wlrm__qadc01, :string

      add :wlrm__qadc02, :string

      add :wlrm__qadc03, :string

      add :wlrm__qadc04, :string

      add :wlrm__qadd01, :decimal

      add :wlrm__qadd02, :decimal

      add :wlrm__qadi01, :integer

      add :wlrm__qadi02, :integer

      add :wlrm__qadl01, :boolean

      add :wlrm__qadl02, :boolean

      add :wlrm__qadt01, :naive_datetime

      add :wlrm__qadt02, :naive_datetime

      add :wlrm__chr01, :string

      add :wlrm__chr02, :string

      add :wlrm__chr03, :string

      add :wlrm__chr04, :string

      add :wlrm__dec01, :decimal

      add :wlrm__dec02, :decimal

      add :wlrm__int01, :integer

      add :wlrm__int02, :integer

      add :wlrm__log01, :boolean

      add :wlrm__log02, :boolean

      add :wlrm__dte01, :naive_datetime

      add :wlrm__dte02, :naive_datetime

      add :wlrm_user1, :string

      add :wlrm_user2, :string

      add :wlrm_domain, :string

      add :oid_wlrm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLRD_DET") do
      add :wlrd_routing, :string

      add :wlrd_op, :integer

      add :wlrd_start, :naive_datetime

      add :wlrd_wip_split_ok, :boolean

      add :wlrd_wip_cmb_ok, :boolean

      add :wlrd_overissue, :boolean

      add :wlrd_mod_date, :naive_datetime

      add :wlrd_mod_userid, :string

      add :wlrd__qadc01, :string

      add :wlrd__qadc02, :string

      add :wlrd__qadc03, :string

      add :wlrd__qadc04, :string

      add :wlrd__qadd01, :decimal

      add :wlrd__qadd02, :decimal

      add :wlrd__qadi01, :integer

      add :wlrd__qadi02, :integer

      add :wlrd__qadl01, :boolean

      add :wlrd__qadl02, :boolean

      add :wlrd__qadt01, :naive_datetime

      add :wlrd__qadt02, :naive_datetime

      add :wlrd__chr01, :string

      add :wlrd__chr02, :string

      add :wlrd__chr03, :string

      add :wlrd__chr04, :string

      add :wlrd__dec01, :decimal

      add :wlrd__dec02, :decimal

      add :wlrd__int01, :integer

      add :wlrd__int02, :integer

      add :wlrd__log01, :boolean

      add :wlrd__log02, :boolean

      add :wlrd__dte01, :naive_datetime

      add :wlrd__dte02, :naive_datetime

      add :wlrd_user1, :string

      add :wlrd_user2, :string

      add :wlrd_domain, :string

      add :oid_wlrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLD_DET") do
      add :wld_prodby_id, :string

      add :wld_prodby_op, :integer

      add :wld_lotser, :string

      add :wld_ref, :string

      add :wld_site, :string

      add :wld_wkctr, :string

      add :wld_mch, :string

      add :wld_alloc_id, :string

      add :wld_alloc_op, :integer

      add :wld_alloc_que, :string

      add :wld_qty_oh, :decimal

      add :wld_mod_date, :naive_datetime

      add :wld_mod_userid, :string

      add :wld__qadc01, :string

      add :wld__qadc02, :string

      add :wld__qadc03, :string

      add :wld__qadc04, :string

      add :wld__qadd01, :decimal

      add :wld__qadd02, :decimal

      add :wld__qadi01, :integer

      add :wld__qadi02, :integer

      add :wld__qadl01, :boolean

      add :wld__qadl02, :boolean

      add :wld__qadt01, :naive_datetime

      add :wld__qadt02, :naive_datetime

      add :wld__chr01, :string

      add :wld__chr02, :string

      add :wld__chr03, :string

      add :wld__chr04, :string

      add :wld__dec01, :decimal

      add :wld__dec02, :decimal

      add :wld__int01, :integer

      add :wld__int02, :integer

      add :wld__log01, :boolean

      add :wld__log02, :boolean

      add :wld__dte01, :naive_datetime

      add :wld__dte02, :naive_datetime

      add :wld_user1, :string

      add :wld_user2, :string

      add :wld_domain, :string

      add :oid_wld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLBM_MSTR") do
      add :wlbm_bom_code, :string

      add :wlbm_start, :naive_datetime

      add :wlbm_trc_comps, :boolean

      add :wlbm_trc_ref, :boolean

      add :wlbm_comp_cmb_ok, :boolean

      add :wlbm_end, :naive_datetime

      add :wlbm_mod_date, :naive_datetime

      add :wlbm_mod_userid, :string

      add :wlbm__qadc01, :string

      add :wlbm__qadc02, :string

      add :wlbm__qadc03, :string

      add :wlbm__qadc04, :string

      add :wlbm__qadd01, :decimal

      add :wlbm__qadd02, :decimal

      add :wlbm__qadi01, :integer

      add :wlbm__qadi02, :integer

      add :wlbm__qadl01, :boolean

      add :wlbm__qadl02, :boolean

      add :wlbm__qadt01, :naive_datetime

      add :wlbm__qadt02, :naive_datetime

      add :wlbm__chr01, :string

      add :wlbm__chr02, :string

      add :wlbm__chr03, :string

      add :wlbm__chr04, :string

      add :wlbm__dec01, :decimal

      add :wlbm__dec02, :decimal

      add :wlbm__int01, :integer

      add :wlbm__int02, :integer

      add :wlbm__log01, :boolean

      add :wlbm__log02, :boolean

      add :wlbm__dte01, :naive_datetime

      add :wlbm__dte02, :naive_datetime

      add :wlbm_user1, :string

      add :wlbm_user2, :string

      add :wlbm_domain, :string

      add :oid_wlbm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VRC_CTRL") do
      add :vrc_v86, :string

      add :vrc_user1, :string

      add :vrc_user2, :string

      add :vrc__qadc01, :string

      add :vrc_domain, :string

      add :oid_vrc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VPO_DET") do
      add :vpo_ref, :string

      add :vpo_po, :string

      add :vpo_user1, :string

      add :vpo_user2, :string

      add :vpo__qadc01, :string

      add :vpo_domain, :string

      add :oid_vpo_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEP_MSTR") do
      add :vep_vendor, :string

      add :vep_vendor_source, :string

      add :vep_tran_date, :naive_datetime

      add :vep_tran_id, :integer

      add :vep_order_source, :string

      add :vep_nbr, :string

      add :vep_req_nbr, :string

      add :vep_line, :integer

      add :vep_receiver, :string

      add :vep_abs_id, :string

      add :vep_part, :string

      add :vep_um, :string

      add :vep_comm_code, :string

      add :vep_acct, :string

      add :vep_cc, :string

      add :vep_buyer, :string

      add :vep_per_date, :naive_datetime

      add :vep_lotser, :string

      add :vep_site, :string

      add :vep_type, :string

      add :vep_rcp_type, :string

      add :vep_fsm_type, :string

      add :vep_pur_cost, :decimal

      add :vep_disc_pct, :decimal

      add :vep_rcp_date, :naive_datetime

      add :vep_rcp_time, :integer

      add :vep_qty_ord, :decimal

      add :vep_open_qty, :decimal

      add :vep_rcvd_qty, :decimal

      add :vep_loc, :string

      add :vep_ref, :string

      add :vep_asn_arr_date, :naive_datetime

      add :vep_asn_arr_time, :integer

      add :vep_asn_ship_date, :naive_datetime

      add :vep_asn_ship_time, :integer

      add :vep_asn_ship_qty, :decimal

      add :vep_asn_create_date, :naive_datetime

      add :vep_asn_create_time, :integer

      add :vep_temp_missed_flag, :boolean

      add :vep_pod_sched, :boolean

      add :vep_db, :string

      add :vep_sub_type, :string

      add :vep_mod_userid, :string

      add :vep_mod_date, :naive_datetime

      add :vep_user1, :string

      add :vep_user2, :string

      add :vep_user3, :string

      add :vep_user4, :string

      add :vep__qadc01, :string

      add :vep__qadc02, :string

      add :vep__qadc03, :string

      add :vep__qadc04, :string

      add :vep__qadd01, :decimal

      add :vep__qadd02, :decimal

      add :vep__qadl01, :boolean

      add :vep__qadl02, :boolean

      add :vep__qadt01, :naive_datetime

      add :vep__qadt02, :naive_datetime

      add :vep__qadi01, :integer

      add :vep__qadi02, :integer

      add :vep_sub, :string

      add :vep_domain, :string

      add :oid_vep_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USRW_WKFL") do
      add :usrw_key1, :string

      add :usrw_key2, :string

      add :usrw_key3, :string

      add :usrw_key4, :string

      add :usrw_key5, :string

      add :usrw_key6, :string

      add :usrw_charfld, :string

      add :usrw_decfld, :decimal

      add :usrw_datefld, :naive_datetime

      add :usrw_user1, :string

      add :usrw_user2, :string

      add :usrw__qadc01, :string

      add :usrw_logfld, :boolean

      add :usrw_intfld, :integer

      add :usrw_domain, :string

      add :oid_usrw_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_UM_MSTR") do
      add :um_um, :string

      add :um_alt_um, :string

      add :um_conv, :decimal

      add :um_part, :string

      add :um_desc, :string

      add :um_alt_qty, :decimal

      add :um_decimals, :integer

      add :um_user1, :string

      add :um_user2, :string

      add :um__chr01, :string

      add :um__chr02, :string

      add :um__chr03, :string

      add :um__chr04, :string

      add :um__chr05, :string

      add :um__chr06, :string

      add :um__dec01, :decimal

      add :um__dec02, :decimal

      add :um__dte01, :naive_datetime

      add :um__dte02, :naive_datetime

      add :um__log01, :boolean

      add :um__log02, :boolean

      add :um_domain, :string

      add :oid_um_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXHD_DET") do
      add :txhd_tr_nbr, :integer

      add :txhd_ref, :string

      add :txhd_nbr, :string

      add :txhd_line, :integer

      add :txhd_trl, :string

      add :txhd_tr_type, :string

      add :txhd_tax_code, :string

      add :txhd_posted, :boolean

      add :txhd_fiscal_class, :string

      add :txhd_edit_hist, :boolean

      add :txhd_site, :string

      add :txhd_tax_ctry, :string

      add :txhd_tax_nbr, :string

      add :txhd_effdate, :naive_datetime

      add :txhd_program, :string

      add :txhd_trans_ref, :string

      add :txhd_vat_sl_in, :boolean

      add :txhd_td_stat_in, :boolean

      add :txhd_enter_date, :naive_datetime

      add :txhd_user_id, :string

      add :txhd_chg_date, :naive_datetime

      add :txhd_usr_id_chg, :string

      add :txhd_vat_sl_date, :naive_datetime

      add :txhd_stat_submit, :naive_datetime

      add :txhd_db_export, :naive_datetime

      add :txhd_cust_num, :string

      add :txhd_cust_ctry, :string

      add :txhd_vat_value, :decimal

      add :txhd_proc_ind, :boolean

      add :txhd_flow_in, :boolean

      add :txhd_comm_code, :string

      add :txhd_del_terms, :string

      add :txhd_tax_usage, :string

      add :txhd_desdis_ctry, :string

      add :txhd_tran_mode, :string

      add :txhd_orig_ctry, :string

      add :txhd_desdis_port, :string

      add :txhd_transh_port, :string

      add :txhd_stat_proc, :string

      add :txhd_container, :string

      add :txhd_taric, :string

      add :txhd_inv_value, :decimal

      add :txhd_stat_value, :decimal

      add :txhd_net_wt, :integer

      add :txhd_suppl_unit, :integer

      add :txhd_curr, :string

      add :txhd_user1, :string

      add :txhd_user2, :string

      add :txhd__chr01, :string

      add :txhd__chr02, :string

      add :txhd__dec01, :decimal

      add :txhd__dec02, :decimal

      add :txhd__dte01, :naive_datetime

      add :txhd__log01, :boolean

      add :txhd__qad01, :string

      add :txhd__qad02, :string

      add :txhd__qad03, :boolean

      add :txhd__qad04, :decimal

      add :txhd__qad05, :decimal

      add :txhd__qad06, :naive_datetime

      add :txhd_domain, :string

      add :oid_txhd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TRLD_DET") do
      add :trld_code, :string

      add :trld_tax_type, :string

      add :trld_taxable, :boolean

      add :trld_taxc, :string

      add :trld_user1, :string

      add :trld_user2, :string

      add :trld__chr01, :string

      add :trld__log01, :boolean

      add :trld__qad01, :string

      add :trld__qad02, :string

      add :trld__qad03, :decimal

      add :trld__qad04, :naive_datetime

      add :trld__qad05, :boolean

      add :trld_domain, :string

      add :oid_trld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VO_MSTR") do
      add :vo_ref, :string

      add :vo_cr_terms, :string

      add :vo_invoice, :string

      add :vo_applied, :decimal

      add :vo_disc_date, :naive_datetime

      add :vo_due_date, :naive_datetime

      add :vo_hold, :boolean

      add :vo_paid_date, :naive_datetime

      add :vo_amt_chg, :decimal

      add :vo_disc_chg, :decimal

      add :vo_po, :string

      add :vo_receiver, :string

      add :vo_ndisc_amt, :decimal

      add :vo_hold_amt, :decimal

      add :vo_cmtindx, :integer

      add :vo_curr, :string

      add :vo_ex_rate, :decimal

      add :vo_user1, :string

      add :vo_separate, :boolean

      add :vo_ship, :string

      add :vo__chr01, :string

      add :vo__chr02, :string

      add :vo__chr03, :string

      add :vo__chr04, :string

      add :vo__chr05, :string

      add :vo__dte01, :naive_datetime

      add :vo__dte02, :naive_datetime

      add :vo__dec01, :decimal

      add :vo__dec02, :decimal

      add :vo__log01, :boolean

      add :vo_tax_pct, :decimal

      add :vo_type, :string

      add :vo_confirmed, :boolean

      add :vo_conf_by, :string

      add :vo_po_rcvd, :boolean

      add :vo_prepay, :decimal

      add :vo_tax_date, :naive_datetime

      add :vo_modok, :boolean

      add :vo_user2, :string

      add :vo_tax_env, :string

      add :vo_recur, :boolean

      add :vo_rcycle, :string

      add :vo_rnbr_cyc, :integer

      add :vo_rstart, :naive_datetime

      add :vo_rexpire, :naive_datetime

      add :vo_rel_date, :naive_datetime

      add :vo_rv_nbr, :string

      add :vo_lc_amt, :decimal

      add :vo__qad01, :string

      add :vo__qad02, :string

      add :vo__qad03, :boolean

      add :vo_is_ers, :boolean

      add :vo_taxable, :boolean

      add :vo_taxc, :string

      add :vo_tax_usage, :string

      add :vo_ex_rate2, :decimal

      add :vo_ex_ratetype, :string

      add :vo_base_applied, :decimal

      add :vo_base_amt_chg, :decimal

      add :vo_base_disc_chg, :decimal

      add :vo_base_ndisc, :decimal

      add :vo_base_hold_amt, :decimal

      add :vo_exru_seq, :integer

      add :vo_waiting_exp, :boolean

      add :vo_resale_amt, :decimal

      add :vo_domain, :string

      add :oid_vo_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEF_CTRL") do
      add :vef__qadi03, :integer

      add :vef_asn_leadtime, :string

      add :vef_days_early, :integer

      add :vef_days_late, :integer

      add :vef_use_shippct, :boolean

      add :vef_overship_pct, :decimal

      add :vef_undership_pct, :decimal

      add :vef_use_shipqty, :boolean

      add :vef_overship_qty, :integer

      add :vef_undership_qty, :integer

      add :vef_use_shippct_cost, :boolean

      add :vef_overship_pct_cost, :decimal

      add :vef_use_shipqty_cost, :boolean

      add :vef_overship_qty_cost, :decimal

      add :vef_points, :decimal

      add :vef_pp_factor, :integer

      add :vef_pp_counter, :boolean

      add :vef_first_level_title, :string

      add :vef_second_level_title, :string

      add :vef_third_level_title, :string

      add :vef_fourth_level_title, :string

      add :vef_fifth_level_title, :string

      add :vef_first_level_max, :integer

      add :vef_second_level_max, :integer

      add :vef_third_level_max, :integer

      add :vef_fourth_level_max, :integer

      add :vef_fifth_level_max, :integer

      add :vef_early_rcpt, :string

      add :vef_late_rcpt, :string

      add :vef_over_ship, :string

      add :vef_under_ship, :string

      add :vef_missed_ship, :string

      add :vef_dup_asn, :string

      add :vef_late_asn, :string

      add :vef_asn_data, :string

      add :vef_po_receipts, :string

      add :vef_do_receipts, :string

      add :vef_rts_receipts, :string

      add :vef_matl_quality, :string

      add :vef_using_sup_perf, :boolean

      add :vef_enable_po_rtn, :boolean

      add :vef_enable_inv_xfer, :boolean

      add :vef_same_day_receipts, :boolean

      add :vef_miss_ship_as_of_date, :naive_datetime

      add :vef_miss_ship_run_date, :naive_datetime

      add :vef_po_only_flag, :boolean

      add :vef_do_only_flag, :boolean

      add :vef_mod_userid, :string

      add :vef_mod_date, :naive_datetime

      add :vef_user1, :string

      add :vef_user2, :string

      add :vef_user3, :string

      add :vef_user4, :string

      add :vef__qadc01, :string

      add :vef__qadc02, :string

      add :vef__qadc03, :string

      add :vef__qadc04, :string

      add :vef__qadd01, :decimal

      add :vef__qadd02, :decimal

      add :vef__qadl01, :boolean

      add :vef__qadl02, :boolean

      add :vef__qadt01, :naive_datetime

      add :vef__qadt02, :naive_datetime

      add :vef__qadi01, :integer

      add :vef__qadi02, :integer

      add :vef_domain, :string

      add :oid_vef_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USRG_MSTR") do
      add :usrg_group_name, :string

      add :usrg_group_desc, :string

      add :usrg_mod_userid, :string

      add :usrg_mod_date, :naive_datetime

      add :usrg_user1, :string

      add :usrg_user2, :string

      add :usrg__qadc01, :string

      add :usrg__qadc02, :string

      add :oid_usrg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_UFD_DET") do
      add :ufd_userid, :string

      add :ufd_fkey, :integer

      add :ufd_seq, :integer

      add :ufd_exec, :string

      add :ufd_nbr, :string

      add :ufd_select, :integer

      add :ufd_user1, :string

      add :ufd_user2, :string

      add :ufd_nbrsel, :string

      add :ufd_label, :string

      add :ufd__qadc01, :string

      add :oid_ufd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TAXD_DET") do
      add :taxd_effdate, :naive_datetime

      add :taxd_state, :string

      add :taxd_city, :string

      add :taxd_taxamt, :decimal

      add :taxd_ntaxamt, :decimal

      add :taxd_totamt, :decimal

      add :taxd_county, :string

      add :taxd_tottax, :decimal

      add :taxd_user1, :string

      add :taxd_user2, :string

      add :taxd__qad01, :string

      add :taxd__qad02, :string

      add :taxd__qad03, :boolean

      add :oid_taxd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEE_MSTR") do
      add :vee_event, :string

      add :vee_name, :string

      add :vee_desc, :string

      add :vee_points, :decimal

      add :vee_mod_userid, :string

      add :vee_mod_date, :naive_datetime

      add :vee_user1, :string

      add :vee_user2, :string

      add :vee_user3, :string

      add :vee_user4, :string

      add :vee__qadc01, :string

      add :vee__qadc02, :string

      add :vee__qadc03, :string

      add :vee__qadc04, :string

      add :vee__qadd01, :decimal

      add :vee__qadd02, :decimal

      add :vee__qadl01, :boolean

      add :vee__qadl02, :boolean

      add :vee__qadt01, :naive_datetime

      add :vee__qadt02, :naive_datetime

      add :vee__qadi01, :integer

      add :vee__qadi02, :integer

      add :vee_domain, :string

      add :oid_vee_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USRGD_DET") do
      add :usrgd_userid, :string

      add :usrgd_mod_userid, :string

      add :usrgd_mod_date, :naive_datetime

      add :usrgd_user1, :string

      add :usrgd_user2, :string

      add :usrgd__qadc01, :string

      add :usrgd__qadc02, :string

      add :oid_usrgd_det, :decimal

      add :oid_usrg_mstr, :decimal

      add :usrgd_domain, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_UDD_DET") do
      add :udd_userid, :string

      add :udd_domain, :string

      add :udd_primary, :boolean

      add :udd_mod_userid, :string

      add :udd_mod_date, :naive_datetime

      add :udd_user1, :string

      add :udd_user2, :string

      add :udd__qadc01, :string

      add :udd__qadc02, :string

      add :udd_groups, :string

      add :oid_udd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TOT_MSTR") do
      add :tot_terms_code, :string

      add :tot_terms_desc, :string

      add :tot_mod_userid, :string

      add :tot_mod_date, :naive_datetime

      add :tot_user1, :string

      add :tot_user2, :string

      add :tot__qadc01, :string

      add :tot__qadc02, :string

      add :tot_domain, :string

      add :oid_tot_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BL_CTRL") do
      add :bl_master_id, :string

      add :bl_user1, :string

      add :bl_user2, :string

      add :bl__qadc01, :string

      add :bl_domain, :string

      add :oid_bl_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEX_MSTR") do
      add :vex_site, :string

      add :vex_vendor, :string

      add :vex_vendor_source, :string

      add :vex_to_site, :string

      add :vex_to_vendor, :string

      add :vex_to_vendor_source, :string

      add :vex_mod_userid, :string

      add :vex_mod_date, :naive_datetime

      add :vex_user1, :string

      add :vex_user2, :string

      add :vex_user3, :string

      add :vex_user4, :string

      add :vex__qadc01, :string

      add :vex__qadc02, :string

      add :vex__qadc03, :string

      add :vex__qadc04, :string

      add :vex__qadd01, :decimal

      add :vex__qadd02, :decimal

      add :vex__qadl01, :boolean

      add :vex__qadl02, :boolean

      add :vex__qadt02, :naive_datetime

      add :vex__qadt01, :naive_datetime

      add :vex__qadi01, :integer

      add :vex__qadi02, :integer

      add :vex_domain, :string

      add :oid_vex_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USRC_CTRL") do
      add :usrc_index1, :integer

      add :usrc_sec_opt, :string

      add :usrc_sess_id, :string

      add :usrc_timeout_min, :integer

      add :usrc_expire_days, :integer

      add :usrc__qad01, :string

      add :usrc__qad02, :string

      add :usrc_user1, :string

      add :usrc_user2, :string

      add :usrc_right_hdr_disp, :integer

      add :usrc_max_access_fails, :integer

      add :usrc_warning_days, :integer

      add :usrc_min_length, :integer

      add :usrc_min_numeric, :integer

      add :usrc_reuse_days, :integer

      add :usrc_reuse_changes, :integer

      add :usrc_logon_hist_level, :string

      add :usrc_min_non_numeric, :integer

      add :usrc_active_rsn_type, :string

      add :usrc_deactivation_rsn, :string

      add :usrc_password_create, :string

      add :oid_usrg_mstr_admin, :decimal

      add :usrc_em_system_id, :string

      add :oid_usrc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TZO_MSTR") do
      add :tzo_label, :string

      add :tzo_desc, :string

      add :tzo_area, :string

      add :tzo_auto_adj, :boolean

      add :tzo_tzone, :string

      add :tzo_user1, :string

      add :tzo_user2, :string

      add :tzo__chr01, :string

      add :tzo__log01, :boolean

      add :tzo__dte01, :naive_datetime

      add :tzo__int01, :integer

      add :tzo__qadc01, :string

      add :tzo__qadt01, :naive_datetime

      add :tzo__qadi01, :integer

      add :tzo__qadl01, :boolean

      add :tzo_mod_userid, :string

      add :tzo_mod_date, :naive_datetime

      add :oid_tzo_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXBD_DET") do
      add :txbd_base, :string

      add :txbd_tax_type, :string

      add :txbd_user1, :string

      add :txbd_user2, :string

      add :txbd__qad01, :string

      add :txbd__qad02, :string

      add :txbd_domain, :string

      add :oid_txbd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEW_MSTR") do
      add :vew_weight_code, :string

      add :vew_name, :string

      add :vew_desc, :string

      add :vew_weight_factor, :decimal

      add :vew_mod_userid, :string

      add :vew_mod_date, :naive_datetime

      add :vew_user1, :string

      add :vew_user2, :string

      add :vew_user3, :string

      add :vew_user4, :string

      add :vew__qadc01, :string

      add :vew__qadc02, :string

      add :vew__qadc03, :string

      add :vew__qadc04, :string

      add :vew__qadd01, :decimal

      add :vew__qadd02, :decimal

      add :vew__qadl01, :boolean

      add :vew__qadl02, :boolean

      add :vew__qadt01, :naive_datetime

      add :vew__qadt02, :naive_datetime

      add :vew__qadi01, :integer

      add :vew__qadi02, :integer

      add :vew_domain, :string

      add :oid_vew_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VECD_DET") do
      add :vecd_category, :string

      add :vecd_value_from, :decimal

      add :vecd_value_to, :decimal

      add :vecd_percent, :decimal

      add :vecd_mod_userid, :string

      add :vecd_mod_date, :naive_datetime

      add :vecd_user1, :string

      add :vecd_user2, :string

      add :vecd_user3, :string

      add :vecd_user4, :string

      add :vecd__qadc01, :string

      add :vecd__qadc02, :string

      add :vecd__qadc03, :string

      add :vecd__qadc04, :string

      add :vecd__qadd01, :decimal

      add :vecd__qadd02, :decimal

      add :vecd__qadl01, :boolean

      add :vecd__qadl02, :boolean

      add :vecd__qadt01, :naive_datetime

      add :vecd__qadt02, :naive_datetime

      add :vecd__qadi01, :integer

      add :vecd__qadi02, :integer

      add :vecd_domain, :string

      add :oid_vecd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USPW_HIST") do
      add :uspw_userid, :string

      add :uspw_usr_passwd, :string

      add :uspw_date, :naive_datetime

      add :uspw_time, :integer

      add :uspw_mod_userid, :string

      add :uspw_mod_date, :naive_datetime

      add :uspw_timezone, :string

      add :uspw_user1, :string

      add :uspw_user2, :string

      add :uspw__qadc01, :string

      add :uspw__qadc02, :string

      add :oid_uspw_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TZOD_DET") do
      add :tzod_tzone, :string

      add :tzod_std_day, :string

      add :tzod_min, :integer

      add :tzod_hour, :integer

      add :tzod_sday, :integer

      add :tzod_eday, :integer

      add :tzod_month, :integer

      add :tzod_syear, :integer

      add :tzod_eyear, :integer

      add :tzod_wday, :string

      add :tzod_offset, :integer

      add :tzod_desc, :string

      add :tzod_user1, :string

      add :tzod_user2, :string

      add :tzod__chr01, :string

      add :tzod__chr02, :string

      add :tzod__int01, :integer

      add :tzod__int02, :integer

      add :tzod__dte01, :naive_datetime

      add :tzod__dte02, :naive_datetime

      add :tzod__log01, :boolean

      add :tzod__log02, :boolean

      add :tzod__qadc01, :string

      add :tzod__qadc02, :string

      add :tzod__qadi01, :integer

      add :tzod__qadi02, :integer

      add :tzod__qadl01, :boolean

      add :tzod__qadl02, :boolean

      add :tzod__qadt01, :naive_datetime

      add :tzod__qadt02, :naive_datetime

      add :tzod_mod_userid, :string

      add :tzod_mod_date, :naive_datetime

      add :oid_tzod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TX2_MSTR") do
      add :tx2_tax_code, :string

      add :tx2_tax_type, :string

      add :tx2_pt_taxc, :string

      add :tx2_tax_usage, :string

      add :tx2_effdate, :naive_datetime

      add :tx2_desc, :string

      add :tx2__qadc01, :string

      add :tx2__qadc02, :string

      add :tx2_tax_pct, :decimal

      add :tx2_method, :string

      add :tx2_by_line, :boolean

      add :tx2_base, :string

      add :tx2_min, :decimal

      add :tx2_max, :decimal

      add :tx2_mod_date, :naive_datetime

      add :tx2_userid, :string

      add :tx2_pct_recv, :decimal

      add :tx2_trl_taxable, :boolean

      add :tx2_cmtindx, :integer

      add :tx2_curr, :string

      add :tx2_inv_disc, :boolean

      add :tx2_pmt_disc, :boolean

      add :tx2_update_tax, :boolean

      add :tx2_user1, :string

      add :tx2_user2, :string

      add :tx2__chr01, :string

      add :tx2__chr02, :string

      add :tx2__dec01, :decimal

      add :tx2__dec02, :decimal

      add :tx2__dte01, :naive_datetime

      add :tx2__log01, :boolean

      add :tx2__qad01, :string

      add :tx2__qad02, :string

      add :tx2__qad03, :boolean

      add :tx2__qad04, :decimal

      add :tx2__qad05, :naive_datetime

      add :tx2_rcpt_tax_point, :boolean

      add :tx2_ar_acct, :string

      add :tx2_ar_cc, :string

      add :tx2_ara_acct, :string

      add :tx2_ara_cc, :string

      add :tx2_ara_use, :boolean

      add :tx2_ap_acct, :string

      add :tx2_ap_cc, :string

      add :tx2_apr_acct, :string

      add :tx2_apr_cc, :string

      add :tx2_apr_use, :boolean

      add :tx2_tax_in, :boolean

      add :tx2_exp_date, :naive_datetime

      add :tx2_ec_sales_list, :boolean

      add :tx2_ec_process_work, :boolean

      add :tx2_apr_sub, :string

      add :tx2_ap_sub, :string

      add :tx2_ara_sub, :string

      add :tx2_ar_sub, :string

      add :tx2_ap_disc_acct, :string

      add :tx2_ap_disc_cc, :string

      add :tx2_ap_disc_sub, :string

      add :tx2_ar_disc_acct, :string

      add :tx2_ar_disc_cc, :string

      add :tx2_ar_disc_sub, :string

      add :tx2_group, :string

      add :tx2_stx_acct, :string

      add :tx2_stx_cc, :string

      add :tx2_stx_sub, :string

      add :tx2_register, :string

      add :tx2_usage_tax_point, :boolean

      add :tx2_domain, :string

      add :oid_tx2_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TM_MSTR") do
      add :tm_code, :string

      add :tm_desc, :string

      add :tm_type, :string

      add :tm_maxweight, :decimal

      add :tm_weight_um, :string

      add :tm_maxcube, :decimal

      add :tm_cube_um, :string

      add :tm_height, :decimal

      add :tm_width, :decimal

      add :tm_length, :decimal

      add :tm_pallets, :integer

      add :tm_gross_wt, :decimal

      add :tm_rate_code, :string

      add :tm_cmtindx, :integer

      add :tm_load_lt, :decimal

      add :tm_unload_lt, :decimal

      add :tm_no_units, :integer

      add :tm_user1, :string

      add :tm_user2, :string

      add :tm__qadc01, :string

      add :tm_domain, :string

      add :oid_tm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IRO_DET") do
      add :iro_part, :string

      add :iro_site, :string

      add :iro_cost_set, :string

      add :iro_routing, :string

      add :iro_op, :integer

      add :iro_cost_tot, :decimal

      add :iro_date, :naive_datetime

      add :iro_mtl_tl, :decimal

      add :iro_lbr_tl, :decimal

      add :iro_bdn_tl, :decimal

      add :iro_sub_tl, :decimal

      add :iro_ovh_tl, :decimal

      add :iro_mtl_ll, :decimal

      add :iro_lbr_ll, :decimal

      add :iro_bdn_ll, :decimal

      add :iro_sub_ll, :decimal

      add :iro_ovh_ll, :decimal

      add :iro_user1, :string

      add :iro_user2, :string

      add :iro_value01, :decimal

      add :iro_value02, :decimal

      add :iro_value03, :decimal

      add :iro_value04, :decimal

      add :iro_value05, :decimal

      add :iro_nrv, :decimal

      add :iro__qadc01, :string

      add :iro_domain, :string

      add :oid_iro_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VES_MSTR") do
      add :ves_vendor, :string

      add :ves_vendor_source, :string

      add :ves_from_date, :naive_datetime

      add :ves_to_date, :naive_datetime

      add :ves_rec_type, :string

      add :ves_part, :string

      add :ves_comm_code, :string

      add :ves_site, :string

      add :ves_type, :string

      add :ves_rcvd_qty, :decimal

      add :ves_occurance_count, :integer

      add :ves_db, :string

      add :ves_sub_type, :string

      add :ves_mod_userid, :string

      add :ves_mod_date, :naive_datetime

      add :ves_user1, :string

      add :ves_user2, :string

      add :ves_user3, :string

      add :ves_user4, :string

      add :ves__qadc01, :string

      add :ves__qadc02, :string

      add :ves__qadc03, :string

      add :ves__qadc04, :string

      add :ves__qadd01, :decimal

      add :ves__qadd02, :decimal

      add :ves__qadl01, :boolean

      add :ves__qadl02, :boolean

      add :ves__qadt01, :naive_datetime

      add :ves__qadt02, :naive_datetime

      add :ves__qadi01, :integer

      add :ves__qadi02, :integer

      add :ves_domain, :string

      add :oid_ves_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VD_MSTR") do
      add :vd_addr, :string

      add :vd_cr_terms, :string

      add :vd_buyer, :string

      add :vd_disc_pct, :decimal

      add :vd_shipvia, :string

      add :vd_partial, :boolean

      add :vd_rmks, :string

      add :vd_ap_acct, :string

      add :vd_ap_cc, :string

      add :vd_pur_acct, :string

      add :vd_pur_cc, :string

      add :vd_pur_cntct, :string

      add :vd_ap_cntct, :string

      add :vd_1099, :boolean

      add :vd_sort, :string

      add :vd_last_ck, :naive_datetime

      add :vd_balance, :decimal

      add :vd_hold, :boolean

      add :vd_tax_id, :string

      add :vd_taxable, :boolean

      add :vd_user1, :string

      add :vd_user2, :string

      add :vd_curr, :string

      add :vd_lang, :string

      add :vd_vt_id, :string

      add :vd__chr01, :string

      add :vd__chr02, :string

      add :vd__chr03, :string

      add :vd__chr04, :string

      add :vd__chr05, :string

      add :vd__chr06, :string

      add :vd__chr07, :string

      add :vd__chr08, :string

      add :vd__chr09, :string

      add :vd__chr10, :string

      add :vd__dte01, :naive_datetime

      add :vd__dte02, :naive_datetime

      add :vd__dec01, :decimal

      add :vd__dec02, :decimal

      add :vd__log01, :boolean

      add :vd_fob, :string

      add :vd_debtor, :string

      add :vd_bank, :string

      add :vd_ckfrm, :string

      add :vd_pay_spec, :boolean

      add :vd_remit, :string

      add :vd_type, :string

      add :vd_mod_date, :naive_datetime

      add :vd_userid, :string

      add :vd_prepay, :decimal

      add :vd_conrep_logic, :string

      add :vd_pr_list, :string

      add :vd_fr_list, :string

      add :vd_fr_terms, :string

      add :vd_fr_min_wt, :decimal

      add :vd_drft_bal, :decimal

      add :vd_lc_bal, :decimal

      add :vd_pr_list2, :string

      add :vd_fix_pr, :boolean

      add :vd_tid_notice, :string

      add :vd_promo, :string

      add :vd_misc_cr, :boolean

      add :vd_rcv_so_price, :boolean

      add :vd_rcv_held_so, :boolean

      add :vd_tp_use_pct, :boolean

      add :vd_tp_pct, :decimal

      add :vd_ex_ratetype, :string

      add :vd_db, :string

      add :vd__qadc01, :string

      add :vd__qadc02, :string

      add :vd__qadc03, :string

      add :vd__qadc04, :string

      add :vd__qadd01, :decimal

      add :vd__qadd02, :decimal

      add :vd__qadl01, :boolean

      add :vd__qadl02, :boolean

      add :vd__qadt01, :naive_datetime

      add :vd__qadt02, :naive_datetime

      add :vd__qadi01, :integer

      add :vd__qadi02, :integer

      add :vd__qadl03, :boolean

      add :vd__qadl04, :boolean

      add :vd_ap_sub, :string

      add :vd_pur_sub, :string

      add :vd_tot_terms_code, :string

      add :vd_domain, :string

      add :oid_vd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USLH_HIST") do
      add :uslh_userid, :string

      add :uslh_date, :naive_datetime

      add :uslh_time, :integer

      add :uslh_passwd_valid, :boolean

      add :uslh_status_code, :string

      add :uslh_mod_userid, :string

      add :uslh_user1, :string

      add :uslh_user2, :string

      add :uslh__qadc01, :string

      add :uslh__qadc02, :string

      add :uslh_timezone, :string

      add :oid_uslh_hist, :decimal

      add :uslh_mod_date, :naive_datetime

      add :uslh_domain, :string

      add :uslh_access_type, :integer

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TYP_MSTR") do
      add :typ_type, :string

      add :typ_desc, :string

      add :typ_method, :string

      add :typ__qad01, :boolean

      add :typ__qad02, :string

      add :typ__qad03, :string

      add :typ_user1, :string

      add :typ_user2, :string

      add :oid_typ_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TX2D_DET") do
      add :tx2d_ref, :string

      add :tx2d_nbr, :string

      add :tx2d_line, :integer

      add :tx2d_trl, :string

      add :tx2d_tr_type, :string

      add :tx2d_tax_code, :string

      add :tx2d_effdate, :naive_datetime

      add :tx2d__qadd01, :decimal

      add :tx2d__qadd02, :decimal

      add :tx2d_totamt, :decimal

      add :tx2d_tottax, :decimal

      add :tx2d_curr, :string

      add :tx2d_user1, :string

      add :tx2d_user2, :string

      add :tx2d__chr01, :string

      add :tx2d__chr02, :string

      add :tx2d__dec01, :decimal

      add :tx2d__dec02, :decimal

      add :tx2d__dte01, :naive_datetime

      add :tx2d__log01, :boolean

      add :tx2d__qad01, :string

      add :tx2d__qad02, :string

      add :tx2d_edited, :boolean

      add :tx2d__qad04, :decimal

      add :tx2d_posted_date, :naive_datetime

      add :tx2d_rcpt_tax_point, :boolean

      add :tx2d_carrier, :string

      add :tx2d_tax_env, :string

      add :tx2d_zone_from, :string

      add :tx2d_zone_to, :string

      add :tx2d_tax_type, :string

      add :tx2d_trans_ent, :string

      add :tx2d_line_site_ent, :string

      add :tx2d_taxc, :string

      add :tx2d_tax_usage, :string

      add :tx2d_tax_in, :boolean

      add :tx2d_by_line, :boolean

      add :tx2d_cur_tax_amt, :decimal

      add :tx2d_tax_amt, :decimal

      add :tx2d_ent_tax_amt, :decimal

      add :tx2d_cur_nontax_amt, :decimal

      add :tx2d_nontax_amt, :decimal

      add :tx2d_ent_nontax_amt, :decimal

      add :tx2d_taxable_amt, :decimal

      add :tx2d_cur_recov_amt, :decimal

      add :tx2d_recov_amt, :decimal

      add :tx2d_ent_recov_amt, :decimal

      add :tx2d_cur_abs_ret_amt, :decimal

      add :tx2d_abs_ret_amt, :decimal

      add :tx2d_ent_abs_ret_amt, :decimal

      add :tx2d__qad03, :boolean

      add :tx2d__qad05, :naive_datetime

      add :tx2d_usage_tax_point, :boolean

      add :tx2d_domain, :string

      add :oid_tx2d_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TE_MSTR") do
      add :te_site, :string

      add :te_nbr, :integer

      add :te_line, :integer

      add :te_exp_type, :string

      add :te_updt, :string

      add :te_dest, :string

      add :te_pgm, :string

      add :te_userid, :string

      add :te_date, :naive_datetime

      add :te_time, :string

      add :te_date_exp, :naive_datetime

      add :te_time_exp, :string

      add :te_date_deliv, :naive_datetime

      add :te_time_deliv, :string

      add :te_pgm_errs, :integer

      add :te_pgm_warn, :integer

      add :te_pgm_msgs, :string

      add :te_data, :string

      add :te_user1, :string

      add :te_user2, :string

      add :te__qadc01, :string

      add :te__qadc02, :string

      add :te__qadc03, :string

      add :te__qadc04, :string

      add :te__qadi05, :integer

      add :te__qadi06, :integer

      add :te__qadd07, :decimal

      add :te__qadd08, :decimal

      add :te__qadt09, :naive_datetime

      add :te__qadt10, :naive_datetime

      add :te__qadl11, :boolean

      add :te__qadl12, :boolean

      add :te__chr01, :string

      add :te__chr02, :string

      add :te__dec01, :decimal

      add :te__dec02, :decimal

      add :te__dte01, :naive_datetime

      add :te__dte02, :naive_datetime

      add :te__log01, :boolean

      add :te__log02, :boolean

      add :te_domain, :string

      add :oid_te_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SSM_MSTR") do
      add :ssm_network, :string

      add :ssm_desc, :string

      add :ssm_planner, :string

      add :ssm_user1, :string

      add :ssm_user2, :string

      add :ssm__qadc01, :string

      add :ssm_domain, :string

      add :oid_ssm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VDF_MSTR") do
      add :vdf_addr, :string

      add :vdf_birthcity, :string

      add :vdf_birthday, :naive_datetime

      add :vdf_fiscal_code, :string

      add :vdf_for_fiscal_code, :string

      add :vdf_rsn_code, :string

      add :vdf_withholdtax, :boolean

      add :vdf_mod_userid, :string

      add :vdf_mod_date, :naive_datetime

      add :vdf_user1, :string

      add :vdf_user2, :string

      add :vdf_userc03, :string

      add :vdf_userc04, :string

      add :vdf_userc05, :string

      add :vdf_userd01, :decimal

      add :vdf_userd02, :decimal

      add :vdf_useri01, :integer

      add :vdf_useri02, :integer

      add :vdf_userl01, :boolean

      add :vdf_userl02, :boolean

      add :vdf_usert01, :naive_datetime

      add :vdf_usert02, :naive_datetime

      add :vdf__qadc01, :string

      add :vdf__qadc02, :string

      add :vdf__qadc03, :string

      add :vdf__qadc04, :string

      add :vdf__qadc05, :string

      add :vdf__qadd01, :decimal

      add :vdf__qadd02, :decimal

      add :vdf__qadi01, :integer

      add :vdf__qadi02, :integer

      add :vdf__qadl01, :boolean

      add :vdf__qadl02, :boolean

      add :vdf__qadt01, :naive_datetime

      add :vdf__qadt02, :naive_datetime

      add :vdf_domain, :string

      add :oid_vdf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXZ_MSTR") do
      add :txz_tax_zone, :string

      add :txz_desc, :string

      add :txz_ctry_code, :string

      add :txz_state, :string

      add :txz_county, :string

      add :txz_city, :string

      add :txz_zip, :string

      add :txz_user1, :string

      add :txz_user2, :string

      add :txz__log01, :boolean

      add :txz__qad01, :string

      add :txz__qad02, :string

      add :txz__qad03, :boolean

      add :txz_domain, :string

      add :oid_txz_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TR_HIST") do
      add :tr_part, :string

      add :tr_date, :naive_datetime

      add :tr_per_date, :naive_datetime

      add :tr_type, :string

      add :tr_loc, :string

      add :tr_loc_begin, :decimal

      add :tr_begin_qoh, :decimal

      add :tr_qty_req, :decimal

      add :tr_qty_chg, :decimal

      add :tr_qty_short, :decimal

      add :tr_um, :string

      add :tr_last_date, :naive_datetime

      add :tr_nbr, :string

      add :tr_so_job, :string

      add :tr_ship_type, :string

      add :tr_addr, :string

      add :tr_rmks, :string

      add :tr_xdr_acct, :string

      add :tr_xcr_acct, :string

      add :tr_mtl_std, :decimal

      add :tr_lbr_std, :decimal

      add :tr_bdn_std, :decimal

      add :tr_price, :decimal

      add :tr_trnbr, :integer

      add :tr_gl_amt, :decimal

      add :tr_xdr_cc, :string

      add :tr_xcr_cc, :string

      add :tr_lot, :string

      add :tr_sub_std, :decimal

      add :tr_gl_date, :naive_datetime

      add :tr_qty_loc, :decimal

      add :tr_userid, :string

      add :tr_serial, :string

      add :tr_effdate, :naive_datetime

      add :tr_prod_line, :string

      add :tr_xslspsn1, :string

      add :tr_xslspsn2, :string

      add :tr_xcr_proj, :string

      add :tr_xdr_proj, :string

      add :tr_line, :integer

      add :tr_user1, :string

      add :tr_user2, :string

      add :tr_curr, :string

      add :tr_ex_rate, :decimal

      add :tr_rev, :string

      add :tr_time, :integer

      add :tr_ovh_std, :decimal

      add :tr_site, :string

      add :tr_status, :string

      add :tr_grade, :string

      add :tr_expire, :naive_datetime

      add :tr_assay, :decimal

      add :tr_xgl_ref, :string

      add :tr__chr01, :string

      add :tr__chr02, :string

      add :tr__chr03, :string

      add :tr__chr04, :string

      add :tr__chr05, :string

      add :tr__chr06, :string

      add :tr__chr07, :string

      add :tr__chr08, :string

      add :tr__chr09, :string

      add :tr__chr10, :string

      add :tr__chr11, :string

      add :tr__chr12, :string

      add :tr__chr13, :string

      add :tr__chr14, :string

      add :tr__chr15, :string

      add :tr__dte01, :naive_datetime

      add :tr__dte02, :naive_datetime

      add :tr__dte03, :naive_datetime

      add :tr__dte04, :naive_datetime

      add :tr__dte05, :naive_datetime

      add :tr__dec01, :decimal

      add :tr__dec02, :decimal

      add :tr__dec03, :decimal

      add :tr__dec04, :decimal

      add :tr__dec05, :decimal

      add :tr__log01, :boolean

      add :tr__log02, :boolean

      add :tr_ref, :string

      add :tr_msg, :integer

      add :tr_program, :string

      add :tr_ord_rev, :integer

      add :tr_ref_site, :string

      add :tr_rsn_code, :string

      add :tr_vend_lot, :string

      add :tr_vend_date, :naive_datetime

      add :tr_daycode, :string

      add :tr_for, :string

      add :tr_slspsn, :string

      add :tr_fsm_type, :string

      add :tr_upd_isb, :boolean

      add :tr_auto_install, :boolean

      add :tr_ca_int_type, :string

      add :tr_covered_amt, :decimal

      add :tr_fcg_code, :string

      add :tr_batch, :string

      add :tr_fsc_code, :string

      add :tr_sa_nbr, :string

      add :tr_sv_code, :string

      add :tr_eng_area, :string

      add :tr_sys_prod, :string

      add :tr_svc_type, :string

      add :tr_ca_opn_date, :naive_datetime

      add :tr_cprice, :decimal

      add :tr_eng_code, :string

      add :tr_wod_op, :integer

      add :tr_enduser, :string

      add :tr_ship_inv_mov, :string

      add :tr_ship_date, :naive_datetime

      add :tr_ship_id, :string

      add :tr_ex_rate2, :decimal

      add :tr_ex_ratetype, :string

      add :tr_exru_seq, :integer

      add :tr_promise_date, :naive_datetime

      add :tr_fldchg_cmtindx, :integer

      add :tr_domain, :string

      add :oid_tr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TBL_MSTR") do
      add :tbl_partype, :string

      add :tbl_parcode, :string

      add :tbl_comptype, :string

      add :tbl_compcode, :string

      add :tbl_start, :naive_datetime

      add :tbl_end, :naive_datetime

      add :tbl_ref, :string

      add :tbl_rmks, :string

      add :tbl_user1, :string

      add :tbl_user2, :string

      add :tbl__chr01, :string

      add :tbl__chr02, :string

      add :tbl__chr03, :string

      add :tbl__chr04, :string

      add :tbl__chr05, :string

      add :tbl__dte01, :naive_datetime

      add :tbl__dte02, :naive_datetime

      add :tbl__dec01, :decimal

      add :tbl__dec02, :decimal

      add :tbl__log01, :boolean

      add :tbl__log02, :boolean

      add :tbl__qadc01, :string

      add :tbl__qadc02, :string

      add :tbl__qadd01, :naive_datetime

      add :tbl__qadd02, :naive_datetime

      add :tbl__qadde01, :decimal

      add :tbl__qadde02, :decimal

      add :tbl__qadl01, :boolean

      add :tbl__qadl02, :boolean

      add :tbl_mod_userid, :string

      add :tbl_mod_date, :naive_datetime

      add :tbl_domain, :string

      add :oid_tbl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VERD_DET") do
      add :verd_vendor, :string

      add :verd_vendor_source, :string

      add :verd_site, :string

      add :verd_category, :string

      add :verd_active_flag, :boolean

      add :verd_mod_userid, :string

      add :verd_mod_date, :naive_datetime

      add :verd_user1, :string

      add :verd_user2, :string

      add :verd_user3, :string

      add :verd_user4, :string

      add :verd__qadc01, :string

      add :verd__qadc02, :string

      add :verd__qadc03, :string

      add :verd__qadc04, :string

      add :verd__qadd01, :decimal

      add :verd__qadd02, :decimal

      add :verd__qadl01, :boolean

      add :verd__qadl02, :boolean

      add :verd__qadt01, :naive_datetime

      add :verd__qadt02, :naive_datetime

      add :verd__qadi01, :integer

      add :verd__qadi02, :integer

      add :verd_domain, :string

      add :oid_verd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_UPD_DET") do
      add :upd_userid, :string

      add :upd_exec, :string

      add :upd_dev, :string

      add :upd_nbr, :string

      add :upd_select, :integer

      add :upd_user1, :string

      add :upd_user2, :string

      add :upd__qadc01, :string

      add :oid_upd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXRD_DET") do
      add :txrd_code, :string

      add :txrd_ref, :string

      add :txrd_mod_date, :naive_datetime

      add :txrd_mod_userid, :string

      add :txrd_register, :string

      add :txrd_site, :string

      add :txrd_tran_type, :string

      add :txrd_user1, :string

      add :txrd_user2, :string

      add :txrd_userd01, :decimal

      add :txrd_useri01, :integer

      add :txrd_userl01, :boolean

      add :txrd_usert01, :naive_datetime

      add :txrd__qadc01, :string

      add :txrd__qadc02, :string

      add :txrd__qadd01, :decimal

      add :txrd__qadi01, :integer

      add :txrd__qadl01, :boolean

      add :txrd__qadt01, :naive_datetime

      add :txrd_domain, :string

      add :oid_txrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SYTF_MSTR") do
      add :sytf_fldname, :string

      add :sytf_tblname, :string

      add :sytf_reqd_add, :boolean

      add :sytf_reqd_chgdel, :boolean

      add :sytf_mod_userid, :string

      add :sytf_mod_date, :naive_datetime

      add :sytf_user1, :string

      add :sytf_user2, :string

      add :sytf__chr01, :string

      add :sytf__chr02, :string

      add :sytf__dec01, :decimal

      add :sytf__dec02, :decimal

      add :sytf__int01, :integer

      add :sytf__int02, :integer

      add :sytf__log01, :boolean

      add :sytf__log02, :boolean

      add :sytf__dte01, :naive_datetime

      add :sytf__dte02, :naive_datetime

      add :sytf__qadc01, :string

      add :sytf__qadc02, :string

      add :sytf__qadc03, :string

      add :sytf__qadc04, :string

      add :sytf__qadd01, :decimal

      add :sytf__qadd02, :decimal

      add :sytf__qadi01, :integer

      add :sytf__qadi02, :integer

      add :sytf__qadl01, :boolean

      add :sytf__qadl02, :boolean

      add :sytf__qadt01, :naive_datetime

      add :sytf__qadt02, :naive_datetime

      add :oid_sytf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEPD_DET") do
      add :vepd_vendor, :string

      add :vepd_vendor_source, :string

      add :vepd_category, :string

      add :vepd_vep_tran_date, :naive_datetime

      add :vepd_vep_tran_id, :integer

      add :vepd_seq_nbr, :integer

      add :vepd_event, :string

      add :vepd_weight_code, :string

      add :vepd_cmtindx, :integer

      add :vepd_event_qty, :decimal

      add :vepd_reason_code, :string

      add :vepd_doc_nbr, :string

      add :vepd_temp_missed_flag, :boolean

      add :vepd_tran_date, :naive_datetime

      add :vepd_tran_id, :integer

      add :vepd_mod_userid, :string

      add :vepd_mod_date, :naive_datetime

      add :vepd_user1, :string

      add :vepd_user2, :string

      add :vepd_user3, :string

      add :vepd_user4, :string

      add :vepd__qadc01, :string

      add :vepd__qadc02, :string

      add :vepd__qadc03, :string

      add :vepd__qadc04, :string

      add :vepd__qadd01, :decimal

      add :vepd__qadd02, :decimal

      add :vepd__qadl01, :boolean

      add :vepd__qadl02, :boolean

      add :vepd__qadt01, :naive_datetime

      add :vepd__qadt02, :naive_datetime

      add :vepd__qadi01, :integer

      add :vepd__qadi02, :integer

      add :vepd_site, :string

      add :vepd_domain, :string

      add :oid_vepd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USRL_DET") do
      add :usrl_userid, :string

      add :usrl_product, :string

      add :usrl_active, :boolean

      add :usrl_active_date, :naive_datetime

      add :usrl_deactive_date, :naive_datetime

      add :usrl_deactive_by, :string

      add :usrl_mod_userid, :string

      add :usrl_mod_date, :naive_datetime

      add :usrl_user1, :string

      add :usrl_user2, :string

      add :usrl__qadc01, :string

      add :usrl__qadc02, :string

      add :usrl__qadd01, :decimal

      add :usrl__qadt01, :naive_datetime

      add :oid_usrl_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXE_MSTR") do
      add :txe_tax_env, :string

      add :txe_desc, :string

      add :txe_zone_to, :string

      add :txe_zone_from, :string

      add :txe_user1, :string

      add :txe_user2, :string

      add :txe__log01, :boolean

      add :txe__qad01, :string

      add :txe__qad02, :string

      add :txe__qad03, :boolean

      add :txe_domain, :string

      add :oid_txe_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TRGL_DET") do
      add :trgl_cr_acct, :string

      add :trgl_cr_cc, :string

      add :trgl_dr_acct, :string

      add :trgl_dr_cc, :string

      add :trgl_trnbr, :integer

      add :trgl_gl_amt, :decimal

      add :trgl_gl_ref, :string

      add :trgl_type, :string

      add :trgl_cr_proj, :string

      add :trgl_dr_proj, :string

      add :trgl_cr_line, :integer

      add :trgl_dr_line, :integer

      add :trgl_user1, :string

      add :trgl_user2, :string

      add :trgl_sequence, :integer

      add :trgl__qadc01, :string

      add :trgl_dy_code, :string

      add :trgl_dy_num, :string

      add :trgl_cr_sub, :string

      add :trgl_dr_sub, :string

      add :trgl_domain, :string

      add :oid_trgl_det, :decimal

      add :trgl_eff_trans, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHFT_DET") do
      add :shft_wkctr, :string

      add :shft_mch, :string

      add :shft_day, :integer

      add :shft_start1, :decimal

      add :shft_start2, :decimal

      add :shft_start3, :decimal

      add :shft_start4, :decimal

      add :shft_hour1, :decimal

      add :shft_hour2, :decimal

      add :shft_hour3, :decimal

      add :shft_hour4, :decimal

      add :shft_pat1, :string

      add :shft_pat2, :string

      add :shft_pat3, :string

      add :shft_pat4, :string

      add :shft_load1, :decimal

      add :shft_load2, :decimal

      add :shft_load3, :decimal

      add :shft_load4, :decimal

      add :shft_user1, :string

      add :shft_user2, :string

      add :shft__chr01, :string

      add :shft__chr02, :string

      add :shft__chr03, :string

      add :shft__chr04, :string

      add :shft__chr05, :string

      add :shft__dec01, :decimal

      add :shft__dec02, :decimal

      add :shft__dec03, :decimal

      add :shft__dec04, :decimal

      add :shft__log01, :boolean

      add :shft_site, :string

      add :shft_domain, :string

      add :oid_shft_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VDC_CTRL") do
      add :vdc_nbr, :integer

      add :vdc_user1, :string

      add :vdc_user2, :string

      add :vdc__qadi01, :integer

      add :vdc__qadc01, :string

      add :vdc_domain, :string

      add :oid_vdc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_URL_MSTR") do
      add :url_field, :string

      add :url_field_value, :string

      add :url_call_pgm, :string

      add :url_exec, :string

      add :url_desc, :string

      add :url__qadc02, :string

      add :url_addr, :string

      add :url_mod_userid, :string

      add :url_mod_date, :naive_datetime

      add :url_user1, :string

      add :url_user2, :string

      add :url_image, :string

      add :url__qadi02, :integer

      add :url__qadc03, :string

      add :url__qadi01, :integer

      add :url__qadl01, :boolean

      add :url__qadt01, :naive_datetime

      add :url__qadd01, :decimal

      add :url_primary, :boolean

      add :url_script, :string

      add :url_determine, :boolean

      add :url_type, :string

      add :oid_url_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXR_MSTR") do
      add :txr_active, :boolean

      add :txr_ap_page_num, :integer

      add :txr_ar_page_num, :integer

      add :txr_co_seqid, :string

      add :txr_cr_seqid, :string

      add :txr_ec_report, :boolean

      add :txr_inv_seqid, :string

      add :txr_mod_date, :naive_datetime

      add :txr_mod_userid, :string

      add :txr_register, :string

      add :txr_site, :string

      add :txr_vo_seqid, :string

      add :txr_user1, :string

      add :txr_user2, :string

      add :txr_userd01, :decimal

      add :txr_useri01, :integer

      add :txr_userl01, :boolean

      add :txr_usert01, :naive_datetime

      add :txr__qadc01, :string

      add :txr__qadc02, :string

      add :txr__qadd01, :decimal

      add :txr__qadi01, :integer

      add :txr__qadl01, :boolean

      add :txr__qadt01, :naive_datetime

      add :txr_domain, :string

      add :oid_txr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TBLC_MSTR") do
      add :tblc_table, :string

      add :tblc_active, :boolean

      add :tblc_delete, :boolean

      add :tblc_desc, :string

      add :tblc_user1, :string

      add :tblc_user2, :string

      add :tblc_mod_date, :naive_datetime

      add :tblc_mod_userid, :string

      add :tblc__qadc01, :string

      add :tblc__qadc02, :string

      add :tblc_domain, :string

      add :oid_tblc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TBLCD_DET") do
      add :tblcd_fld_name, :string

      add :tblcd_active, :boolean

      add :tblcd_table, :string

      add :tblcd_desc, :string

      add :tblcd_user1, :string

      add :tblcd_user2, :string

      add :tblcd__qadc01, :string

      add :tblcd__qadc02, :string

      add :tblcd_mod_date, :naive_datetime

      add :tblcd_mod_userid, :string

      add :tblcd_domain, :string

      add :oid_tblcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SV_MSTR") do
      add :sv_code, :string

      add :sv_desc, :string

      add :sv_pr_list, :string

      add :sv_rsp_time, :integer

      add :sv_dflt_pri, :integer

      add :sv_onsite, :boolean

      add :sv_qo_title, :string

      add :sv_so_title, :string

      add :sv_duration, :integer

      add :sv_days, :boolean

      add :sv_holidays, :boolean

      add :sv_svc_type, :string

      add :sv__chr01, :string

      add :sv__chr02, :string

      add :sv__chr03, :string

      add :sv__chr04, :string

      add :sv__chr05, :string

      add :sv_cmtindx, :integer

      add :sv_st_time, :string

      add :sv_ed_time, :string

      add :sv_shp_b4rtn, :boolean

      add :sv_cr_prlist, :string

      add :sv_rstk_pct, :decimal

      add :sv_rsp_um, :string

      add :sv_dur_um, :string

      add :sv_blanket, :boolean

      add :sv_rmaprice, :string

      add :sv_rmaonly, :boolean

      add :sv_type, :string

      add :sv_visits, :decimal

      add :sv_stime, :string

      add :sv_etime, :string

      add :sv_cstmlist, :string

      add :sv_user1, :string

      add :sv_user2, :string

      add :sv_prod_line, :string

      add :sv_es_nbr, :string

      add :sv_off_hours_pt, :string

      add :sv_calls_allow, :decimal

      add :sv_labor_dur, :integer

      add :sv_labor_um, :string

      add :sv_taxable, :boolean

      add :sv_taxc, :string

      add :sv_tax_usage, :string

      add :sv_call_price, :string

      add :sv__qadc01, :string

      add :sv__qadc02, :string

      add :sv__qadc03, :string

      add :sv__qadc04, :string

      add :sv__qadt01, :naive_datetime

      add :sv__qadt02, :naive_datetime

      add :sv__qadt03, :naive_datetime

      add :sv__qadd01, :decimal

      add :sv__qadd02, :decimal

      add :sv__qadd03, :decimal

      add :sv__qadl01, :boolean

      add :sv__qadl02, :boolean

      add :sv__qadl03, :boolean

      add :sv_domain, :string

      add :oid_sv_mstr, :decimal

      add :sv_mid_etime, :string

      add :sv_mid_stime, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SRR_MSTR") do
      add :srr_nbr, :string

      add :srr_probidx, :integer

      add :srr_residx, :integer

      add :srr_desc, :string

      add :srr_date, :naive_datetime

      add :srr_update, :string

      add :srr__chr01, :string

      add :srr_problem, :string

      add :srr__chr02, :string

      add :srr_type, :string

      add :srr__chr03, :string

      add :srr_started, :string

      add :srr__chr04, :string

      add :srr__chr05, :string

      add :srr__chr06, :string

      add :srr__chr07, :string

      add :srr__chr08, :string

      add :srr__chr09, :string

      add :srr__chr10, :string

      add :srr__dte01, :naive_datetime

      add :srr__dte02, :naive_datetime

      add :srr__log01, :boolean

      add :srr__dec02, :decimal

      add :srr__dec01, :decimal

      add :srr_assign, :string

      add :srr_status, :string

      add :srr_ca_nbr, :string

      add :srr_severity, :string

      add :srr_part, :string

      add :srr_eu_nbr, :string

      add :srr_pri, :integer

      add :srr_cls_date, :naive_datetime

      add :srr_que, :string

      add :srr_tfix, :string

      add :srr_tdate, :naive_datetime

      add :srr_est_hrs, :decimal

      add :srr_act_hrs, :decimal

      add :srr_user1, :string

      add :srr_user2, :string

      add :srr_eco, :string

      add :srr_resolution, :string

      add :srr_phone, :string

      add :srr_requestor, :string

      add :srr_note, :string

      add :srr_domain, :string

      add :oid_srr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOSR_MSTR") do
      add :sosr_nbr, :string

      add :sosr_line, :integer

      add :sosr_abs_id, :string

      add :sosr_cmtindx, :integer

      add :sosr_shipfrom, :string

      add :sosr__qadc01, :string

      add :sosr__qadc02, :string

      add :sosr_mod_userid, :string

      add :sosr_mod_date, :naive_datetime

      add :sosr_user1, :string

      add :sosr_user2, :string

      add :sosr_domain, :string

      add :oid_sosr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SDTD_DET") do
      add :sdtd_code, :string

      add :sdtd_time, :string

      add :sdtd_mod_userid, :string

      add :sdtd_mod_date, :naive_datetime

      add :sdtd__user1, :string

      add :sdtd__user2, :string

      add :sdtd__chr01, :string

      add :sdtd__chr02, :string

      add :sdtd__dec01, :decimal

      add :sdtd__dec02, :decimal

      add :sdtd__dte01, :naive_datetime

      add :sdtd__dte02, :naive_datetime

      add :sdtd__log01, :boolean

      add :sdtd__qadc01, :string

      add :sdtd__qadc02, :string

      add :sdtd__qadd01, :decimal

      add :sdtd__qadd02, :decimal

      add :sdtd__qadt01, :naive_datetime

      add :sdtd__qadt02, :naive_datetime

      add :sdtd__qadl01, :boolean

      add :sdtd__qadl02, :boolean

      add :sdtd__qadi01, :integer

      add :sdtd__qadi02, :integer

      add :sdtd_domain, :string

      add :oid_sdtd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TAG_MSTR") do
      add :tag_nbr, :integer

      add :tag_part, :string

      add :tag_loc, :string

      add :tag_serial, :string

      add :tag_cnt_qty, :decimal

      add :tag_cnt_nam, :string

      add :tag_cnt_dt, :naive_datetime

      add :tag_rcnt_qty, :decimal

      add :tag_rcnt_nam, :string

      add :tag_rcnt_dt, :naive_datetime

      add :tag_site, :string

      add :tag_type, :string

      add :tag_void, :boolean

      add :tag_prt_dt, :naive_datetime

      add :tag_crt_dt, :naive_datetime

      add :tag_posted, :boolean

      add :tag_cnt_um, :string

      add :tag_rcnt_um, :string

      add :tag_rcnt_cnv, :decimal

      add :tag_cnt_cnv, :decimal

      add :tag_rmks, :string

      add :tag__qad01, :decimal

      add :tag_user1, :string

      add :tag_user2, :string

      add :tag_ref, :string

      add :tag_domain, :string

      add :oid_tag_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SRC_CTRL") do
      add :src_nbr, :integer

      add :src_user1, :string

      add :src_user2, :string

      add :src__qadi01, :integer

      add :src__qadc01, :string

      add :src_domain, :string

      add :oid_src_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOP_DET") do
      add :sop_sim, :string

      add :sop_routing, :string

      add :sop_op, :integer

      add :sop_element, :string

      add :sop_cost, :decimal

      add :sop_user1, :string

      add :sop_user2, :string

      add :sop_wkctr, :string

      add :sop_setup, :decimal

      add :sop_run, :decimal

      add :sop_yield_pct, :decimal

      add :sop_sub_cost, :decimal

      add :sop_start, :naive_datetime

      add :sop_end, :naive_datetime

      add :sop_inv_value, :decimal

      add :sop_milestone, :boolean

      add :sop_batch, :decimal

      add :sop_setup_men, :decimal

      add :sop_men_mch, :decimal

      add :sop_mch_op, :integer

      add :sop_std_batch, :decimal

      add :sop_elm_lbr, :string

      add :sop_elm_bdn, :string

      add :sop_elm_sub, :string

      add :sop__qadc01, :string

      add :sop_domain, :string

      add :oid_sop_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SI_MSTR") do
      add :si_site, :string

      add :si_desc, :string

      add :si_entity, :string

      add :si_status, :string

      add :si_auto_loc, :boolean

      add :si_user1, :string

      add :si_user2, :string

      add :si__chr01, :string

      add :si__chr02, :string

      add :si__chr03, :string

      add :si__chr04, :string

      add :si__chr05, :string

      add :si__dte01, :naive_datetime

      add :si__dte02, :naive_datetime

      add :si__dec01, :decimal

      add :si__dec02, :decimal

      add :si__log01, :boolean

      add :si_gl_set, :string

      add :si_cur_set, :string

      add :si_db, :string

      add :si_xfer_acct, :string

      add :si_xfer_cc, :string

      add :si_git_acct, :string

      add :si_git_cc, :string

      add :si_canrun, :string

      add :si_ext_vd, :boolean

      add :si_btb_vend, :string

      add :si_git_sub, :string

      add :si_xfer_sub, :string

      add :si_decl, :string

      add :si_xfer_ownership, :boolean

      add :si_git_location, :string

      add :si_domain, :string

      add :si_type, :boolean

      add :oid_si_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SVC_CTRL") do
      add :svc_code, :string

      add :svc_dflt_pri, :integer

      add :svc_prt_0itm, :boolean

      add :svc_dispatch, :boolean

      add :svc_pt_isb, :boolean

      add :svc_eng_lbcd, :string

      add :svc_ship_isb, :boolean

      add :svc_dflt_cyc, :string

      add :svc_hold_call, :integer

      add :svc_dflt_tm, :string

      add :svc_cmmts, :boolean

      add :svc_dflt_que, :string

      add :svc_trvl_um, :string

      add :svc_site, :string

      add :svc_loc, :string

      add :svc_um, :string

      add :svc_auto_ext, :boolean

      add :svc_arears, :boolean

      add :svc_open, :string

      add :svc_close, :string

      add :svc_per_bill, :boolean

      add :svc_prorate, :boolean

      add :svc_auto_tim, :boolean

      add :svc_sys_type, :string

      add :svc_que_prog, :integer

      add :svc_call_pre, :string

      add :svc__chr01, :string

      add :svc__chr02, :string

      add :svc__chr03, :string

      add :svc__chr04, :string

      add :svc__chr05, :string

      add :svc__chr06, :string

      add :svc__log01, :boolean

      add :svc__log02, :boolean

      add :svc__log03, :boolean

      add :svc__log04, :boolean

      add :svc__log05, :boolean

      add :svc__log06, :boolean

      add :svc__log07, :boolean

      add :svc__chr07, :string

      add :svc__chr08, :string

      add :svc__chr09, :string

      add :svc__chr10, :string

      add :svc__log08, :boolean

      add :svc__log09, :boolean

      add :svc__log10, :boolean

      add :svc__dec01, :decimal

      add :svc__dec02, :decimal

      add :svc__dec03, :decimal

      add :svc__dec04, :decimal

      add :svc_plst_pct, :decimal

      add :svc_inst_cl, :boolean

      add :svc_srstatus, :string

      add :svc_sr_pre, :string

      add :svc_que_paus, :integer

      add :svc_serial, :string

      add :svc_pt_mstr, :boolean

      add :svc_sub_cvr, :boolean

      add :svc_ins_days, :integer

      add :svc_node, :string

      add :svc_warr_st, :boolean

      add :svc_isb_hist, :boolean

      add :svc_rma_hist, :boolean

      add :svc_pvm_cl, :boolean

      add :svc_warr_svcode, :string

      add :svc_warr_cd, :string

      add :svc_sv_cd, :string

      add :svc_tm_cd, :string

      add :svc_gw_cd, :string

      add :svc_bill, :boolean

      add :svc_call_pdev, :string

      add :svc_autorenew, :boolean

      add :svc_user1, :string

      add :svc_user2, :string

      add :svc_esc_sch, :boolean

      add :svc_esc_prt, :string

      add :svc_mand_po, :boolean

      add :svc_ivc_hold, :boolean

      add :svc_fault_code, :boolean

      add :svc_gw_svcode, :string

      add :svc_sa_cd, :string

      add :svc_temp_cus, :string

      add :svc_temp_close, :boolean

      add :svc_gen_0itm, :boolean

      add :svc_cp_sauser, :boolean

      add :svc_cp_causer, :boolean

      add :svc_isb_compbom, :boolean

      add :svc_isb_bom, :boolean

      add :svc_time_zone, :integer

      add :svc__qadl04, :boolean

      add :svc_sa_account, :boolean

      add :svc_isb_repair, :string

      add :svc_ca_sys, :boolean

      add :svc_travel_step, :integer

      add :svc_ca_est_time, :string

      add :svc_srr_close, :string

      add :svc_srr_open, :string

      add :svc_assign_eng, :boolean

      add :svc_schedule_ca, :boolean

      add :svc_esc_pause, :integer

      add :svc_esc_user, :string

      add :svc_esc_dflt, :string

      add :svc_avoidance, :boolean

      add :svc__qadl06, :boolean

      add :svc__qadi04, :integer

      add :svc_ca_est_trv, :string

      add :svc_ca_model, :boolean

      add :svc_chg_cd, :string

      add :svc_chg_svcode, :string

      add :svc_isb_nsbom, :boolean

      add :svc_pt_prod, :boolean

      add :svc_sap_bom_type, :string

      add :svc_sa_accounts, :boolean

      add :svc__qadl07, :boolean

      add :svc_ca_pvm_type, :string

      add :svc_ca_upd_type, :string

      add :svc_ca_ins_type, :string

      add :svc_ca_cor_type, :string

      add :svc_ca_tec_type, :string

      add :svc_ca_time_wnd, :boolean

      add :svc_ca_wo_wnd, :boolean

      add :svc_create_cus, :boolean

      add :svc_ack_letter, :boolean

      add :svc_comp_status, :string

      add :svc_con_fsc_code, :string

      add :svc_eg_tax_usage, :string

      add :svc_exch_um, :string

      add :svc_ex_tax_usage, :string

      add :svc_fixed_um, :string

      add :svc_hold_status, :string

      add :svc_invoice_sts, :string

      add :svc_lb_tax_usage, :string

      add :svc_pc_list_type, :boolean

      add :svc_pts_fsc_code, :string

      add :svc_pt_tax_usage, :string

      add :svc_tax_environ, :string

      add :svc_trace, :boolean

      add :svc_wait_status, :string

      add :svc_scheduler, :integer

      add :svc_cancl_status, :string

      add :svc_close_record, :boolean

      add :svc_invoice_acct, :boolean

      add :svc_ca_coverage, :boolean

      add :svc_ca_allow_inv, :boolean

      add :svc_ca_print0, :boolean

      add :svc_ca_inv_draft, :boolean

      add :svc_return_sts, :string

      add :svc_scrap_sts, :string

      add :svc_invoice_cost, :boolean

      add :svc_rc_transfer, :boolean

      add :svc_dflt_warr, :string

      add :svc_pm_est_time, :string

      add :svc_upd_est_time, :string

      add :svc_inst_est_time, :string

      add :svc_corr_est_time, :string

      add :svc_wkctr, :string

      add :svc_db_timezone, :string

      add :svc__qadc03, :string

      add :svc__qadt01, :naive_datetime

      add :svc__qadt02, :naive_datetime

      add :svc__qadt03, :naive_datetime

      add :svc__qadd01, :decimal

      add :svc__qadd02, :decimal

      add :svc__qadd03, :decimal

      add :svc_project_hndl, :integer

      add :svc__qadi02, :integer

      add :svc__qadi03, :integer

      add :svc__qadl01, :boolean

      add :svc__qadl02, :boolean

      add :svc__qadl03, :boolean

      add :svc_mod_userid, :string

      add :svc_mod_date, :naive_datetime

      add :svc_multi_time_zones, :boolean

      add :svc_server_timezone, :string

      add :svc_itm_data, :boolean

      add :svc__qadc04, :string

      add :svc__qadc05, :string

      add :svc__qadi05, :integer

      add :svc_domain, :string

      add :oid_svc_ctrl, :decimal

      add :svc_sched_status, :string

      add :svc_trv_fsc_code, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SRO_MSTR") do
      add :sro_nbr, :string

      add :sro_cust, :string

      add :sro_ship, :string

      add :sro_taken, :string

      add :sro_assign, :string

      add :sro_ent_date, :naive_datetime

      add :sro_cls_date, :naive_datetime

      add :sro_type, :string

      add :sro_status, :string

      add :sro_cr_terms, :string

      add :sro_shipvia, :string

      add :sro_po, :string

      add :sro_rga, :string

      add :sro_author, :string

      add :sro_print_rg, :boolean

      add :sro_print_pl, :boolean

      add :sro_dspstn, :string

      add :sro_part, :string

      add :sro_desc, :string

      add :sro_serial, :string

      add :sro_rev, :string

      add :sro_wrrnty, :boolean

      add :sro_failure1, :string

      add :sro_failure2, :string

      add :sro_failure3, :string

      add :sro_failure4, :string

      add :sro_failure5, :string

      add :sro_repair1, :string

      add :sro_repair2, :string

      add :sro_repair3, :string

      add :sro_repair4, :string

      add :sro_repair5, :string

      add :sro_cmmt, :string

      add :sro_frt, :decimal

      add :sro_serv_chg, :decimal

      add :sro_disc_pct, :decimal

      add :sro_spec_chg, :decimal

      add :sro_tax_pct, :decimal

      add :sro_prepaid, :decimal

      add :sro_to_inv, :boolean

      add :sro_invoiced, :boolean

      add :sro__qadc05, :string

      add :sro__qadc06, :string

      add :sro_inv_date, :naive_datetime

      add :sro_shp_date, :naive_datetime

      add :sro_closed, :boolean

      add :sro_due_date, :naive_datetime

      add :sro_user1, :string

      add :sro_user2, :string

      add :sro_qty, :decimal

      add :sro_cmtindx, :integer

      add :sro__chr01, :string

      add :sro__chr02, :string

      add :sro__chr03, :string

      add :sro__chr04, :string

      add :sro__chr05, :string

      add :sro__dte01, :naive_datetime

      add :sro__dte02, :naive_datetime

      add :sro__dec01, :decimal

      add :sro__dec02, :decimal

      add :sro__log01, :boolean

      add :sro_domain, :string

      add :oid_sro_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOSRD_DET") do
      add :sosrd_dataset, :string

      add :sosrd_line, :integer

      add :sosrd_mod_date, :naive_datetime

      add :sosrd_mod_userid, :string

      add :sosrd_nbr, :string

      add :sosrd_rsn_code, :string

      add :sosrd_shipfrom, :string

      add :sosrd_abs_id, :string

      add :sosrd_user1, :string

      add :sosrd_user2, :string

      add :sosrd__qadc01, :string

      add :sosrd__qadc02, :string

      add :sosrd_measurement_type, :integer

      add :sosrd_domain, :string

      add :oid_sosrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SLR_MSTR") do
      add :slr_inventory_site, :string

      add :slr_attribute, :string

      add :slr_lsc_active, :boolean

      add :slr_mod_date, :naive_datetime

      add :slr_mod_userid, :string

      add :slr__qadc01, :string

      add :slr__qadc02, :string

      add :slr__qadd01, :decimal

      add :slr__qadd02, :decimal

      add :slr__qadi01, :integer

      add :slr__qadl01, :boolean

      add :slr__qadt01, :naive_datetime

      add :slr__qadt02, :naive_datetime

      add :slr_userc01, :string

      add :slr_userc02, :string

      add :slr_userd01, :decimal

      add :slr_useri01, :integer

      add :slr_userl01, :boolean

      add :slr_usert01, :naive_datetime

      add :slr_domain, :string

      add :oid_slr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHOP_CAL") do
      add :shop_wdays, :boolean

      add :shop_hours, :decimal

      add :shop_wkctr, :string

      add :shop_mch, :string

      add :shop_user1, :string

      add :shop_user2, :string

      add :shop_shifts, :boolean

      add :shop_site, :string

      add :shop__qadc01, :string

      add :shop_domain, :string

      add :oid_shop_cal, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SPT_DET") do
      add :spt_sim, :string

      add :spt_part, :string

      add :spt_element, :string

      add :spt_cst_tl, :decimal

      add :spt_cst_ll, :decimal

      add :spt_user1, :string

      add :spt_user2, :string

      add :spt_userid, :string

      add :spt_mod_date, :naive_datetime

      add :spt_pct_tl, :decimal

      add :spt_pct_ll, :decimal

      add :spt_ao, :boolean

      add :spt_site, :string

      add :spt__qadc01, :string

      add :spt_domain, :string

      add :oid_spt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SODR_DET") do
      add :sodr_div, :string

      add :sodr_group, :string

      add :sodr_line, :integer

      add :sodr_nbr, :string

      add :sodr_pricing, :integer

      add :sodr_seq, :integer

      add :sodr_type, :integer

      add :sodr_user1, :string

      add :sodr_user2, :string

      add :sodr__qadc01, :string

      add :sodr__qadc02, :string

      add :sodr__qadc03, :string

      add :sodr__qadd01, :decimal

      add :sodr__qadd02, :decimal

      add :sodr__qadi01, :integer

      add :sodr__qadi02, :integer

      add :sodr__qadl01, :boolean

      add :sodr__qadl02, :boolean

      add :sodr__qadt01, :naive_datetime

      add :sodr__qadt02, :naive_datetime

      add :sodr_domain, :string

      add :oid_sodr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SIM_DET") do
      add :sim_site, :string

      add :sim_inv_mov, :string

      add :sim_canrun, :string

      add :sim_user1, :string

      add :sim_user2, :string

      add :sim__qadc01, :string

      add :sim_domain, :string

      add :oid_sim_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHC_CTRL") do
      add :shc__qadi01, :integer

      add :shc_preship_nr_id, :string

      add :shc_ship_nr_id, :string

      add :shc_master_nr_id, :string

      add :shc_require_inv_mov, :boolean

      add :shc_trl_amts, :boolean

      add :shc_user1, :string

      add :shc_user2, :string

      add :shc__qadc01, :string

      add :shc_format, :string

      add :shc_ship_rcpt, :boolean

      add :shc_domain, :string

      add :oid_shc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SDT_MSTR") do
      add :sdt_code, :string

      add :sdt_desc, :string

      add :sdt_mod_userid, :string

      add :sdt_mod_date, :naive_datetime

      add :sdt__user1, :string

      add :sdt__user2, :string

      add :sdt__chr01, :string

      add :sdt__chr02, :string

      add :sdt__dec01, :decimal

      add :sdt__dec02, :decimal

      add :sdt__dte01, :naive_datetime

      add :sdt__dte02, :naive_datetime

      add :sdt__log01, :boolean

      add :sdt__log02, :boolean

      add :sdt__qadc01, :string

      add :sdt__qadc02, :string

      add :sdt__qadd01, :decimal

      add :sdt__qadd02, :decimal

      add :sdt__qadl01, :boolean

      add :sdt__qadl02, :boolean

      add :sdt__qadt01, :naive_datetime

      add :sdt__qadt02, :naive_datetime

      add :sdt__qadi01, :integer

      add :sdt__qadi02, :integer

      add :sdt_domain, :string

      add :oid_sdt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_STTQD_DET") do
      add :sttqd_acceptable, :boolean

      add :sttqd_active, :boolean

      add :sttqd_status_code, :string

      add :sttqd_customer_source, :string

      add :sttqd_max_value, :decimal

      add :sttqd_min_value, :decimal

      add :sttqd_part, :string

      add :sttqd_receive_addr, :string

      add :sttqd_shipfrom, :string

      add :sttqd_measurement_type, :integer

      add :sttqd_tracking_measure, :string

      add :sttqd_use_percent, :boolean

      add :sttqd_mod_date, :naive_datetime

      add :sttqd_mod_userid, :string

      add :sttqd_user1, :string

      add :sttqd_user2, :string

      add :sttqd__qadc01, :string

      add :sttqd__qadc02, :string

      add :sttqd_domain, :string

      add :oid_sttqd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SPH_HIST") do
      add :sph_year, :integer

      add :sph_slspsn1, :string

      add :sph_sales, :decimal

      add :sph_cost, :decimal

      add :sph_quota, :decimal

      add :sph_tot_sale, :decimal

      add :sph_tot_cost, :decimal

      add :sph_user1, :string

      add :sph_user2, :string

      add :sph_smonth, :integer

      add :sph_type, :string

      add :sph__chr01, :string

      add :sph__chr02, :string

      add :sph__chr03, :string

      add :sph__chr04, :string

      add :sph__chr05, :string

      add :sph__dte01, :naive_datetime

      add :sph__dte02, :naive_datetime

      add :sph__log01, :boolean

      add :sph__dec01, :decimal

      add :sph__dec02, :decimal

      add :sph_domain, :string

      add :oid_sph_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SODLC_DET") do
      add :sodlc_order, :string

      add :sodlc_ord_line, :integer

      add :sodlc_lc_line, :integer

      add :sodlc_trl_code, :string

      add :sodlc_lc_amt, :decimal

      add :sodlc_charge_type, :string

      add :sodlc_ref, :string

      add :sodlc_one_time, :boolean

      add :sodlc_times_charged, :integer

      add :sodlc_owned_by, :string

      add :sodlc_abs_shipfrom, :string

      add :sodlc_ext_price, :decimal

      add :sodlc_acct, :string

      add :sodlc_cc, :string

      add :sodlc_taxable, :boolean

      add :sodlc_taxc, :string

      add :sodlc_sub, :string

      add :sodlc_project, :string

      add :sodlc_mod_userid, :string

      add :sodlc_mod_date, :naive_datetime

      add :sodlc_userc01, :string

      add :sodlc_userc02, :string

      add :sodlc__qadc01, :string

      add :sodlc__qadc02, :string

      add :sodlc_domain, :string

      add :oid_sodlc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SG_MSTR") do
      add :sg_grp, :string

      add :sg_desc, :string

      add :sg_inv_mov, :string

      add :sg_auto_tr, :boolean

      add :sg_master_nr_id, :string

      add :sg_user1, :string

      add :sg_user2, :string

      add :sg__qadc01, :string

      add :sg_domain, :string

      add :oid_sg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SSD_DET") do
      add :ssd_network, :string

      add :ssd_rec_site, :string

      add :ssd_src_site, :string

      add :ssd_ref, :string

      add :ssd_percent, :decimal

      add :ssd_start, :naive_datetime

      add :ssd_end, :naive_datetime

      add :ssd_trans, :string

      add :ssd_leadtime, :integer

      add :ssd_user1, :string

      add :ssd_user2, :string

      add :ssd__qadd01, :decimal

      add :ssd__qadc01, :string

      add :ssd_domain, :string

      add :oid_ssd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SPC_CTRL") do
      add :spc_nbr, :integer

      add :spc__qad01, :integer

      add :spc_user1, :string

      add :spc_user2, :string

      add :spc__qadi01, :integer

      add :spc_domain, :string

      add :oid_spc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOCC_MSTR") do
      add :socc_nbr, :string

      add :socc_cc_nbr, :string

      add :socc_cc_nbr_tail, :string

      add :socc_cc_expire_date, :naive_datetime

      add :socc_card_type, :string

      add :socc_auth_date, :naive_datetime

      add :socc_auth_nbr, :string

      add :socc_auth_amt, :decimal

      add :socc_auth_expire_date, :naive_datetime

      add :socc_billing_name, :string

      add :socc_billing_addr1, :string

      add :socc_billing_addr2, :string

      add :socc_billing_addr3, :string

      add :socc_billing_city, :string

      add :socc_billing_zip, :string

      add :socc_billing_state, :string

      add :socc_billing_country, :string

      add :socc_billing_ctry, :string

      add :socc_mod_userid, :string

      add :socc_mod_date, :naive_datetime

      add :socc_user1, :string

      add :socc_user2, :string

      add :socc__qadc01, :string

      add :socc__qadi01, :integer

      add :socc__qadd01, :decimal

      add :socc__qadl01, :boolean

      add :socc__qadt01, :naive_datetime

      add :socc_domain, :string

      add :oid_socc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SGCD_DET") do
      add :sgcd_grp, :string

      add :sgcd_inv_mov, :string

      add :sgcd_seq, :integer

      add :sgcd_carrier, :string

      add :sgcd_user1, :string

      add :sgcd_user2, :string

      add :sgcd__qadc01, :string

      add :sgcd_domain, :string

      add :oid_sgcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MPD_DET") do
      add :mpd_nbr, :string

      add :mpd_type, :string

      add :mpd_label, :string

      add :mpd_tol, :string

      add :mpd_tol_type, :string

      add :mpd_cmtindx, :integer

      add :mpd_user1, :string

      add :mpd_user2, :string

      add :mpd__chr01, :string

      add :mpd__chr02, :string

      add :mpd__chr03, :string

      add :mpd__chr04, :string

      add :mpd__chr05, :string

      add :mpd__dec01, :decimal

      add :mpd__dec02, :decimal

      add :mpd_domain, :string

      add :oid_mpd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SROC_CTRL") do
      add :sroc_sro, :integer

      add :sroc__qad01, :integer

      add :sroc_user1, :string

      add :sroc_user2, :string

      add :sroc__qadi01, :integer

      add :sroc_sro_pre, :string

      add :sroc_domain, :string

      add :oid_sroc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOR_MSTR") do
      add :sor_div, :string

      add :sor_group, :string

      add :sor_nbr, :string

      add :sor_pricing, :integer

      add :sor_seq, :integer

      add :sor_type, :integer

      add :sor_user1, :string

      add :sor_user2, :string

      add :sor__qadc01, :string

      add :sor__qadc02, :string

      add :sor__qadc03, :string

      add :sor__qadd01, :decimal

      add :sor__qadd02, :decimal

      add :sor__qadi01, :integer

      add :sor__qadi02, :integer

      add :sor__qadl01, :boolean

      add :sor__qadl02, :boolean

      add :sor__qadt01, :naive_datetime

      add :sor__qadt02, :naive_datetime

      add :sor_domain, :string

      add :oid_sor_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SLRD_DET") do
      add :slrd_inventory_site, :string

      add :slrd_attrib_code, :string

      add :slrd_linking_rule, :integer

      add :slrd_gl_cost_site, :string

      add :slrd_mod_date, :naive_datetime

      add :slrd_mod_userid, :string

      add :slrd__qadc01, :string

      add :slrd__qadc02, :string

      add :slrd__qadd01, :decimal

      add :slrd__qadd02, :decimal

      add :slrd__qadl01, :boolean

      add :slrd__qadt01, :naive_datetime

      add :slrd__qadt02, :naive_datetime

      add :slrd_userc01, :string

      add :slrd_userc02, :string

      add :slrd_userd01, :decimal

      add :slrd_useri01, :integer

      add :slrd_userl01, :boolean

      add :slrd_usert01, :naive_datetime

      add :slrd__qadi01, :integer

      add :slrd_domain, :string

      add :oid_slrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SEQ_MSTR") do
      add :seq_line, :string

      add :seq_site, :string

      add :seq_part, :string

      add :seq_due_date, :naive_datetime

      add :seq_qty_req, :decimal

      add :seq_start, :naive_datetime

      add :seq_release, :naive_datetime

      add :seq_priority, :decimal

      add :seq_mode, :boolean

      add :seq_mode_qty, :decimal

      add :seq_type, :boolean

      add :seq_shift1, :integer

      add :seq_shift2, :decimal

      add :seq_shift3, :decimal

      add :seq_shift4, :decimal

      add :seq_user1, :string

      add :seq_user2, :string

      add :seq__chr01, :string

      add :seq__chr02, :string

      add :seq__chr03, :string

      add :seq__chr04, :string

      add :seq__chr05, :string

      add :seq__dec01, :decimal

      add :seq__dec02, :decimal

      add :seq__dec03, :decimal

      add :seq__log01, :boolean

      add :seq_domain, :string

      add :oid_seq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCC_MSTR") do
      add :scc_shipfrom, :string

      add :scc_part, :string

      add :scc_active, :boolean

      add :scc_use_current, :boolean

      add :scc_ship_lt, :integer

      add :scc_sched_type, :integer

      add :scc_customer_source, :string

      add :scc_receive_addr, :string

      add :scc_include_so, :boolean

      add :scc_include_sched, :boolean

      add :scc_include_rma, :boolean

      add :scc_include_mo, :boolean

      add :scc_include_do, :boolean

      add :scc__qadc01, :string

      add :scc__qadc02, :string

      add :scc_mod_userid, :string

      add :scc_mod_date, :naive_datetime

      add :scc_user1, :string

      add :scc_user2, :string

      add :scc_domain, :string

      add :oid_scc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SP_MSTR") do
      add :sp_addr, :string

      add :sp_territory, :string

      add :sp_comm_pct, :decimal

      add :sp_sort, :string

      add :sp_user1, :string

      add :sp_user2, :string

      add :sp__chr01, :string

      add :sp__chr02, :string

      add :sp__chr03, :string

      add :sp__chr04, :string

      add :sp__chr05, :string

      add :sp__dte01, :naive_datetime

      add :sp__dte02, :naive_datetime

      add :sp__dec01, :decimal

      add :sp__dec02, :decimal

      add :sp__log01, :boolean

      add :sp_domain, :string

      add :oid_sp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOD_DET") do
      add :sod_nbr, :string

      add :sod_due_date, :naive_datetime

      add :sod_per_date, :naive_datetime

      add :sod_req_date, :naive_datetime

      add :sod_line, :integer

      add :sod_part, :string

      add :sod_qty_ord, :decimal

      add :sod_qty_all, :decimal

      add :sod_qty_pick, :decimal

      add :sod_qty_ship, :decimal

      add :sod_qty_inv, :decimal

      add :sod_loc, :string

      add :sod_type, :string

      add :sod_price, :decimal

      add :sod_std_cost, :decimal

      add :sod_qty_chg, :decimal

      add :sod_bo_chg, :decimal

      add :sod_acct, :string

      add :sod_abnormal, :boolean

      add :sod_taxable, :boolean

      add :sod_serial, :string

      add :sod_desc, :string

      add :sod_um, :string

      add :sod_cc, :string

      add :sod_comment, :string

      add :sod_lot, :string

      add :sod_um_conv, :decimal

      add :sod_fa_nbr, :string

      add :sod_disc_pct, :decimal

      add :sod_project, :string

      add :sod_cmtindx, :integer

      add :sod_custpart, :string

      add :sod__qad01, :integer

      add :sod_status, :string

      add :sod_xslspsn, :string

      add :sod_xcomm_pct, :decimal

      add :sod_dsc_acct, :string

      add :sod_dsc_cc, :string

      add :sod_list_pr, :decimal

      add :sod_user1, :string

      add :sod_user2, :string

      add :sod_sob_rev, :naive_datetime

      add :sod_sob_std, :boolean

      add :sod_qty_qote, :decimal

      add :sod_consume, :boolean

      add :sod_expire, :naive_datetime

      add :sod__qad02, :boolean

      add :sod_taxc, :string

      add :sod_inv_nbr, :string

      add :sod_partial, :boolean

      add :sod_site, :string

      add :sod_prodline, :string

      add :sod_tax_in, :boolean

      add :sod_fst_list, :boolean

      add :sod_pst, :boolean

      add :sod__chr01, :string

      add :sod__chr02, :string

      add :sod__chr03, :string

      add :sod__chr04, :string

      add :sod__chr05, :string

      add :sod__chr06, :string

      add :sod__chr07, :string

      add :sod__chr08, :string

      add :sod__chr09, :string

      add :sod__chr10, :string

      add :sod__dte01, :naive_datetime

      add :sod__dte02, :naive_datetime

      add :sod__dec01, :decimal

      add :sod__dec02, :decimal

      add :sod__log01, :boolean

      add :sod_calc_isb, :boolean

      add :sod_owner, :string

      add :sod_rma_type, :string

      add :sod_qty_item, :decimal

      add :sod_qty_per, :decimal

      add :sod_ref, :integer

      add :sod_for, :string

      add :sod_tax_max, :decimal

      add :sod_contr_id, :string

      add :sod_pickdate, :naive_datetime

      add :sod_confirm, :boolean

      add :sod_cum_qty, :decimal

      add :sod_cum_date, :naive_datetime

      add :sod_fr_rate, :decimal

      add :sod_slspsn, :string

      add :sod_comm_pct, :decimal

      add :sod_ord_mult, :decimal

      add :sod_pkg_code, :string

      add :sod_curr_rlse_id, :string

      add :sod_sched, :boolean

      add :sod_sch_data, :string

      add :sod_sch_mrp, :boolean

      add :sod_rlse_nbr, :integer

      add :sod_translt_days, :decimal

      add :sod_fsm_type, :string

      add :sod_conrep, :string

      add :sod_start_eff, :naive_datetime

      add :sod_end_eff, :naive_datetime

      add :sod_dock, :string

      add :sod_pr_list, :string

      add :sod_translt_hrs, :decimal

      add :sod_out_po, :string

      add :sod_raw_days, :integer

      add :sod_fab_days, :integer

      add :sod_tax_usage, :string

      add :sod_rbkt_days, :integer

      add :sod_rbkt_weeks, :integer

      add :sod_rbkt_mths, :integer

      add :sod_sched_chgd, :boolean

      add :sod_pastdue, :string

      add :sod_fix_pr, :boolean

      add :sod_fr_wt, :decimal

      add :sod_fr_wt_um, :string

      add :sod_fr_class, :string

      add :sod_fr_chg, :decimal

      add :sod_sa_nbr, :string

      add :sod_isb_loc, :string

      add :sod_ship, :string

      add :sod_auto_ins, :boolean

      add :sod_drp_ref, :string

      add :sod_tax_env, :string

      add :sod_upd_isb, :boolean

      add :sod_isb_ref, :integer

      add :sod_enduser, :string

      add :sod_crt_int, :decimal

      add :sod_fr_list, :string

      add :sod_pricing_dt, :naive_datetime

      add :sod_act_price, :decimal

      add :sod_covered_amt, :decimal

      add :sod_ca_nbr, :string

      add :sod_fixed_price, :decimal

      add :sod_inv_cost, :decimal

      add :sod_car_load, :boolean

      add :sod_ca_line, :integer

      add :sod_qty_cons, :decimal

      add :sod_qty_ret, :decimal

      add :sod_qty_pend, :decimal

      add :sod_to_loc, :string

      add :sod_to_site, :string

      add :sod_to_ref, :string

      add :sod_ln_ref, :string

      add :sod_qty_exch, :decimal

      add :sod_sad_line, :integer

      add :sod_warr_start, :naive_datetime

      add :sod_mod_userid, :string

      add :sod_mod_date, :naive_datetime

      add :sod_sv_code, :string

      add :sod_alt_pkg, :boolean

      add :sod_for_serial, :string

      add :sod_override_lmt, :boolean

      add :sod__qadc01, :string

      add :sod__qadc02, :string

      add :sod__qadc03, :string

      add :sod__qadc04, :string

      add :sod__qadt01, :naive_datetime

      add :sod__qadt02, :naive_datetime

      add :sod__qadt03, :naive_datetime

      add :sod__qadt04, :naive_datetime

      add :sod__qadd01, :decimal

      add :sod__qadd02, :decimal

      add :sod__qadd03, :decimal

      add :sod__qadl01, :boolean

      add :sod__qadl02, :boolean

      add :sod__qadl03, :boolean

      add :sod__qadi01, :integer

      add :sod__qadi02, :integer

      add :sod_bonus, :boolean

      add :sod_btb_type, :string

      add :sod_btb_po, :string

      add :sod_btb_pod_line, :integer

      add :sod_btb_vend, :string

      add :sod_exp_del, :naive_datetime

      add :sod_dir_all, :boolean

      add :sod_cfg_type, :string

      add :sod_div, :string

      add :sod_pl_priority, :integer

      add :sod_prig1, :string

      add :sod_prig2, :string

      add :sod__qadd04, :decimal

      add :sod_sub, :string

      add :sod_dsc_sub, :string

      add :sod_dsc_project, :string

      add :sod_qty_ivcd, :decimal

      add :sod_cum_time, :integer

      add :sod_ship_part, :string

      add :sod_promise_date, :naive_datetime

      add :sod_charge_type, :string

      add :sod_order_category, :string

      add :sod_modelyr, :string

      add :sod_custref, :string

      add :sod_consignment, :boolean

      add :sod_max_aging_days, :integer

      add :sod_consign_loc, :string

      add :sod_intrans_loc, :string

      add :sod_auto_replenish, :boolean

      add :sod_manual_fr_list, :boolean

      add :sod_domain, :string

      add :oid_sod_det, :decimal

      add :sod_req_time, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHD_DET") do
      add :shd_code, :string

      add :shd_src_site, :string

      add :shd_rec_site, :string

      add :shd_departs, :naive_datetime

      add :shd_user1, :string

      add :shd_user2, :string

      add :shd__qadc01, :string

      add :shd_domain, :string

      add :oid_shd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SD_MSTR") do
      add :sd_amt, :decimal

      add :sd_curr, :string

      add :sd_type, :string

      add :sd_disc_pct, :decimal

      add :sd_acct, :string

      add :sd_cc, :string

      add :sd_cust, :string

      add :sd_ls_type, :string

      add :sd_prodline, :string

      add :sd_start, :naive_datetime

      add :sd_expire, :naive_datetime

      add :sd__chr01, :string

      add :sd__qad01, :string

      add :sd__qad02, :string

      add :sd__chr02, :string

      add :sd_user1, :string

      add :sd_user2, :string

      add :sd_sub, :string

      add :sd_domain, :string

      add :oid_sd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SB_MSTR") do
      add :sb_sub, :string

      add :sb_desc, :string

      add :sb_user1, :string

      add :sb_user2, :string

      add :sb_active, :boolean

      add :sb__qadc01, :string

      add :sb_domain, :string

      add :oid_sb_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SALH_HIST") do
      add :salh_budget, :decimal

      add :salh_ca_int_type, :string

      add :salh_code, :string

      add :salh_end, :naive_datetime

      add :salh_fcg_code, :string

      add :salh_file, :string

      add :salh_fis_sort, :string

      add :salh_fsc_code, :string

      add :salh_limit_amt, :decimal

      add :salh__qadl04, :boolean

      add :salh_line, :integer

      add :salh_nbr, :string

      add :salh_ov_fcg_code, :string

      add :salh_pct_covered, :decimal

      add :salh_per_call, :boolean

      add :salh_prefix, :string

      add :salh_start, :naive_datetime

      add :salh_total, :decimal

      add :salh_type, :string

      add :salh_user1, :string

      add :salh_user2, :string

      add :salh__chr01, :string

      add :salh__chr02, :string

      add :salh__chr03, :string

      add :salh__chr04, :string

      add :salh__dec01, :decimal

      add :salh__dec02, :decimal

      add :salh__dec03, :decimal

      add :salh__dte01, :naive_datetime

      add :salh__dte02, :naive_datetime

      add :salh__dte03, :naive_datetime

      add :salh__log01, :boolean

      add :salh__log02, :boolean

      add :salh__log03, :boolean

      add :salh__qadc01, :string

      add :salh__qadc02, :string

      add :salh__qadc03, :string

      add :salh__qadc04, :string

      add :salh__qadt01, :naive_datetime

      add :salh__qadt02, :naive_datetime

      add :salh__qadt03, :naive_datetime

      add :salh__qadd01, :decimal

      add :salh__qadd02, :decimal

      add :salh__qadd03, :decimal

      add :salh__qadl01, :boolean

      add :salh__qadl02, :boolean

      add :salh__qadl03, :boolean

      add :salh_unposted_amt, :decimal

      add :salh_calls_allow, :integer

      add :salh_mod_userid, :string

      add :salh_mod_date, :naive_datetime

      add :salh_listpr_limit, :decimal

      add :salh_calls_total, :integer

      add :salh_sequence, :integer

      add :salh_days, :integer

      add :salh_first_activity, :naive_datetime

      add :salh_last_activity, :naive_datetime

      add :salh_usage, :string

      add :salh_report, :string

      add :salh_call, :string

      add :salh_category, :string

      add :salh_itm_line, :integer

      add :salh_op, :integer

      add :salh_consumed_amt, :decimal

      add :salh_trnbr, :integer

      add :salh__qadd04, :decimal

      add :salh_consumed_date, :naive_datetime

      add :salh_itm_part, :string

      add :salh_domain, :string

      add :oid_salh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SO_MSTR") do
      add :so_nbr, :string

      add :so_cust, :string

      add :so_ship, :string

      add :so_ord_date, :naive_datetime

      add :so_req_date, :naive_datetime

      add :so_due_date, :naive_datetime

      add :so_rmks, :string

      add :so_cr_terms, :string

      add :so_fob, :string

      add :so_po, :string

      add :so_shipvia, :string

      add :so_partial, :boolean

      add :so_print_so, :boolean

      add :so_inv_nbr, :string

      add :so_pr_list, :string

      add :so_xslspsn, :string

      add :so_source, :string

      add :so_xcomm_pct, :decimal

      add :so_cr_card, :string

      add :so_print_pl, :boolean

      add :so_cr_init, :string

      add :so_stat, :string

      add :so__qad01, :decimal

      add :so__qad02, :decimal

      add :so__qad03, :decimal

      add :so_disc_pct, :decimal

      add :so_tax_pct, :decimal

      add :so_prepaid, :decimal

      add :so_to_inv, :boolean

      add :so_invoiced, :boolean

      add :so_ar_acct, :string

      add :so_ar_cc, :string

      add :so_inv_date, :naive_datetime

      add :so_ship_date, :naive_datetime

      add :so_taxable, :boolean

      add :so_cmtindx, :integer

      add :so__qad04, :integer

      add :so_user1, :string

      add :so_user2, :string

      add :so_curr, :string

      add :so_ex_rate, :decimal

      add :so_lang, :string

      add :so_type, :string

      add :so_conf_date, :naive_datetime

      add :so_rev, :integer

      add :so_bol, :string

      add :so__qad05, :decimal

      add :so_pst, :boolean

      add :so_fst_id, :string

      add :so_trl1_amt, :decimal

      add :so_trl1_cd, :string

      add :so_trl2_amt, :decimal

      add :so_trl2_cd, :string

      add :so_trl3_amt, :decimal

      add :so_trl3_cd, :string

      add :so_weight, :decimal

      add :so_weight_um, :string

      add :so_size, :decimal

      add :so_size_um, :string

      add :so_cartons, :integer

      add :so_site, :string

      add :so_pst_id, :string

      add :so_cncl_date, :naive_datetime

      add :so_quote, :string

      add :so_taxc, :string

      add :so__chr01, :string

      add :so__chr02, :string

      add :so__chr03, :string

      add :so__chr04, :string

      add :so__chr05, :string

      add :so__chr06, :string

      add :so__chr07, :string

      add :so__chr08, :string

      add :so__chr09, :string

      add :so__chr10, :string

      add :so__dte01, :naive_datetime

      add :so__dte02, :naive_datetime

      add :so__dec01, :decimal

      add :so__dec02, :decimal

      add :so__log01, :boolean

      add :so_credit, :boolean

      add :so_inv_cr, :string

      add :so_project, :string

      add :so_channel, :string

      add :so_pst_pct, :decimal

      add :so_fr_list, :string

      add :so_fr_terms, :string

      add :so_slspsn, :string

      add :so_comm_pct, :decimal

      add :so_inv_mthd, :string

      add :so_fix_rate, :boolean

      add :so_ent_ex, :decimal

      add :so_bill, :string

      add :so_print_bl, :boolean

      add :so_tax_date, :naive_datetime

      add :so_fsm_type, :string

      add :so_userid, :string

      add :so_conrep, :string

      add :so_bank, :string

      add :so_tax_env, :string

      add :so_sched, :boolean

      add :so_fr_min_wt, :decimal

      add :so_pr_list2, :string

      add :so_tax_usage, :string

      add :so_sa_nbr, :string

      add :so_fix_pr, :boolean

      add :so_sch_mthd, :string

      add :so_eng_code, :string

      add :so_ship_eng, :boolean

      add :so_pricing_dt, :naive_datetime

      add :so_priced_dt, :naive_datetime

      add :so_ca_nbr, :string

      add :so_fcg_code, :string

      add :so_crprlist, :string

      add :so__qadc01, :string

      add :so__qadc02, :string

      add :so__qadc03, :string

      add :so__qadc04, :string

      add :so__qadc05, :string

      add :so__qadl01, :boolean

      add :so__qadl02, :boolean

      add :so_incl_iss, :boolean

      add :so__qadi01, :integer

      add :so__qadi02, :integer

      add :so__qadi03, :integer

      add :so__qadd01, :decimal

      add :so__qadd02, :decimal

      add :so__qadd03, :decimal

      add :so__qadt01, :naive_datetime

      add :so__qadt02, :naive_datetime

      add :so__qadt03, :naive_datetime

      add :so_auth_days, :integer

      add :so_cum_acct, :boolean

      add :so_merge_rss, :boolean

      add :so_ship_cmplt, :integer

      add :so_bump_all, :boolean

      add :so_primary, :boolean

      add :so_cust_po, :string

      add :so_secondary, :boolean

      add :so_ship_po, :string

      add :so_ex_rate2, :decimal

      add :so_ex_ratetype, :string

      add :so_div, :string

      add :so_exru_seq, :integer

      add :so_app_owner, :string

      add :so_ar_sub, :string

      add :so_seq_order, :boolean

      add :so_inc_in_rss, :boolean

      add :so_firm_seq_days, :integer

      add :so_prep_tax, :decimal

      add :so__qadl04, :boolean

      add :so_custref_val, :boolean

      add :so_consignment, :boolean

      add :so_max_aging_days, :integer

      add :so_consign_loc, :string

      add :so_intrans_loc, :string

      add :so_auto_replenish, :boolean

      add :so_revenue, :string

      add :so_fsaccr_acct, :string

      add :so_fsaccr_sub, :string

      add :so_fsaccr_cc, :string

      add :so_fsdef_acct, :string

      add :so_fsdef_sub, :string

      add :so_fsdef_cc, :string

      add :so_manual_fr_terms, :boolean

      add :so_domain, :string

      add :oid_so_mstr, :decimal

      add :so_req_time, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHPD_HIST") do
      add :shpd_tran_id, :integer

      add :shpd_measurement_type, :integer

      add :shpd_status_code, :string

      add :shpd_rsn_code, :string

      add :shpd_acceptable, :boolean

      add :shpd_rsn_type, :string

      add :shpd_meas_subtype, :integer

      add :shpd__qadc01, :string

      add :shpd__qadc02, :string

      add :shpd_mod_userid, :string

      add :shpd_mod_date, :naive_datetime

      add :shpd_user1, :string

      add :shpd_user2, :string

      add :shpd_domain, :string

      add :oid_shpd_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SGAD_DET") do
      add :sgad_grp, :string

      add :sgad_is_src, :boolean

      add :sgad_addr, :string

      add :sgad_cons_ship, :string

      add :sgad_user1, :string

      add :sgad_user2, :string

      add :sgad__qadc01, :string

      add :sgad_domain, :string

      add :oid_sgad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCT_DET") do
      add :sct_sim, :string

      add :sct_part, :string

      add :sct_cst_tot, :decimal

      add :sct_mtl_tl, :decimal

      add :sct_lbr_tl, :decimal

      add :sct_bdn_tl, :decimal

      add :sct_ovh_tl, :decimal

      add :sct_sub_tl, :decimal

      add :sct_mtl_ll, :decimal

      add :sct_lbr_ll, :decimal

      add :sct_bdn_ll, :decimal

      add :sct_ovh_ll, :decimal

      add :sct_sub_ll, :decimal

      add :sct_cst_date, :naive_datetime

      add :sct_user1, :string

      add :sct_user2, :string

      add :sct_serial, :string

      add :sct_site, :string

      add :sct_rollup, :boolean

      add :sct_rollup_id, :string

      add :sct_nrv, :decimal

      add :sct__qadc01, :string

      add :sct_cost_changed, :boolean

      add :sct_domain, :string

      add :oid_sct_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SBC_MSTR") do
      add :sbc_code, :string

      add :sbc_desc, :string

      add :sbc_duration, :integer

      add :sbc_qty_bill, :decimal

      add :sbc__chr01, :string

      add :sbc__chr02, :string

      add :sbc__chr03, :string

      add :sbc__chr04, :string

      add :sbc__chr05, :string

      add :sbc_user1, :string

      add :sbc_user2, :string

      add :sbc_um, :string

      add :sbc_mod_userid, :string

      add :sbc_mod_date, :naive_datetime

      add :sbc__qadc01, :string

      add :sbc__qadc02, :string

      add :sbc__qadc03, :string

      add :sbc__qadd01, :decimal

      add :sbc__qadl01, :boolean

      add :sbc_domain, :string

      add :oid_sbc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOC_CTRL") do
      add :soc_on_ord, :boolean

      add :soc_req, :boolean

      add :soc_all, :boolean

      add :soc_pick, :boolean

      add :soc__qad01, :boolean

      add :soc__qad02, :boolean

      add :soc_inv, :integer

      add :soc_so, :integer

      add :soc_all_days, :integer

      add :soc_all_avl, :boolean

      add :soc_ln_fmt, :boolean

      add :soc_jrnl, :integer

      add :soc_so_hist, :boolean

      add :soc_shp_lead, :integer

      add :soc_print, :boolean

      add :soc_ar, :boolean

      add :soc_company, :string

      add :soc_fob, :string

      add :soc_hcmmts, :boolean

      add :soc_lcmmts, :boolean

      add :soc_ntaxdesc, :string

      add :soc_sa, :boolean

      add :soc_fcst_fwd, :integer

      add :soc_fcst_bck, :integer

      add :soc_trl_tax, :string

      add :soc_inv_hist, :boolean

      add :soc_ln_inv, :boolean

      add :soc_confirm, :boolean

      add :soc__qad03, :integer

      add :soc_det_all, :boolean

      add :soc_fysm, :integer

      add :soc_trl_ntax, :string

      add :soc_user1, :string

      add :soc_user2, :string

      add :soc_index1, :integer

      add :soc_next_abl, :integer

      add :soc_next_cid, :integer

      add :soc_fr_by_site, :boolean

      add :soc_inv_pre, :string

      add :soc_so_pre, :string

      add :soc_margin, :boolean

      add :soc_cr_hold, :boolean

      add :soc_pl_req, :boolean

      add :soc_min_ship, :decimal

      add :soc_inv_min, :decimal

      add :soc_fr_shp_calc, :boolean

      add :soc_frc_returns, :string

      add :soc_crtacc_acct, :string

      add :soc_crtacc_cc, :string

      add :soc_crtapp_acct, :string

      add :soc_crtapp_cc, :string

      add :soc_edit_isb, :boolean

      add :soc_min_shpamt, :decimal

      add :soc_pc_line, :boolean

      add :soc_pim_isb, :boolean

      add :soc_print_id, :string

      add :soc_pt_req, :boolean

      add :soc_batch, :boolean

      add :soc_batch_id, :string

      add :soc_returns_isb, :boolean

      add :soc__qadl02, :boolean

      add :soc__qadl03, :boolean

      add :soc__qadc01, :string

      add :soc__qadc02, :string

      add :soc__qadc03, :string

      add :soc__qadi01, :integer

      add :soc__qadi02, :integer

      add :soc_apm, :boolean

      add :soc_btb_type, :string

      add :soc_due_calc, :boolean

      add :soc_btb_all, :boolean

      add :soc_btb_sel, :string

      add :soc_use_btb, :boolean

      add :soc_dum_loc, :string

      add :soc_mlevel_btb, :boolean

      add :soc_ex_ratetype, :string

      add :soc_use_frt_trl_cd, :boolean

      add :soc_crtapp_sub, :string

      add :soc_crtacc_sub, :string

      add :soc_pass_curr, :boolean

      add :soc_auto_chg, :boolean

      add :soc_atp_enabled, :boolean

      add :soc_calc_promise_date, :boolean

      add :soc_horizon, :integer

      add :soc_crn_next, :integer

      add :soc_crn_pre, :string

      add :soc_domain, :string

      add :oid_soc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHTR_DET") do
      add :shtr_nbr, :string

      add :shtr_ship_id, :string

      add :shtr_cd, :string

      add :shtr_amt, :decimal

      add :shtr_curr, :string

      add :shtr_inv_nbr, :string

      add :shtr_ship_date, :naive_datetime

      add :shtr_site, :string

      add :shtr__qad01, :decimal

      add :shtr__qad02, :decimal

      add :shtr__qad03, :decimal

      add :shtr__qad04, :integer

      add :shtr__qad05, :decimal

      add :shtr_user1, :string

      add :shtr_user2, :string

      add :shtr_domain, :string

      add :oid_shtr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SC_MSTR") do
      add :sc_sim, :string

      add :sc_element, :string

      add :sc_desc, :string

      add :sc_category, :string

      add :sc_user1, :string

      add :sc_user2, :string

      add :sc__qadc01, :string

      add :sc_domain, :string

      add :oid_sc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SBIC_CTL") do
      add :sbic_active, :boolean

      add :sbic_prefix, :string

      add :sbic_index1, :integer

      add :sbic_next_sb, :integer

      add :sbic_user1, :string

      add :sbic_user2, :string

      add :sbic_user3, :string

      add :sbic_user4, :string

      add :sbic__qadc01, :string

      add :sbic__qadc02, :string

      add :sbic__qadc03, :string

      add :sbic__qadc04, :string

      add :sbic__qadi01, :integer

      add :sbic__qadi02, :integer

      add :sbic__qadi03, :integer

      add :sbic__qadi04, :integer

      add :sbic__qadd01, :decimal

      add :sbic__qadd02, :decimal

      add :sbic__qadd03, :decimal

      add :sbic__qadd04, :decimal

      add :sbic__qadl01, :boolean

      add :sbic__qadl02, :boolean

      add :sbic__qadl03, :boolean

      add :sbic__qadl04, :boolean

      add :sbic__qadt01, :naive_datetime

      add :sbic__qadt02, :naive_datetime

      add :sbic__qadt03, :naive_datetime

      add :sbic__qadt04, :naive_datetime

      add :sbic_domain, :string

      add :oid_sbic_ctl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SADH_HIST") do
      add :sadh__qadc05, :string

      add :sadh_amt_type, :string

      add :sadh_area, :string

      add :sadh_cancel, :naive_datetime

      add :sadh_ca_nbr, :string

      add :sadh__qadc06, :string

      add :sadh_cmtindx, :integer

      add :sadh_comment, :string

      add :sadh_comm_pct, :decimal

      add :sadh_crt_int, :decimal

      add :sadh_custpart, :string

      add :sadh_cycle, :string

      add :sadh__qadc07, :string

      add :sadh__qadc08, :string

      add :sadh_desc, :string

      add :sadh_discount, :boolean

      add :sadh_disc_pct, :decimal

      add :sadh__qadc09, :string

      add :sadh__qadc10, :string

      add :sadh_end_date, :naive_datetime

      add :sadh_es_nbr, :string

      add :sadh_eu_nbr, :string

      add :sadh_expire, :naive_datetime

      add :sadh_fix_pr, :boolean

      add :sadh_for, :string

      add :sadh_fst_list, :boolean

      add :sadh_lastbill, :naive_datetime

      add :sadh_line, :integer

      add :sadh_list_pr, :decimal

      add :sadh_lstcover, :naive_datetime

      add :sadh_lst_bill, :naive_datetime

      add :sadh_nbr, :string

      add :sadh_nxt_bill, :naive_datetime

      add :sadh_part, :string

      add :sadh_pct_type, :string

      add :sadh_per_date, :naive_datetime

      add :sadh_prefix, :string

      add :sadh_price, :decimal

      add :sadh_priority, :integer

      add :sadh_prodline, :string

      add :sadh_project, :string

      add :sadh_pr_list, :string

      add :sadh_pst, :boolean

      add :sadh_pvm_bill, :boolean

      add :sadh_pvm_bom, :string

      add :sadh_pvm_only, :boolean

      add :sadh_pvm_route, :string

      add :sadh_qty_bld, :decimal

      add :sadh_qty_chg, :decimal

      add :sadh_qty_item, :decimal

      add :sadh_qty_litm, :decimal

      add :sadh_qty_lst, :decimal

      add :sadh_qty_per, :decimal

      add :sadh_ref, :integer

      add :sadh_serial, :string

      add :sadh_site, :string

      add :sadh_slspsn, :string

      add :sadh_so_line, :integer

      add :sadh_so_ship, :string

      add :sadh_so_shipln, :integer

      add :sadh_status, :string

      add :sadh_std_cost, :decimal

      add :sadh_st_cover, :naive_datetime

      add :sadh_st_date, :naive_datetime

      add :sadh_taxable, :boolean

      add :sadh_taxc, :string

      add :sadh_tax_env, :string

      add :sadh_tax_in, :boolean

      add :sadh_tax_usage, :string

      add :sadh_total_bld, :decimal

      add :sadh_total_price, :decimal

      add :sadh_trnbr, :integer

      add :sadh_type, :string

      add :sadh_um, :string

      add :sadh_um_conv, :decimal

      add :sadh_user1, :string

      add :sadh_user2, :string

      add :sadh_visits, :decimal

      add :sadh__chr01, :string

      add :sadh__chr02, :string

      add :sadh__chr03, :string

      add :sadh__chr04, :string

      add :sadh__chr05, :string

      add :sadh__chr06, :string

      add :sadh__chr07, :string

      add :sadh__chr08, :string

      add :sadh__chr09, :string

      add :sadh__chr10, :string

      add :sadh__dec01, :decimal

      add :sadh__dec02, :decimal

      add :sadh__dec03, :decimal

      add :sadh__dte01, :naive_datetime

      add :sadh__dte02, :naive_datetime

      add :sadh__dte03, :naive_datetime

      add :sadh__log01, :boolean

      add :sadh__log02, :boolean

      add :sadh__log03, :boolean

      add :sadh__qadc01, :string

      add :sadh__qadc02, :string

      add :sadh__qadc03, :string

      add :sadh__qadc04, :string

      add :sadh__qadt01, :naive_datetime

      add :sadh__qadt02, :naive_datetime

      add :sadh__qadt03, :naive_datetime

      add :sadh__qadd01, :decimal

      add :sadh__qadd02, :decimal

      add :sadh__qadd03, :decimal

      add :sadh_prlist_fnd, :boolean

      add :sadh__qadl02, :boolean

      add :sadh__qadl03, :boolean

      add :sadh_mrp, :boolean

      add :sadh_mod_userid, :string

      add :sadh_mod_date, :naive_datetime

      add :sadh_pricing_dt, :naive_datetime

      add :sadh__qadl01, :boolean

      add :sadh_domain, :string

      add :oid_sadh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSC_CTRL") do
      add :rsc_active, :boolean

      add :rsc_gen_ship, :boolean

      add :rsc_auto_update, :boolean

      add :rsc_zero_req, :boolean

      add :rsc_firm_days, :integer

      add :rsc_ship_days, :integer

      add :rsc_ship_weeks, :integer

      add :rsc_ship_months, :integer

      add :rsc_fab_days, :integer

      add :rsc_raw_days, :integer

      add :rsc_user1, :string

      add :rsc_user2, :string

      add :rsc__qadc01, :string

      add :rsc__qadc02, :string

      add :rsc__qadd01, :decimal

      add :rsc__qadd02, :decimal

      add :rsc__qadi01, :integer

      add :rsc__qadi02, :integer

      add :rsc__qadl01, :boolean

      add :rsc__qadl02, :boolean

      add :rsc__qadl03, :boolean

      add :rsc__qadl04, :boolean

      add :rsc__qadt01, :naive_datetime

      add :rsc__qadi03, :integer

      add :rsc_domain, :string

      add :oid_rsc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHPC_CTRL") do
      add :shpc__qadi01, :integer

      add :shpc_active, :boolean

      add :shpc_include_so, :boolean

      add :shpc_include_sched, :boolean

      add :shpc_include_do, :boolean

      add :shpc_use_current, :boolean

      add :shpc_shipper_reasons, :boolean

      add :shpc_mod_userid, :string

      add :shpc_mod_date, :naive_datetime

      add :shpc_meas_subtype, :integer

      add :shpc_include_rma, :boolean

      add :shpc_sched_type, :integer

      add :shpc_include_mo, :boolean

      add :shpc__qadc01, :string

      add :shpc__qadc02, :string

      add :shpc_user1, :string

      add :shpc_user2, :string

      add :shpc_domain, :string

      add :oid_shpc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SFH_HIST") do
      add :sfh_cmtindx, :integer

      add :sfh_covered_amt, :decimal

      add :sfh_desc, :string

      add :sfh_fis_column, :integer

      add :sfh_fis_sort, :string

      add :sfh_fsc_code, :string

      add :sfh_line, :integer

      add :sfh_nbr, :string

      add :sfh_op, :integer

      add :sfh_part, :string

      add :sfh_price, :decimal

      add :sfh_qty_billed, :decimal

      add :sfh_qty_inv, :decimal

      add :sfh_qty_req, :decimal

      add :sfh_serial, :string

      add :sfh_so_line, :integer

      add :sfh_total_std, :decimal

      add :sfh__chr01, :string

      add :sfh__chr02, :string

      add :sfh__chr03, :string

      add :sfh__chr04, :string

      add :sfh__dec01, :decimal

      add :sfh__dec02, :decimal

      add :sfh__dec03, :decimal

      add :sfh__dte01, :naive_datetime

      add :sfh__dte02, :naive_datetime

      add :sfh__dte03, :naive_datetime

      add :sfh__log01, :boolean

      add :sfh__log02, :boolean

      add :sfh__log03, :boolean

      add :sfh__qadc01, :string

      add :sfh__qadc02, :string

      add :sfh__qadc03, :string

      add :sfh__qadc04, :string

      add :sfh__qadd01, :naive_datetime

      add :sfh__qadd02, :naive_datetime

      add :sfh__qadd03, :naive_datetime

      add :sfh__qadde01, :decimal

      add :sfh__qadde02, :decimal

      add :sfh__qadde03, :decimal

      add :sfh__qadl01, :boolean

      add :sfh__qadl02, :boolean

      add :sfh_exchange, :boolean

      add :sfh_fcg_code, :string

      add :sfh_qty_ret, :decimal

      add :sfh_exg_price, :decimal

      add :sfh_um, :string

      add :sfh_detail, :boolean

      add :sfh_fixed_cost, :decimal

      add :sfh_fixed_price, :decimal

      add :sfh_invoice_cost, :decimal

      add :sfh_ca_opn_date, :naive_datetime

      add :sfh_inv_nbr, :string

      add :sfh_pt_type, :integer

      add :sfh_user1, :string

      add :sfh_user2, :string

      add :sfh_mod_date, :naive_datetime

      add :sfh_mod_userid, :string

      add :sfh_report, :string

      add :sfh_ret_serial, :string

      add :sfh_trnbr, :integer

      add :sfh_taxc, :string

      add :sfh_tax_usage, :string

      add :sfh_taxable, :boolean

      add :sfh_tax_in, :boolean

      add :sfh_tax_env, :string

      add :sfh_pst, :boolean

      add :sfh__qadl03, :boolean

      add :sfh__qadl04, :boolean

      add :sfh_price_on_inv, :boolean

      add :sfh_qty_on_inv, :boolean

      add :sfh_domain, :string

      add :oid_sfh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SA_MSTR") do
      add :sa_nbr, :string

      add :sa_cust, :string

      add :sa_enduser, :string

      add :sa_ord_date, :naive_datetime

      add :sa_st_date, :naive_datetime

      add :sa_end_date, :naive_datetime

      add :sa_rmks, :string

      add :sa_cr_terms, :string

      add :sa_fob, :string

      add :sa_po, :string

      add :sa_shipvia, :string

      add :sa_print, :boolean

      add :sa_pr_list, :string

      add :sa__qadc05, :string

      add :sa_source, :string

      add :sa_xcomm_pct, :decimal

      add :sa_cr_card, :string

      add :sa_print_pl, :boolean

      add :sa_cr_init, :string

      add :sa_stat, :string

      add :sa_disc_pct, :decimal

      add :sa_tax_pct, :decimal

      add :sa_prepaid, :decimal

      add :sa_invoiced, :boolean

      add :sa_ar_acct, :string

      add :sa_ar_cc, :string

      add :sa_inv_date, :naive_datetime

      add :sa_ship_date, :naive_datetime

      add :sa_taxable, :boolean

      add :sa_cmtindx, :integer

      add :sa_user1, :string

      add :sa_user2, :string

      add :sa_curr, :string

      add :sa_ex_rate, :decimal

      add :sa_lang, :string

      add :sa_type, :string

      add :sa_conf_date, :naive_datetime

      add :sa_bol, :string

      add :sa_pst, :boolean

      add :sa_fst_id, :string

      add :sa_trl1_amt, :decimal

      add :sa_trl1_cd, :string

      add :sa_trl2_amt, :decimal

      add :sa_trl2_cd, :string

      add :sa_trl3_amt, :decimal

      add :sa_trl3_cd, :string

      add :sa_pst_id, :string

      add :sa_quote, :string

      add :sa_taxc, :string

      add :sa__chr01, :string

      add :sa__chr02, :string

      add :sa__chr03, :string

      add :sa__chr04, :string

      add :sa__chr05, :string

      add :sa__chr06, :string

      add :sa__chr07, :string

      add :sa__chr08, :string

      add :sa__chr09, :string

      add :sa__chr10, :string

      add :sa__dte01, :naive_datetime

      add :sa__dte02, :naive_datetime

      add :sa__dec01, :decimal

      add :sa__dec02, :decimal

      add :sa__log01, :boolean

      add :sa_sv_code, :string

      add :sa_last_bill, :naive_datetime

      add :sa_nxt_bill, :naive_datetime

      add :sa_rel_date, :naive_datetime

      add :sa_release, :boolean

      add :sa_um, :string

      add :sa_cycle, :string

      add :sa_prefix, :string

      add :sa_exp_date, :naive_datetime

      add :sa_complete, :boolean

      add :sa_bill_cnt, :integer

      add :sa_so_nbr, :string

      add :sa_prodline, :string

      add :sa_mref, :string

      add :sa_lst_cover, :naive_datetime

      add :sa_autornew, :boolean

      add :sa_ext_date, :naive_datetime

      add :sa_arrears, :boolean

      add :sa_hold, :boolean

      add :sa_st_cover, :naive_datetime

      add :sa_qty_per, :decimal

      add :sa_qty_plst, :decimal

      add :sa_lst_bill, :naive_datetime

      add :sa_can_tax, :decimal

      add :sa_free_frm, :naive_datetime

      add :sa_free_to, :naive_datetime

      add :sa_cancel, :naive_datetime

      add :sa_site, :string

      add :sa_bill_to, :string

      add :sa_summarize, :boolean

      add :sa_bill_type, :string

      add :sa_orig_date, :naive_datetime

      add :sa_date_printed, :naive_datetime

      add :sa_sa_type, :string

      add :sa_gen_0itm, :boolean

      add :sa_prt_0itm, :boolean

      add :sa_blanket, :boolean

      add :sa_serial_det, :boolean

      add :sa_area, :string

      add :sa_sched_start, :boolean

      add :sa_channel, :string

      add :sa_quote_mod, :boolean

      add :sa_ent_ex, :decimal

      add :sa_off_hours_pt, :string

      add :sa_rsn_lost, :string

      add :sa_tax_env, :string

      add :sa_tax_usage, :string

      add :sa_pr_list2, :string

      add :sa_fix_rate, :boolean

      add :sa_fix_pr, :boolean

      add :sa_tax_date, :naive_datetime

      add :sa_visits, :decimal

      add :sa_base_pct, :decimal

      add :sa_calls_allow, :integer

      add :sa_calls_total, :integer

      add :sa_next_dur, :decimal

      add :sa_periodic, :boolean

      add :sa_renewal_date, :naive_datetime

      add :sa_renew_count, :integer

      add :sa_renew_periods, :integer

      add :sa_revalue_date, :naive_datetime

      add :sa_reval_index, :integer

      add :sa__qadl04, :boolean

      add :sa_schedule, :boolean

      add :sa_total_billed, :decimal

      add :sa_total_cost, :decimal

      add :sa__qadc01, :string

      add :sa__qadc02, :string

      add :sa__qadc03, :string

      add :sa__qadc04, :string

      add :sa__qadt01, :naive_datetime

      add :sa__qadt02, :naive_datetime

      add :sa__qadt03, :naive_datetime

      add :sa__qadd01, :decimal

      add :sa__qadd02, :decimal

      add :sa__qadd03, :decimal

      add :sa__qadl01, :boolean

      add :sa__qadl02, :boolean

      add :sa__qadl03, :boolean

      add :sa_project, :string

      add :sa_mrp, :boolean

      add :sa_mod_userid, :string

      add :sa_mod_date, :naive_datetime

      add :sa_renewed_from, :string

      add :sa_renewed_to, :string

      add :sa_comm_pct, :decimal

      add :sa_slspsn, :string

      add :sa_limit_copy, :string

      add :sa_reval_period, :integer

      add :sa__dec03, :decimal

      add :sa__dte03, :naive_datetime

      add :sa__log02, :boolean

      add :sa__log03, :boolean

      add :sa_ex_rate2, :decimal

      add :sa_ex_ratetype, :string

      add :sa_exru_seq, :integer

      add :sa_ar_sub, :string

      add :sa_call_price, :string

      add :sa_revenue, :string

      add :sa_fsaccr_acct, :string

      add :sa_fsaccr_sub, :string

      add :sa_fsaccr_cc, :string

      add :sa_fsdef_acct, :string

      add :sa_fsdef_sub, :string

      add :sa_fsdef_cc, :string

      add :sa_bill_enduser, :boolean

      add :sa_bill_summary, :boolean

      add :sa_item_enduser, :boolean

      add :sa_per_bill, :boolean

      add :sa_prorate, :boolean

      add :sa_domain, :string

      add :oid_sa_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RS_MSTR") do
      add :rs_rsc, :string

      add :rs_desc, :string

      add :rs_um, :string

      add :rs_user1, :string

      add :rs_user2, :string

      add :rs_site, :string

      add :rs__qadc01, :string

      add :rs_domain, :string

      add :oid_rs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQPO_REF") do
      add :rqpo_req_nbr, :string

      add :rqpo_req_line, :integer

      add :rqpo_po_nbr, :string

      add :rqpo_po_line, :integer

      add :rqpo_qty_ord, :decimal

      add :rqpo__chr01, :string

      add :rqpo__chr02, :string

      add :rqpo__chr03, :string

      add :rqpo__chr04, :string

      add :rqpo__qadc01, :string

      add :rqpo__qadc02, :string

      add :rqpo__qadc03, :string

      add :rqpo__qadc04, :string

      add :rqpo_domain, :string

      add :oid_rqpo_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MAX_MSTR") do
      add :max_field, :string

      add :max_desc, :string

      add :max_beg_date, :naive_datetime

      add :max_end_date, :naive_datetime

      add :max_max, :decimal

      add :max_used, :decimal

      add :max_yr_cost, :decimal

      add :max_cost, :decimal

      add :max_reduce, :decimal

      add :max_book, :string

      add :max_class, :string

      add :max_basis, :string

      add :max_basis_yr, :integer

      add :max_mod_date, :naive_datetime

      add :max_userid, :string

      add :max_table, :boolean

      add :max_yr_max, :decimal

      add :max__qad01, :string

      add :max__qad02, :string

      add :max_user1, :string

      add :max_user2, :string

      add :oid_max_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SFB_DET") do
      add :sfb_cmtindx, :integer

      add :sfb_covered_amt, :decimal

      add :sfb_desc, :string

      add :sfb_fis_column, :integer

      add :sfb_fis_sort, :string

      add :sfb_fsc_code, :string

      add :sfb_line, :integer

      add :sfb_nbr, :string

      add :sfb_op, :integer

      add :sfb_part, :string

      add :sfb_price, :decimal

      add :sfb_qty_billed, :decimal

      add :sfb_qty_inv, :decimal

      add :sfb_qty_req, :decimal

      add :sfb_serial, :string

      add :sfb_so_line, :integer

      add :sfb_total_std, :decimal

      add :sfb__chr01, :string

      add :sfb__chr02, :string

      add :sfb__chr03, :string

      add :sfb__chr04, :string

      add :sfb__dec01, :decimal

      add :sfb__dec02, :decimal

      add :sfb__dec03, :decimal

      add :sfb__dte01, :naive_datetime

      add :sfb__dte02, :naive_datetime

      add :sfb__dte03, :naive_datetime

      add :sfb__log01, :boolean

      add :sfb__log02, :boolean

      add :sfb__log03, :boolean

      add :sfb__qadc01, :string

      add :sfb__qadc02, :string

      add :sfb__qadc03, :string

      add :sfb__qadc04, :string

      add :sfb__qadd01, :naive_datetime

      add :sfb__qadd02, :naive_datetime

      add :sfb__qadd03, :naive_datetime

      add :sfb__qadde01, :decimal

      add :sfb__qadde02, :decimal

      add :sfb__qadde03, :decimal

      add :sfb__qadl01, :boolean

      add :sfb__qadl02, :boolean

      add :sfb_exchange, :boolean

      add :sfb_fcg_code, :string

      add :sfb_qty_ret, :decimal

      add :sfb_exg_price, :decimal

      add :sfb_um, :string

      add :sfb_detail, :boolean

      add :sfb_fixed_cost, :decimal

      add :sfb_fixed_price, :decimal

      add :sfb_invoice_cost, :decimal

      add :sfb_ca_opn_date, :naive_datetime

      add :sfb_pt_type, :integer

      add :sfb_user1, :string

      add :sfb_user2, :string

      add :sfb_mod_date, :naive_datetime

      add :sfb_mod_userid, :string

      add :sfb_report, :string

      add :sfb_ret_serial, :string

      add :sfb_taxc, :string

      add :sfb_tax_usage, :string

      add :sfb_taxable, :boolean

      add :sfb_tax_in, :boolean

      add :sfb_tax_env, :string

      add :sfb_pst, :boolean

      add :sfb__qadl03, :boolean

      add :sfb__qadl04, :boolean

      add :sfb_price_on_inv, :boolean

      add :sfb_qty_on_inv, :boolean

      add :sfb_domain, :string

      add :oid_sfb_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCHD_DET") do
      add :schd_type, :integer

      add :schd_nbr, :string

      add :schd_line, :integer

      add :schd_rlse_id, :string

      add :schd_date, :naive_datetime

      add :schd_time, :string

      add :schd_discr_qty, :decimal

      add :schd_fc_qual, :string

      add :schd_interval, :string

      add :schd_cum_qty, :decimal

      add :schd_cmtindx, :integer

      add :schd__chr01, :string

      add :schd__chr02, :string

      add :schd__chr03, :string

      add :schd__chr04, :string

      add :schd__chr05, :string

      add :schd__chr06, :string

      add :schd__chr07, :string

      add :schd__chr08, :string

      add :schd__chr09, :string

      add :schd__chr10, :string

      add :schd__dec01, :decimal

      add :schd__dec02, :decimal

      add :schd__dec03, :decimal

      add :schd__dec04, :decimal

      add :schd__dec05, :decimal

      add :schd__dec06, :decimal

      add :schd__dec07, :decimal

      add :schd__dec08, :decimal

      add :schd__dec09, :decimal

      add :schd__dec10, :decimal

      add :schd__dte01, :naive_datetime

      add :schd__dte02, :naive_datetime

      add :schd__log01, :boolean

      add :schd__log02, :boolean

      add :schd_upd_qty, :decimal

      add :schd_user1, :string

      add :schd_user2, :string

      add :schd_ship_qty, :decimal

      add :schd_reference, :string

      add :schd_all_qty, :decimal

      add :schd_per_date, :naive_datetime

      add :schd_reference_type, :string

      add :schd_domain, :string

      add :oid_schd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAR_MSTR") do
      add :sar_nbr, :string

      add :sar_serial, :string

      add :sar__qadc01, :string

      add :sar__chr01, :string

      add :sar__chr02, :string

      add :sar__chr03, :string

      add :sar__dec01, :decimal

      add :sar__dec02, :decimal

      add :sar__dte01, :naive_datetime

      add :sar__dte02, :naive_datetime

      add :sar__log01, :boolean

      add :sar__log02, :boolean

      add :sar_ref, :string

      add :sar_prefix, :string

      add :sar_part, :string

      add :sar_user1, :string

      add :sar_user2, :string

      add :sar_sad_line, :integer

      add :sar_domain, :string

      add :oid_sar_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQM_MSTR") do
      add :rqm_nbr, :string

      add :rqm_req_date, :naive_datetime

      add :rqm_rqby_userid, :string

      add :rqm_end_userid, :string

      add :rqm_ship, :string

      add :rqm_cmtindx, :integer

      add :rqm_reason, :string

      add :rqm_eby_userid, :string

      add :rqm_status, :string

      add :rqm_print, :boolean

      add :rqm_due_date, :naive_datetime

      add :rqm_need_date, :naive_datetime

      add :rqm_vend, :string

      add :rqm_acct, :string

      add :rqm_sub, :string

      add :rqm_cc, :string

      add :rqm_project, :string

      add :rqm_fix_pr, :boolean

      add :rqm_curr, :string

      add :rqm_ex_rate, :decimal

      add :rqm_ent_date, :naive_datetime

      add :rqm_site, :string

      add :rqm_lang, :string

      add :rqm_disc_pct, :decimal

      add :rqm_bill, :string

      add :rqm_contact, :string

      add :rqm_ln_fmt, :boolean

      add :rqm_type, :string

      add :rqm_pr_list, :string

      add :rqm_ent_ex, :decimal

      add :rqm_rtdto_purch, :boolean

      add :rqm_partial, :boolean

      add :rqm_buyer, :string

      add :rqm_job, :string

      add :rqm_category, :string

      add :rqm_fix_rate, :boolean

      add :rqm_rmks, :string

      add :rqm_direct, :boolean

      add :rqm_apr_cmtindx, :integer

      add :rqm_rtto_userid, :string

      add :rqm_prev_userid, :string

      add :rqm_fob, :string

      add :rqm_shipvia, :string

      add :rqm_email_opt, :string

      add :rqm_entity, :string

      add :rqm_pent_userid, :string

      add :rqm_total, :decimal

      add :rqm_max_total, :decimal

      add :rqm_pr_list2, :string

      add :rqm_rtto_date, :naive_datetime

      add :rqm_rtto_time, :integer

      add :rqm_open, :boolean

      add :rqm_prev_rtp, :boolean

      add :rqm_cls_date, :naive_datetime

      add :rqm__chr01, :string

      add :rqm__chr02, :string

      add :rqm__chr03, :string

      add :rqm__chr04, :string

      add :rqm__log01, :boolean

      add :rqm__dec01, :decimal

      add :rqm__qadc01, :string

      add :rqm__qadc02, :string

      add :rqm__qadc03, :string

      add :rqm__qadc04, :string

      add :rqm_aprv_stat, :string

      add :rqm_ex_rate2, :decimal

      add :rqm_ex_ratetype, :string

      add :rqm_exru_seq, :integer

      add :rqm_domain, :string

      add :oid_rqm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQA_MSTR") do
      add :rqa_apr, :string

      add :rqa_type, :integer

      add :rqa_site, :string

      add :rqa_prod_line, :string

      add :rqa_entity, :string

      add :rqa_job, :string

      add :rqa_category, :string

      add :rqa_sub_from, :string

      add :rqa_sub_to, :string

      add :rqa_cc_from, :string

      add :rqa_cc_to, :string

      add :rqa_start, :naive_datetime

      add :rqa_end, :naive_datetime

      add :rqa_rvw_level, :integer

      add :rqa_rvw_req, :boolean

      add :rqa_apr_level, :integer

      add :rqa_apr_req, :boolean

      add :rqa_alt_apr, :string

      add :rqa_admin_apr, :string

      add :rqa__chr01, :string

      add :rqa__chr02, :string

      add :rqa__chr03, :string

      add :rqa__chr04, :string

      add :rqa__qadc01, :string

      add :rqa__qadc02, :string

      add :rqa__qadc03, :string

      add :rqa__qadc04, :string

      add :rqa_domain, :string

      add :oid_rqa_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_REG_MSTR") do
      add :reg_code, :string

      add :reg_type, :string

      add :reg_desc, :string

      add :reg__chr01, :string

      add :reg__chr02, :string

      add :reg__chr03, :string

      add :reg__dec01, :decimal

      add :reg__dec02, :decimal

      add :reg__dte01, :naive_datetime

      add :reg__dte02, :naive_datetime

      add :reg__log01, :boolean

      add :reg__log02, :boolean

      add :reg_user1, :string

      add :reg_user2, :string

      add :reg_loc, :string

      add :reg_time_zone, :integer

      add :reg_site, :string

      add :reg_repair, :boolean

      add :reg_3rd_party, :boolean

      add :reg_lang, :string

      add :reg_prod_line, :string

      add :reg_site_rtn, :string

      add :reg_loc_rtn, :string

      add :reg_wkctr, :string

      add :reg_project, :string

      add :reg__qadc05, :string

      add :reg__qadc04, :string

      add :reg_mod_date, :naive_datetime

      add :reg_mod_userid, :string

      add :reg__qadc01, :string

      add :reg__qadc02, :string

      add :reg__qadc03, :string

      add :reg__qadl01, :boolean

      add :reg__qadl02, :boolean

      add :reg__qadt01, :naive_datetime

      add :reg__qade01, :decimal

      add :reg_domain, :string

      add :oid_reg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QOR_MSTR") do
      add :qor_div, :string

      add :qor_group, :string

      add :qor_nbr, :string

      add :qor_pricing, :integer

      add :qor_seq, :integer

      add :qor_type, :integer

      add :qor_user1, :string

      add :qor_user2, :string

      add :qor__qadc01, :string

      add :qor__qadc02, :string

      add :qor__qadc03, :string

      add :qor__qadd01, :decimal

      add :qor__qadd02, :decimal

      add :qor__qadi01, :integer

      add :qor__qadi02, :integer

      add :qor__qadl01, :boolean

      add :qor__qadl02, :boolean

      add :qor__qadt01, :naive_datetime

      add :qor__qadt02, :naive_datetime

      add :qor_domain, :string

      add :oid_qor_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCA_MSTR") do
      add :sca_service, :string

      add :sca_part, :string

      add :sca_amount, :decimal

      add :sca_amt_type, :string

      add :sca_cycle, :string

      add :sca_pct_type, :string

      add :sca_priority, :integer

      add :sca_desc, :string

      add :sca_start, :naive_datetime

      add :sca_expire, :naive_datetime

      add :sca_prodline, :string

      add :sca_user1, :string

      add :sca_user2, :string

      add :sca_mod_userid, :string

      add :sca_mod_date, :naive_datetime

      add :sca__chr01, :string

      add :sca__chr02, :string

      add :sca__dte01, :naive_datetime

      add :sca__dte02, :naive_datetime

      add :sca__chr03, :string

      add :sca__dec01, :decimal

      add :sca__qadc01, :string

      add :sca__qadc02, :string

      add :sca__qadc03, :string

      add :sca__qadt01, :naive_datetime

      add :sca__qadt02, :naive_datetime

      add :sca__qade01, :decimal

      add :sca_domain, :string

      add :oid_sca_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAL_MSTR") do
      add :sal_nbr, :string

      add :sal_prefix, :string

      add :sal_file, :string

      add :sal_code, :string

      add :sal_limit_amt, :decimal

      add :sal_total, :decimal

      add :sal_ca_int_type, :string

      add :sal_type, :string

      add :sal_line, :integer

      add :sal_user1, :string

      add :sal_user2, :string

      add :sal_budget, :decimal

      add :sal_end, :naive_datetime

      add :sal_fcg_code, :string

      add :sal_fis_sort, :string

      add :sal_fsc_code, :string

      add :sal__qadl04, :boolean

      add :sal_ov_fcg_code, :string

      add :sal_pct_covered, :decimal

      add :sal_per_call, :boolean

      add :sal_start, :naive_datetime

      add :sal__chr01, :string

      add :sal__chr02, :string

      add :sal__chr03, :string

      add :sal__chr04, :string

      add :sal__dec01, :decimal

      add :sal__dec02, :decimal

      add :sal__dec03, :decimal

      add :sal__dte01, :naive_datetime

      add :sal__dte02, :naive_datetime

      add :sal__dte03, :naive_datetime

      add :sal__log01, :boolean

      add :sal__log02, :boolean

      add :sal__log03, :boolean

      add :sal__qadc01, :string

      add :sal__qadc02, :string

      add :sal__qadc03, :string

      add :sal__qadc04, :string

      add :sal__qadd01, :naive_datetime

      add :sal__qadd02, :naive_datetime

      add :sal__qadd03, :naive_datetime

      add :sal__qadde01, :decimal

      add :sal__qadde02, :decimal

      add :sal__qadde03, :decimal

      add :sal__qadl01, :boolean

      add :sal__qadl02, :boolean

      add :sal__qadl03, :boolean

      add :sal_unposted_amt, :decimal

      add :sal_listpr_limit, :decimal

      add :sal_calls_allow, :integer

      add :sal_calls_total, :integer

      add :sal_mod_userid, :string

      add :sal_mod_date, :naive_datetime

      add :sal_sequence, :integer

      add :sal_days, :integer

      add :sal_first_activity, :naive_datetime

      add :sal_last_activity, :naive_datetime

      add :sal_bg_price, :decimal

      add :sal_domain, :string

      add :oid_sal_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RST_MSTR") do
      add :rst_appr_code, :string

      add :rst_desc, :string

      add :rst_notify1, :string

      add :rst_notify2, :string

      add :rst_mod_date, :naive_datetime

      add :rst_userid, :string

      add :rst_user1, :string

      add :rst_user2, :string

      add :rst_svrty_list, :string

      add :rst_notify1_mail, :string

      add :rst_notify2_mail, :string

      add :rst__qadc01, :string

      add :rst_domain, :string

      add :oid_rst_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQL_MSTR") do
      add :rql_level, :integer

      add :rql_amt, :decimal

      add :rql_desc, :string

      add :rql__chr01, :string

      add :rql__chr02, :string

      add :rql__chr03, :string

      add :rql__dec01, :decimal

      add :rql__chr04, :string

      add :rql__qadc01, :string

      add :rql__qadc02, :string

      add :rql__qadc03, :string

      add :rql__qadc04, :string

      add :rql_domain, :string

      add :oid_rql_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_REQ_DET") do
      add :req_nbr, :string

      add :req_line, :integer

      add :req_part, :string

      add :req_qty, :decimal

      add :req_rel_date, :naive_datetime

      add :req_need, :naive_datetime

      add :req_um, :string

      add :req_print, :boolean

      add :req_so_job, :string

      add :req_user1, :string

      add :req_user2, :string

      add :req_site, :string

      add :req_acct, :string

      add :req_cc, :string

      add :req_cmtindx, :integer

      add :req_request, :string

      add :req_apr_by, :string

      add :req__chr01, :string

      add :req__chr02, :string

      add :req__chr03, :string

      add :req__chr04, :string

      add :req__chr05, :string

      add :req__dte01, :naive_datetime

      add :req__dte02, :naive_datetime

      add :req__dec01, :decimal

      add :req__dec02, :decimal

      add :req__log01, :boolean

      add :req_project, :string

      add :req_apr_code, :string

      add :req_pur_cost, :decimal

      add :req_apr_prnt, :boolean

      add :req_approved, :boolean

      add :req_apr_ent, :string

      add :req_po_site, :string

      add :req_sub, :string

      add :req_app_owner, :string

      add :req_domain, :string

      add :oid_req_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SBD_DET") do
      add :sbd_sub, :string

      add :sbd_line, :integer

      add :sbd_acc_beg, :string

      add :sbd_acc_end, :string

      add :sbd_user1, :string

      add :sbd_user2, :string

      add :sbd__qadc01, :string

      add :oid_sbd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAC_CTRL") do
      add :sac_auto_sa, :boolean

      add :sac_sa, :integer

      add :sac_ln_fmt, :boolean

      add :sac_print, :boolean

      add :sac_company, :string

      add :sac_fob, :string

      add :sac_hcmmts, :boolean

      add :sac_lcmmts, :boolean

      add :sac_trl_tax, :string

      add :sac__qad01, :integer

      add :sac_trl_ntax, :string

      add :sac_user1, :string

      add :sac_user2, :string

      add :sac_index1, :integer

      add :sac_sa_pre, :string

      add :sac_saqo_nbr, :boolean

      add :sac_qo, :integer

      add :sac_qo_pre, :string

      add :sac_so_nbr, :integer

      add :sac_so_pre, :string

      add :sac_free_mth, :integer

      add :sac_free_gt, :integer

      add :sac_free_be, :boolean

      add :sac__chr01, :string

      add :sac__chr02, :string

      add :sac__chr03, :string

      add :sac__chr04, :string

      add :sac__chr05, :string

      add :sac__chr06, :string

      add :sac__chr07, :string

      add :sac__chr08, :string

      add :sac__chr09, :string

      add :sac__chr10, :string

      add :sac__dec01, :decimal

      add :sac__dec02, :decimal

      add :sac__dec03, :decimal

      add :sac__dte01, :naive_datetime

      add :sac__dte02, :naive_datetime

      add :sac__dte03, :naive_datetime

      add :sac__dte04, :naive_datetime

      add :sac__log01, :boolean

      add :sac__log02, :boolean

      add :sac__log03, :boolean

      add :sac__log04, :boolean

      add :sac__log05, :boolean

      add :sac_so_hist, :boolean

      add :sac_deferred, :boolean

      add :sac_contract_pr, :boolean

      add :sac_sa_site, :string

      add :sac__qadl04, :boolean

      add :sac_gen_def, :boolean

      add :sac_calls_mrp, :boolean

      add :sac_create_pm, :boolean

      add :sac_limits_wnd, :boolean

      add :sac_renewal_days, :integer

      add :sac_renew_fmt, :string

      add :sac_reval_bill, :boolean

      add :sac_reval_wnd, :boolean

      add :sac_rvidx_nxtbl, :boolean

      add :sac_sa_multi, :boolean

      add :sac_user_pricing, :boolean

      add :sac__qadc01, :string

      add :sac__qadc02, :string

      add :sac__qadc03, :string

      add :sac__qadi01, :integer

      add :sac__qadi02, :integer

      add :sac__qadl01, :boolean

      add :sac__qadl02, :boolean

      add :sac__qadl03, :boolean

      add :sac_mod_userid, :string

      add :sac_mod_date, :naive_datetime

      add :sac_pm_days, :boolean

      add :sac_limit_copy, :string

      add :sac_lim_hist, :boolean

      add :sac_ex_ratetype, :string

      add :sac_pt_isb, :boolean

      add :sac_revenue, :string

      add :sac_bill_enduser, :boolean

      add :sac_bill_summary, :boolean

      add :sac_item_enduser, :boolean

      add :sac_eu_totals, :boolean

      add :sac_eu_add_chrg, :boolean

      add :sac_add_chrg, :boolean

      add :sac_domain, :string

      add :oid_sac_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQ_MSTR") do
      add :rq_part, :string

      add :rq_rsc, :string

      add :rq_qty_per, :decimal

      add :rq_lead, :integer

      add :rq_lt_off, :integer

      add :rq_start, :naive_datetime

      add :rq_end, :naive_datetime

      add :rq_ref, :string

      add :rq_user1, :string

      add :rq_user2, :string

      add :rq__chr01, :string

      add :rq__chr02, :string

      add :rq__chr03, :string

      add :rq__chr04, :string

      add :rq__chr05, :string

      add :rq__dte01, :naive_datetime

      add :rq__dte02, :naive_datetime

      add :rq__dec01, :decimal

      add :rq__dec02, :decimal

      add :rq__log01, :boolean

      add :rq_site, :string

      add :rq_domain, :string

      add :oid_rq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQDA_DET") do
      add :rqda_nbr, :string

      add :rqda_apr_userid, :string

      add :rqda_action, :string

      add :rqda_date, :naive_datetime

      add :rqda_time, :integer

      add :rqda_ent_userid, :string

      add :rqda__chr01, :string

      add :rqda__chr02, :string

      add :rqda__chr03, :string

      add :rqda__chr04, :string

      add :rqda__qadc01, :string

      add :rqda__qadc02, :string

      add :rqda__qadc03, :string

      add :rqda__qadc04, :string

      add :rqda_domain, :string

      add :oid_rqda_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RMA_MSTR") do
      add :rma_nbr, :string

      add :rma_cust_ven, :string

      add :rma_ship, :string

      add :rma_ord_date, :naive_datetime

      add :rma_req_date, :naive_datetime

      add :rma_exp_date, :naive_datetime

      add :rma_prt_rec, :boolean

      add :rma_pr_list, :string

      add :rma_source, :string

      add :rma_stat, :string

      add :rma_shipdate, :naive_datetime

      add :rma_cmtindx, :integer

      add :rma_user1, :string

      add :rma_user2, :string

      add :rma_type, :string

      add :rma__chr01, :string

      add :rma__chr02, :string

      add :rma__chr03, :string

      add :rma__chr04, :string

      add :rma__chr05, :string

      add :rma__chr06, :string

      add :rma__chr07, :string

      add :rma__chr08, :string

      add :rma__chr09, :string

      add :rma__chr10, :string

      add :rma__dte01, :naive_datetime

      add :rma__dte02, :naive_datetime

      add :rma__dec01, :decimal

      add :rma__dec02, :decimal

      add :rma__log01, :boolean

      add :rma_complete, :boolean

      add :rma_prefix, :string

      add :rma_crprlist, :string

      add :rma_contract, :string

      add :rma_ctype, :string

      add :rma_ca_nbr, :string

      add :rma_loc_iss, :string

      add :rma_site_rec, :string

      add :rma_site_iss, :string

      add :rma_loc_rec, :string

      add :rma_bill_to, :string

      add :rma__qadc04, :string

      add :rma__qadd03, :decimal

      add :rma_taxc, :string

      add :rma_taxable, :boolean

      add :rma_eng_code, :string

      add :rma_cstmlist, :string

      add :rma_enduser, :string

      add :rma__qadc01, :string

      add :rma__qadc02, :string

      add :rma__qadc03, :string

      add :rma__qadt01, :naive_datetime

      add :rma__qadt02, :naive_datetime

      add :rma__qadt03, :naive_datetime

      add :rma__qadd01, :decimal

      add :rma__qadd02, :decimal

      add :rma__qadi01, :integer

      add :rma__qadi02, :integer

      add :rma__qadl01, :boolean

      add :rma__qadl02, :boolean

      add :rma_mod_userid, :string

      add :rma_mod_date, :naive_datetime

      add :rma_rstk_pct, :decimal

      add :rma__qadd04, :decimal

      add :rma__qadc05, :string

      add :rma__qadi03, :integer

      add :rma_domain, :string

      add :oid_rma_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QR_TEST") do
      add :qr_nbr, :string

      add :qr_op, :integer

      add :qr_desc, :string

      add :qr_wkctr, :string

      add :qr_act_op, :decimal

      add :qr_op_time, :decimal

      add :qr_qty_ord, :decimal

      add :qr_qty_accpt, :decimal

      add :qr_qty_rjct, :decimal

      add :qr_status, :string

      add :qr_tool, :string

      add :qr_start, :naive_datetime

      add :qr_due, :naive_datetime

      add :qr_lot, :string

      add :qr_part, :string

      add :qr_cmtindx, :integer

      add :qr_user1, :string

      add :qr_user2, :string

      add :qr__chr01, :string

      add :qr__chr02, :string

      add :qr__chr03, :string

      add :qr__chr04, :string

      add :qr__chr05, :string

      add :qr__dte01, :naive_datetime

      add :qr__dte02, :naive_datetime

      add :qr__dec01, :decimal

      add :qr__dec02, :decimal

      add :qr__log01, :boolean

      add :qr_mch, :string

      add :qr_domain, :string

      add :oid_qr_test, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAH_HIST") do
      add :sah_area, :string

      add :sah_arrears, :boolean

      add :sah__qadc05, :string

      add :sah__qadc06, :string

      add :sah_autornew, :boolean

      add :sah_base_pct, :decimal

      add :sah_bill_cnt, :integer

      add :sah_bill_to, :string

      add :sah_bill_type, :string

      add :sah_blanket, :boolean

      add :sah_bol, :string

      add :sah_calls_allow, :integer

      add :sah_calls_total, :integer

      add :sah_cancel, :naive_datetime

      add :sah_can_tax, :decimal

      add :sah_channel, :string

      add :sah_cmtindx, :integer

      add :sah_xcomm_pct, :decimal

      add :sah_complete, :boolean

      add :sah_conf_date, :naive_datetime

      add :sah_cr_card, :string

      add :sah_cr_init, :string

      add :sah_cr_terms, :string

      add :sah_curr, :string

      add :sah_cust, :string

      add :sah_cycle, :string

      add :sah_date_printed, :naive_datetime

      add :sah_disc_pct, :decimal

      add :sah_enduser, :string

      add :sah_end_date, :naive_datetime

      add :sah_ent_ex, :decimal

      add :sah_exp_date, :naive_datetime

      add :sah_ext_date, :naive_datetime

      add :sah_ex_rate, :decimal

      add :sah_fix_pr, :boolean

      add :sah_fix_rate, :boolean

      add :sah_fob, :string

      add :sah_free_frm, :naive_datetime

      add :sah_free_to, :naive_datetime

      add :sah_fst_id, :string

      add :sah_gen_0itm, :boolean

      add :sah_hold, :boolean

      add :sah_invoiced, :boolean

      add :sah_inv_date, :naive_datetime

      add :sah_lang, :string

      add :sah_last_bill, :naive_datetime

      add :sah_lst_bill, :naive_datetime

      add :sah_lst_cover, :naive_datetime

      add :sah_mref, :string

      add :sah_nbr, :string

      add :sah_next_dur, :decimal

      add :sah_nxt_bill, :naive_datetime

      add :sah_off_hours_pt, :string

      add :sah_ord_date, :naive_datetime

      add :sah_orig_date, :naive_datetime

      add :sah_part, :string

      add :sah_periodic, :boolean

      add :sah_po, :string

      add :sah_prefix, :string

      add :sah_prepaid, :decimal

      add :sah_print, :boolean

      add :sah_print_pl, :boolean

      add :sah_prodline, :string

      add :sah_prt_0itm, :boolean

      add :sah_pr_list, :string

      add :sah_pr_list2, :string

      add :sah_pst, :boolean

      add :sah_pst_id, :string

      add :sah_qty_per, :decimal

      add :sah_qty_plst, :decimal

      add :sah_quote, :string

      add :sah_quote_mod, :boolean

      add :sah_release, :boolean

      add :sah_rel_date, :naive_datetime

      add :sah_renewal_date, :naive_datetime

      add :sah_renew_count, :integer

      add :sah_renew_period, :integer

      add :sah_revalue_date, :naive_datetime

      add :sah_reval_index, :integer

      add :sah_reval_period, :integer

      add :sah_rmks, :string

      add :sah_rsn_lost, :string

      add :sah_sah_type, :string

      add :sah_schedule, :boolean

      add :sah_sched_start, :boolean

      add :sah_serial_det, :boolean

      add :sah_shipvia, :string

      add :sah_ship_date, :naive_datetime

      add :sah_site, :string

      add :sah_xslspsn, :string

      add :sah_source, :string

      add :sah_so_nbr, :string

      add :sah_stat, :string

      add :sah_st_cover, :naive_datetime

      add :sah_st_date, :naive_datetime

      add :sah_summarize, :boolean

      add :sah_taxable, :boolean

      add :sah_taxc, :string

      add :sah_tax_date, :naive_datetime

      add :sah_tax_env, :string

      add :sah_tax_pct, :decimal

      add :sah_tax_usage, :string

      add :sah_total_billed, :decimal

      add :sah_total_cost, :decimal

      add :sah_trl1_amt, :decimal

      add :sah_trl1_cd, :string

      add :sah_trl2_amt, :decimal

      add :sah_trl2_cd, :string

      add :sah_trl3_amt, :decimal

      add :sah_trl3_cd, :string

      add :sah_trnbr, :integer

      add :sah_type, :string

      add :sah_um, :string

      add :sah_user1, :string

      add :sah_user2, :string

      add :sah_visits, :decimal

      add :sah__chr01, :string

      add :sah__chr02, :string

      add :sah__chr03, :string

      add :sah__chr04, :string

      add :sah__chr05, :string

      add :sah__chr06, :string

      add :sah__chr07, :string

      add :sah__chr08, :string

      add :sah__chr09, :string

      add :sah__chr10, :string

      add :sah__dec01, :decimal

      add :sah__dec02, :decimal

      add :sah__dec03, :decimal

      add :sah__dte01, :naive_datetime

      add :sah__dte02, :naive_datetime

      add :sah__dte03, :naive_datetime

      add :sah__log01, :boolean

      add :sah__log02, :boolean

      add :sah__log03, :boolean

      add :sah__qadc01, :string

      add :sah__qadc02, :string

      add :sah__qadc03, :string

      add :sah__qadc04, :string

      add :sah__qadt01, :naive_datetime

      add :sah__qadt02, :naive_datetime

      add :sah__qadt03, :naive_datetime

      add :sah__qadd01, :decimal

      add :sah__qadd02, :decimal

      add :sah__qadd03, :decimal

      add :sah__qadl01, :boolean

      add :sah__qadl02, :boolean

      add :sah__qadl03, :boolean

      add :sah_project, :string

      add :sah_mrp, :boolean

      add :sah_mod_userid, :string

      add :sah_mod_date, :naive_datetime

      add :sah_limit_copy, :string

      add :sah_renewed_from, :string

      add :sah_renewed_to, :string

      add :sah_comm_pct, :decimal

      add :sah_slspsn, :string

      add :sah__qadl04, :boolean

      add :sah_ex_rate2, :decimal

      add :sah_ex_ratetype, :string

      add :sah_exru_seq, :integer

      add :sah_domain, :string

      add :oid_sah_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSN_REF") do
      add :rsn_code, :string

      add :rsn_type, :string

      add :rsn_desc, :string

      add :rsn_user1, :string

      add :rsn_user2, :string

      add :rsn__qadc01, :string

      add :rsn_domain, :string

      add :oid_rsn_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQH_HIST") do
      add :rqh_line, :integer

      add :rqh_nbr, :string

      add :rqh_date, :naive_datetime

      add :rqh_time, :integer

      add :rqh_seq_nbr, :integer

      add :rqh_apr_userid, :string

      add :rqh_role, :string

      add :rqh_action, :string

      add :rqh_ent_userid, :string

      add :rqh_rtto_userid, :string

      add :rqh_email_list, :string

      add :rqh_role_list, :string

      add :rqh__chr01, :string

      add :rqh__chr02, :string

      add :rqh__chr03, :string

      add :rqh__chr04, :string

      add :rqh__qadc01, :string

      add :rqh__qadc02, :string

      add :rqh__qadc03, :string

      add :rqh__qadc04, :string

      add :rqh_domain, :string

      add :oid_rqh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RND_MSTR") do
      add :rnd_rnd_mthd, :string

      add :rnd_desc, :string

      add :rnd_unit, :decimal

      add :rnd_thrshld, :decimal

      add :rnd_dec_pt, :string

      add :rnd__qad01, :string

      add :rnd__qad02, :string

      add :rnd__qad03, :string

      add :rnd__qad04, :string

      add :rnd__chr01, :string

      add :rnd__chr02, :string

      add :rnd__chr03, :string

      add :rnd__chr04, :string

      add :rnd_user1, :string

      add :rnd_user2, :string

      add :rnd_domain, :string

      add :oid_rnd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RCSD_DET") do
      add :rcsd_shipfrom, :string

      add :rcsd_shipto, :string

      add :rcsd_rlse_id, :string

      add :rcsd_cust_job, :string

      add :rcsd_cust_seq, :string

      add :rcsd_cust_part, :string

      add :rcsd_part, :string

      add :rcsd_date, :naive_datetime

      add :rcsd_time, :string

      add :rcsd_discr_qty, :decimal

      add :rcsd_cum_qty, :decimal

      add :rcsd_order, :string

      add :rcsd_line, :integer

      add :rcsd_dock, :string

      add :rcsd_line_feed, :string

      add :rcsd_cust_ref, :string

      add :rcsd_status, :string

      add :rcsd_cust_build_date, :naive_datetime

      add :rcsd_derived_rlse_id, :string

      add :rcsd_cust_po, :string

      add :rcsd_picked, :boolean

      add :rcsd_x_referenced, :boolean

      add :rcsd_deleted, :boolean

      add :rcsd_mod_userid, :string

      add :rcsd_mod_date, :naive_datetime

      add :rcsd_mod_pgm, :string

      add :rcsd_user1, :string

      add :rcsd_user2, :string

      add :rcsd__qadc01, :string

      add :rcsd__qadc02, :string

      add :rcsd__qadd01, :decimal

      add :rcsd__qadd02, :decimal

      add :rcsd__qadi01, :integer

      add :rcsd__qadi02, :integer

      add :rcsd__qadl01, :boolean

      add :rcsd__qadl02, :boolean

      add :rcsd__qadt01, :naive_datetime

      add :rcsd__qadt02, :naive_datetime

      add :rcsd_modelyr, :string

      add :rcsd_custref, :string

      add :rcsd_domain, :string

      add :oid_rcsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QADDB_CTRL") do
      add :qaddb_index1, :integer

      add :qaddb_server_timezone, :string

      add :qaddb_oid_code, :integer

      add :qaddb_oid_regid, :decimal

      add :qaddb_mod_userid, :string

      add :qaddb_mod_date, :naive_datetime

      add :qaddb_user1, :string

      add :qaddb_user2, :string

      add :qaddb__qadc01, :string

      add :qaddb__qadc02, :string

      add :oid_qaddb_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAD_DET") do
      add :sad_nbr, :string

      add :sad_end_date, :naive_datetime

      add :sad_per_date, :naive_datetime

      add :sad_st_date, :naive_datetime

      add :sad_line, :integer

      add :sad_sv_code, :string

      add :sad_qty_item, :decimal

      add :sad_qty_bld, :decimal

      add :sad_type, :string

      add :sad_price, :decimal

      add :sad_std_cost, :decimal

      add :sad_qty_chg, :decimal

      add :sad_acct, :string

      add :sad_taxable, :boolean

      add :sad_serial, :string

      add :sad_desc, :string

      add :sad_um, :string

      add :sad_cc, :string

      add :sad_comment, :string

      add :sad_um_conv, :decimal

      add :sad_disc_pct, :decimal

      add :sad_project, :string

      add :sad_cmtindx, :integer

      add :sad_custpart, :string

      add :sad_status, :string

      add :sad_xslspsn, :string

      add :sad_xcomm_pct, :decimal

      add :sad_user1, :string

      add :sad_user2, :string

      add :sad_expire, :naive_datetime

      add :sad_taxc, :string

      add :sad_prodline, :string

      add :sad_tax_in, :boolean

      add :sad_fst_list, :boolean

      add :sad_pst, :boolean

      add :sad__chr01, :string

      add :sad__chr02, :string

      add :sad__chr03, :string

      add :sad__chr04, :string

      add :sad__chr05, :string

      add :sad__chr06, :string

      add :sad__chr07, :string

      add :sad__chr08, :string

      add :sad__chr09, :string

      add :sad__chr10, :string

      add :sad__dte01, :naive_datetime

      add :sad__dte02, :naive_datetime

      add :sad__dec01, :decimal

      add :sad__dec02, :decimal

      add :sad__log01, :boolean

      add :sad_for, :string

      add :sad_list_pr, :decimal

      add :sad_dsc_acct, :string

      add :sad_dsc_cc, :string

      add :sad_pr_list, :string

      add :sad_prefix, :string

      add :sad_qty_lst, :decimal

      add :sad_lstcover, :naive_datetime

      add :sad_lastbill, :naive_datetime

      add :sad_ref, :integer

      add :sad_st_cover, :naive_datetime

      add :sad_qty_per, :decimal

      add :sad_nxt_bill, :naive_datetime

      add :sad_qty_litm, :decimal

      add :sad_lst_bill, :naive_datetime

      add :sad_cycle, :string

      add :sad_cancel, :naive_datetime

      add :sad_site, :string

      add :sad_eu_nbr, :string

      add :sad_visits, :decimal

      add :sad_ca_nbr, :string

      add :sad_pvm_route, :string

      add :sad_pvm_bom, :string

      add :sad_amt_type, :string

      add :sad_pct_type, :string

      add :sad_priority, :integer

      add :sad__qadc05, :string

      add :sad__qadc06, :string

      add :sad_so_ship, :string

      add :sad_sod_line, :integer

      add :sad_discount, :boolean

      add :sad_area, :string

      add :sad_fix_pr, :boolean

      add :sad_es_nbr, :string

      add :sad_tax_env, :string

      add :sad_tax_usage, :string

      add :sad_pvm_bill, :boolean

      add :sad_pvm_only, :boolean

      add :sad_so_shipln, :integer

      add :sad_crt_int, :decimal

      add :sad_pricing_dt, :naive_datetime

      add :sad_total_bld, :decimal

      add :sad__qadc01, :string

      add :sad__qadc02, :string

      add :sad__qadc03, :string

      add :sad__qadc04, :string

      add :sad__qadt01, :naive_datetime

      add :sad__qadt02, :naive_datetime

      add :sad__qadt03, :naive_datetime

      add :sad__qadd01, :decimal

      add :sad__qadd02, :decimal

      add :sad__qadd03, :decimal

      add :sad_prlist_fnd, :boolean

      add :sad__qadl02, :boolean

      add :sad__qadl03, :boolean

      add :sad_mrp, :boolean

      add :sad_mod_userid, :string

      add :sad_mod_date, :naive_datetime

      add :sad_slspsn, :string

      add :sad_comm_pct, :decimal

      add :sad__qadl01, :boolean

      add :sad_sub, :string

      add :sad_dsc_sub, :string

      add :sad_dsc_project, :string

      add :sad_accrued, :boolean

      add :sad_line_type, :string

      add :sad_ui_line, :integer

      add :sad_parent_line, :integer

      add :sad_cust, :string

      add :sad_bill_to, :string

      add :sad_blanket_eu, :boolean

      add :sad_so_nbr, :string

      add :sad_autorenew, :boolean

      add :sad_po, :string

      add :sad_curr, :string

      add :sad_exru_seq, :integer

      add :sad_ex_rate, :decimal

      add :sad_ex_rate2, :decimal

      add :sad_ex_ratetype, :string

      add :sad_fix_rate, :boolean

      add :sad_released, :boolean

      add :sad_renewed_to, :string

      add :sad_domain, :string

      add :oid_sad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQF_CTRL") do
      add :rqf__qadi01, :integer

      add :rqf_nbr, :integer

      add :rqf_pre, :string

      add :rqf_ln_fmt, :boolean

      add :rqf_tol_val, :decimal

      add :rqf_use_tolval, :boolean

      add :rqf_tol_pct, :decimal

      add :rqf_use_tolpct, :boolean

      add :rqf_lcmmts, :boolean

      add :rqf_hcmmts, :boolean

      add :rqf_appr_curr, :string

      add :rqf_email_opt, :string

      add :rqf_oot_rtg, :string

      add :rqf_oot_rtg_mode, :boolean

      add :rqf_diraprs_req, :integer

      add :rqf_horaprs_req, :integer

      add :rqf_vrtaprs_req, :integer

      add :rqf__chr01, :string

      add :rqf__chr02, :string

      add :rqf__chr03, :string

      add :rqf__chr04, :string

      add :rqf__dec01, :decimal

      add :rqf__log01, :boolean

      add :rqf__dte01, :naive_datetime

      add :rqf__qadc01, :string

      add :rqf__qadc02, :string

      add :rqf__qadc03, :string

      add :rqf__qadc04, :string

      add :rqf_domain, :string

      add :oid_rqf_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RMD_DET") do
      add :rmd_nbr, :string

      add :rmd_line, :integer

      add :rmd_part, :string

      add :rmd_qty_ord, :decimal

      add :rmd_qty_acp, :decimal

      add :rmd__qadc04, :string

      add :rmd_price, :decimal

      add :rmd_ser, :string

      add :rmd_desc, :string

      add :rmd_comment, :string

      add :rmd_cmtindx, :integer

      add :rmd_status, :string

      add :rmd_user1, :string

      add :rmd_user2, :string

      add :rmd_prodline, :string

      add :rmd__chr01, :string

      add :rmd__chr02, :string

      add :rmd__chr03, :string

      add :rmd__chr04, :string

      add :rmd__chr05, :string

      add :rmd__chr06, :string

      add :rmd__chr07, :string

      add :rmd__chr08, :string

      add :rmd__chr09, :string

      add :rmd__chr10, :string

      add :rmd__dte01, :naive_datetime

      add :rmd__dte02, :naive_datetime

      add :rmd__dec01, :decimal

      add :rmd__dec02, :decimal

      add :rmd__log01, :boolean

      add :rmd_route, :string

      add :rmd_fault_cd, :string

      add :rmd_ref, :integer

      add :rmd_exp_date, :naive_datetime

      add :rmd_cpl_date, :naive_datetime

      add :rmd_rma_nbr, :string

      add :rmd_rma_line, :integer

      add :rmd_prefix, :string

      add :rmd_restock, :decimal

      add :rmd_loaner, :boolean

      add :rmd_ser_lon, :string

      add :rmd_done, :boolean

      add :rmd_type, :string

      add :rmd_link, :integer

      add :rmd_rma_rtrn, :boolean

      add :rmd_cvr_pct, :decimal

      add :rmd_iss, :boolean

      add :rmd_site, :string

      add :rmd_loc, :string

      add :rmd_edit_isb, :boolean

      add :rmd_rev, :string

      add :rmd_chg_type, :string

      add :rmd_um, :string

      add :rmd_um_conv, :decimal

      add :rmd_sv_code, :string

      add :rmd_eng_code, :string

      add :rmd_customs, :decimal

      add :rmd_qty_rel, :decimal

      add :rmd_sa_nbr, :string

      add :rmd_covered, :decimal

      add :rmd_par_ser, :string

      add :rmd_end, :string

      add :rmd_qty_non, :decimal

      add :rmd_par_part, :string

      add :rmd_par_date, :naive_datetime

      add :rmd_ins_date, :naive_datetime

      add :rmd_process, :string

      add :rmd_start, :string

      add :rmd_op_tran, :string

      add :rmd__qadc01, :string

      add :rmd__qadc02, :string

      add :rmd__qadc03, :string

      add :rmd__qadt01, :naive_datetime

      add :rmd__qadt02, :naive_datetime

      add :rmd__qadt03, :naive_datetime

      add :rmd__qadd01, :decimal

      add :rmd__qadd02, :decimal

      add :rmd__qadi01, :integer

      add :rmd__qadi02, :integer

      add :rmd__qadl01, :boolean

      add :rmd__qadl02, :boolean

      add :rmd__qadl03, :boolean

      add :rmd__qadi03, :integer

      add :rmd__qadd03, :decimal

      add :rmd__qadt04, :naive_datetime

      add :rmd__qadt05, :naive_datetime

      add :rmd_mod_userid, :string

      add :rmd_mod_date, :naive_datetime

      add :rmd_domain, :string

      add :oid_rmd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RCF_CTRL") do
      add :rcf__qadi03, :integer

      add :rcf_active, :boolean

      add :rcf_inc_in_rss, :boolean

      add :rcf_sch_default, :boolean

      add :rcf_packing_order, :boolean

      add :rcf_shipper_print, :boolean

      add :rcf_invoice_print, :boolean

      add :rcf_asn_edi, :boolean

      add :rcf_invoice_edi, :boolean

      add :rcf_firm_seq_days, :integer

      add :rcf_seq_per_container, :integer

      add :rcf_merge_seq, :boolean

      add :rcf_check_seq_tol, :boolean

      add :rcf_max_tol, :integer

      add :rcf_mod_userid, :string

      add :rcf_mod_date, :naive_datetime

      add :rcf_mod_pgm, :string

      add :rcf_user1, :string

      add :rcf_user2, :string

      add :rcf__qadc01, :string

      add :rcf__qadc02, :string

      add :rcf__qadd01, :decimal

      add :rcf__qadd02, :decimal

      add :rcf__qadi01, :integer

      add :rcf__qadi02, :integer

      add :rcf__qadl01, :boolean

      add :rcf__qadl02, :boolean

      add :rcf__qadl03, :boolean

      add :rcf__qadl04, :boolean

      add :rcf__qadt01, :naive_datetime

      add :rcf__qadt02, :naive_datetime

      add :rcf_domain, :string

      add :oid_rcf_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QOD_DET") do
      add :qod_nbr, :string

      add :qod_due_date, :naive_datetime

      add :qod_per_date, :naive_datetime

      add :qod_req_date, :naive_datetime

      add :qod_line, :integer

      add :qod_part, :string

      add :qod_loc, :string

      add :qod_type, :string

      add :qod_price, :decimal

      add :qod_std_cost, :decimal

      add :qod_acct, :string

      add :qod_abnormal, :boolean

      add :qod_taxable, :boolean

      add :qod_serial, :string

      add :qod_desc, :string

      add :qod_um, :string

      add :qod_cc, :string

      add :qod__qad01, :string

      add :qod_lot, :string

      add :qod_um_conv, :decimal

      add :qod_fa_nbr, :string

      add :qod_disc_pct, :decimal

      add :qod_project, :string

      add :qod_cmtindx, :integer

      add :qod_custpart, :string

      add :qod__qad02, :integer

      add :qod_status, :string

      add :qod_xslspsn, :string

      add :qod_comm_pct, :decimal

      add :qod_dsc_acct, :string

      add :qod_dsc_cc, :string

      add :qod_list_pr, :decimal

      add :qod_user1, :string

      add :qod_user2, :string

      add :qod_qty_quot, :decimal

      add :qod_qty_rel, :decimal

      add :qod_rel_chg, :decimal

      add :qod_rsn_lost, :string

      add :qod_pst, :boolean

      add :qod_fst_rate, :decimal

      add :qod_fst_tax, :decimal

      add :qod_pst_tax, :decimal

      add :qod_tax_in, :boolean

      add :qod__qad03, :boolean

      add :qod_taxc, :string

      add :qod_fst_list, :boolean

      add :qod_site, :string

      add :qod_qob_std, :boolean

      add :qod_qob_rev, :naive_datetime

      add :qod_prodline, :string

      add :qod__chr01, :string

      add :qod__chr02, :string

      add :qod__chr03, :string

      add :qod__chr04, :string

      add :qod__chr05, :string

      add :qod__chr06, :string

      add :qod__chr07, :string

      add :qod__chr08, :string

      add :qod__chr09, :string

      add :qod__chr10, :string

      add :qod__dte01, :naive_datetime

      add :qod__dte02, :naive_datetime

      add :qod__dec01, :decimal

      add :qod__dec02, :decimal

      add :qod__log01, :boolean

      add :qod_tax_max, :decimal

      add :qod_fr_rate, :decimal

      add :qod_slspsn, :string

      add :qod_fix_pr, :boolean

      add :qod_fr_wt, :decimal

      add :qod_fr_wt_um, :string

      add :qod_fr_class, :string

      add :qod_fr_chg, :decimal

      add :qod_tax_usage, :string

      add :qod_tax_env, :string

      add :qod_fr_list, :string

      add :qod_crt_int, :decimal

      add :qod_pricing_dt, :naive_datetime

      add :qod_bonus, :boolean

      add :qod_cfg_type, :string

      add :qod_div, :string

      add :qod_pl_priority, :integer

      add :qod_prig1, :string

      add :qod_prig2, :string

      add :qod_sub, :string

      add :qod_dsc_sub, :string

      add :qod_dsc_project, :string

      add :qod_manual_fr_list, :boolean

      add :qod_domain, :string

      add :oid_qod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PID_DET") do
      add :pid_list_id, :string

      add :pid_amt, :decimal

      add :pid_qty, :decimal

      add :pid_fr_terms, :string

      add :pid_cr_terms, :string

      add :pid_fr_list, :string

      add :pid_user1, :string

      add :pid_user2, :string

      add :pid__qadc01, :string

      add :pid__qadd01, :decimal

      add :pid_domain, :string

      add :oid_pid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSUD_DET") do
      add :rsud_index, :integer

      add :rsud_group, :string

      add :rsud_sequence, :integer

      add :rsud_notify_nxt, :boolean

      add :rsud_svrty_lvl, :integer

      add :rsud_canreroute, :boolean

      add :rsud_approved, :boolean

      add :rsud_approverid, :string

      add :rsud_appr_date, :naive_datetime

      add :rsud_cmmtindx, :integer

      add :rsud_user1, :string

      add :rsud_user2, :string

      add :rsud_reroute_date, :naive_datetime

      add :rsud__qadc01, :string

      add :rsud_domain, :string

      add :oid_rsud_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQM_DET") do
      add :rqm_reference, :string

      add :rqm_cat, :string

      add :rqm_value, :string

      add :rqm_type, :integer

      add :rqm_nbr, :string

      add :rqm_line, :integer

      add :rqm_rlse_id, :string

      add :rqm_date, :naive_datetime

      add :rqm_time, :string

      add :rqm_interval, :string

      add :rqm_user1, :string

      add :rqm_user2, :string

      add :rqm__qadc01, :string

      add :rqm_domain, :string

      add :oid_rqm_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RPS_MSTR") do
      add :rps_part, :string

      add :rps_due_date, :naive_datetime

      add :rps_rel_date, :naive_datetime

      add :rps_qty_req, :decimal

      add :rps_qty_comp, :decimal

      add :rps_record, :integer

      add :rps_site, :string

      add :rps_line, :string

      add :rps_user1, :string

      add :rps_user2, :string

      add :rps_bom_code, :string

      add :rps_routing, :string

      add :rps__qadc01, :string

      add :rps_domain, :string

      add :oid_rps_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RDF_MSTR") do
      add :rdf_srtn_site, :string

      add :rdf_spare_loc, :string

      add :rdf_spare_site, :string

      add :rdf_rtn_loc, :string

      add :rdf_rtn_site, :string

      add :rdf_prod_line, :string

      add :rdf_group, :string

      add :rdf_desc, :string

      add :rdf_part, :string

      add :rdf_rts_loc, :string

      add :rdf_rts_site, :string

      add :rdf_srtn_loc, :string

      add :rdf_user1, :string

      add :rdf_user2, :string

      add :rdf_scrap_site, :string

      add :rdf_scrap_loc, :string

      add :rdf_area, :string

      add :rdf_addr, :string

      add :rdf_ca_type, :string

      add :rdf_es_nbr, :string

      add :rdf_notify, :boolean

      add :rdf_fax, :string

      add :rdf_svc_group, :string

      add :rdf_email, :string

      add :rdf_transit_loc, :string

      add :rdf_transit_site, :string

      add :rdf_ship_time, :decimal

      add :rdf_ca_int_type, :string

      add :rdf_repair_days, :decimal

      add :rdf_bom_code, :string

      add :rdf_routing, :string

      add :rdf_rrts_loc, :string

      add :rdf_rrts_site, :string

      add :rdf_rep_site, :string

      add :rdf_rep_loc, :string

      add :rdf__chr01, :string

      add :rdf__chr02, :string

      add :rdf__chr03, :string

      add :rdf__chr04, :string

      add :rdf__chr05, :string

      add :rdf__dec01, :decimal

      add :rdf__dec02, :decimal

      add :rdf__dte01, :naive_datetime

      add :rdf__dte02, :naive_datetime

      add :rdf__log01, :boolean

      add :rdf__log02, :boolean

      add :rdf__qadc01, :string

      add :rdf__qadc02, :string

      add :rdf__qadc03, :string

      add :rdf__qadt01, :naive_datetime

      add :rdf__qade01, :decimal

      add :rdf__qade02, :decimal

      add :rdf__qadl01, :boolean

      add :rdf__qadl02, :boolean

      add :rdf_mod_date, :naive_datetime

      add :rdf_mod_userid, :string

      add :rdf_domain, :string

      add :oid_rdf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQR_MSTR") do
      add :rqr_role, :string

      add :rqr_userid, :string

      add :rqr__chr01, :string

      add :rqr__chr02, :string

      add :rqr__chr03, :string

      add :rqr__chr04, :string

      add :rqr__qadc01, :string

      add :rqr__qadc02, :string

      add :rqr__qadc03, :string

      add :rqr__qadc04, :string

      add :rqr_domain, :string

      add :oid_rqr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RHD_HIST") do
      add :rhd_nbr, :string

      add :rhd_part, :string

      add :rhd_line, :integer

      add :rhd_qty_ord, :decimal

      add :rhd_trans, :string

      add :rhd_qty_acp, :decimal

      add :rhd_user1, :string

      add :rhd_status, :string

      add :rhd_serial, :string

      add :rhd_price, :decimal

      add :rhd_user2, :string

      add :rhd__chr01, :string

      add :rhd_prodline, :string

      add :rhd__chr02, :string

      add :rhd__chr03, :string

      add :rhd__chr04, :string

      add :rhd__chr05, :string

      add :rhd__chr06, :string

      add :rhd__chr07, :string

      add :rhd__chr08, :string

      add :rhd__chr09, :string

      add :rhd__chr10, :string

      add :rhd__dte01, :naive_datetime

      add :rhd__dte02, :naive_datetime

      add :rhd__log01, :boolean

      add :rhd__dec02, :decimal

      add :rhd__dec01, :decimal

      add :rhd_rev, :string

      add :rhd_prefix, :string

      add :rhd_loc, :string

      add :rhd_site, :string

      add :rhd_rma_line, :integer

      add :rhd_rma_nbr, :string

      add :rhd_cpl_date, :naive_datetime

      add :rhd_exp_date, :naive_datetime

      add :rhd_ref, :integer

      add :rhd_cvr_pct, :decimal

      add :rhd_rma_rtrn, :boolean

      add :rhd_link, :integer

      add :rhd_type, :string

      add :rhd_fault_cd, :string

      add :rhd_cust, :string

      add :rhd_ship, :string

      add :rhd_histype, :string

      add :rhd_chg_type, :string

      add :rhd_sa_nbr, :string

      add :rhd_covered, :decimal

      add :rhd_sv_code, :string

      add :rhd_ins_date, :naive_datetime

      add :rhd_par_date, :naive_datetime

      add :rhd_par_part, :string

      add :rhd_process, :string

      add :rhd_par_ser, :string

      add :rhd_trnbr, :integer

      add :rhd_enduser, :string

      add :rhd_eng_area, :string

      add :rhd_eng_code, :string

      add :rhd_eu_area, :string

      add :rhd_file_type, :string

      add :rhd_desc, :string

      add :rhd_cmtindx, :integer

      add :rhd_restock, :decimal

      add :rhd_loaner, :boolean

      add :rhd_ser_lon, :string

      add :rhd_done, :boolean

      add :rhd_iss, :boolean

      add :rhd_edit_isb, :boolean

      add :rhd_um, :string

      add :rhd_um_conv, :decimal

      add :rhd_customs, :decimal

      add :rhd_qty_rel, :decimal

      add :rhd_end, :string

      add :rhd_qty_non, :decimal

      add :rhd_start, :string

      add :rhd_op_tran, :string

      add :rhd__qadc01, :string

      add :rhd__qadc02, :string

      add :rhd__qadc03, :string

      add :rhd__qadd01, :naive_datetime

      add :rhd__qadd02, :naive_datetime

      add :rhd__qadd03, :naive_datetime

      add :rhd__qadde01, :decimal

      add :rhd__qadde02, :decimal

      add :rhd__qadi01, :integer

      add :rhd__qadi02, :integer

      add :rhd__qadl01, :boolean

      add :rhd__qadl02, :boolean

      add :rhd__qadl03, :boolean

      add :rhd__qadi03, :integer

      add :rhd__qadde03, :decimal

      add :rhd__qadd04, :naive_datetime

      add :rhd__qadd05, :naive_datetime

      add :rhd_mod_userid, :string

      add :rhd_mod_date, :naive_datetime

      add :rhd_domain, :string

      add :oid_rhd_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QTBL_EXT") do
      add :qtbl_owner, :string

      add :qtbl_table, :string

      add :qtbl_reference, :string

      add :qtbl_key1, :string

      add :qtbl_key2, :string

      add :qtbl_key3, :string

      add :qtbl_key4, :string

      add :qtbl_key5, :string

      add :qtbl_key6, :string

      add :qtbl_qadc01, :string

      add :qtbl_qadc02, :string

      add :qtbl_qadc03, :string

      add :qtbl_qadc04, :string

      add :qtbl_qadc05, :string

      add :qtbl_qadd01, :decimal

      add :qtbl_qadd02, :decimal

      add :qtbl_qadd03, :decimal

      add :qtbl_qadd04, :decimal

      add :qtbl_qadd05, :decimal

      add :qtbl_qadl01, :boolean

      add :qtbl_qadl02, :boolean

      add :qtbl_qadt01, :naive_datetime

      add :qtbl_qadt02, :naive_datetime

      add :oid_qtbl_ext, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QOB_DET") do
      add :qob_nbr, :string

      add :qob_line, :integer

      add :qob_feature, :string

      add :qob_part, :string

      add :qob_iss_date, :naive_datetime

      add :qob_qty_req, :decimal

      add :qob_qty_all, :decimal

      add :qob_qty_pick, :decimal

      add :qob_qty_iss, :decimal

      add :qob_tot_std, :decimal

      add :qob_qty_chg, :decimal

      add :qob_bo_chg, :decimal

      add :qob_price, :decimal

      add :qob_loc, :string

      add :qob_serial, :string

      add :qob_cmtindx, :integer

      add :qob_user1, :string

      add :qob_user2, :string

      add :qob_site, :string

      add :qob_parent, :string

      add :qob__qadc01, :string

      add :qob_cfg_type, :string

      add :qob_domain, :string

      add :oid_qob_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PS_MSTR") do
      add :ps_par, :string

      add :ps_comp, :string

      add :ps_ref, :string

      add :ps_qty_per, :decimal

      add :ps_scrp_pct, :decimal

      add :ps_ps_code, :string

      add :ps_lt_off, :integer

      add :ps_start, :naive_datetime

      add :ps_end, :naive_datetime

      add :ps_rmks, :string

      add :ps_op, :integer

      add :ps_item_no, :integer

      add :ps_mandatory, :boolean

      add :ps_exclusive, :boolean

      add :ps_process, :string

      add :ps_qty_type, :string

      add :ps_user1, :string

      add :ps_user2, :string

      add :ps_fcst_pct, :decimal

      add :ps_default, :boolean

      add :ps_group, :string

      add :ps_critical, :boolean

      add :ps_qty_per_b, :decimal

      add :ps_comp_um, :string

      add :ps_um_conv, :decimal

      add :ps_assay, :decimal

      add :ps_comm_code, :string

      add :ps_non_bal, :boolean

      add :ps__qad01, :boolean

      add :ps_userid, :string

      add :ps_mod_date, :naive_datetime

      add :ps_batch_pct, :decimal

      add :ps_cmtindx, :integer

      add :ps_start_ecn, :string

      add :ps_end_ecn, :string

      add :ps_joint_type, :string

      add :ps_cop_qty, :decimal

      add :ps_cst_pct, :decimal

      add :ps_prod_pct, :decimal

      add :ps_qty_cons, :decimal

      add :ps_qty_exch, :decimal

      add :ps_qty_diag, :decimal

      add :ps__chr01, :string

      add :ps__chr02, :string

      add :ps__dte01, :naive_datetime

      add :ps__dte02, :naive_datetime

      add :ps__dec01, :decimal

      add :ps__dec02, :decimal

      add :ps__log01, :boolean

      add :ps__log02, :boolean

      add :ps__qadc01, :string

      add :ps__qadc02, :string

      add :ps__qadt01, :naive_datetime

      add :ps__qadt02, :naive_datetime

      add :ps__qadt03, :naive_datetime

      add :ps__qadd01, :decimal

      add :ps__qadd02, :decimal

      add :ps__qadl01, :boolean

      add :ps__qadl02, :boolean

      add :ps_domain, :string

      add :oid_ps_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_POUL_MSTR") do
      add :poul_pou_code, :string

      add :poul_site, :string

      add :poul_wkctr, :string

      add :poul_mch, :string

      add :poul_ref_key, :integer

      add :poul_cmtindx, :integer

      add :poul_mod_userid, :string

      add :poul_mod_date, :naive_datetime

      add :poul_user1, :string

      add :poul_user2, :string

      add :poul__qadc01, :string

      add :poul__qadc02, :string

      add :poul_domain, :string

      add :oid_poul_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LPM_MSTR") do
      add :lpm_product, :string

      add :lpm_desc, :string

      add :lpm_lic_req, :boolean

      add :lpm_mod_userid, :string

      add :lpm_mod_date, :naive_datetime

      add :lpm__qadc01, :string

      add :lpm__qadc02, :string

      add :lpm__qadd01, :decimal

      add :lpm__qadt01, :naive_datetime

      add :lpm_ver_list, :string

      add :oid_lpm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RO_DET") do
      add :ro_routing, :string

      add :ro_op, :integer

      add :ro_desc, :string

      add :ro_wkctr, :string

      add :ro_setup, :decimal

      add :ro_run, :decimal

      add :ro_move, :decimal

      add :ro_yield_pct, :decimal

      add :ro_tool, :string

      add :ro_vend, :string

      add :ro_sub_cost, :decimal

      add :ro_start, :naive_datetime

      add :ro_end, :naive_datetime

      add :ro_tran_qty, :integer

      add :ro_inv_value, :decimal

      add :ro_cmtindx, :integer

      add :ro_mch, :string

      add :ro_milestone, :boolean

      add :ro_batch, :decimal

      add :ro_user1, :string

      add :ro_user2, :string

      add :ro_std_op, :string

      add :ro_setup_men, :decimal

      add :ro_men_mch, :decimal

      add :ro_mch_op, :integer

      add :ro_lbr_ovhd, :decimal

      add :ro_queue, :decimal

      add :ro_wait, :decimal

      add :ro_sub_lead, :integer

      add :ro_cyc_unit, :decimal

      add :ro_cyc_rate, :decimal

      add :ro__chr01, :string

      add :ro__chr02, :string

      add :ro__chr03, :string

      add :ro__chr04, :string

      add :ro__chr05, :string

      add :ro__dte01, :naive_datetime

      add :ro__dte02, :naive_datetime

      add :ro__dec01, :decimal

      add :ro__dec02, :decimal

      add :ro__log01, :boolean

      add :ro_std_batch, :decimal

      add :ro_rollup, :boolean

      add :ro_rollup_id, :string

      add :ro_elm_lbr, :string

      add :ro_elm_bdn, :string

      add :ro_elm_sub, :string

      add :ro_start_ecn, :string

      add :ro_end_ecn, :string

      add :ro_po_nbr, :string

      add :ro_po_line, :integer

      add :ro_mv_nxt_op, :boolean

      add :ro_wipmtl_part, :string

      add :ro_auto_lbr, :boolean

      add :ro_bom_code, :string

      add :ro_cost, :decimal

      add :ro_fsm_type, :string

      add :ro_price, :decimal

      add :ro_mod_date, :naive_datetime

      add :ro_mod_userid, :string

      add :ro__qadc01, :string

      add :ro__qadc02, :string

      add :ro__qadc03, :string

      add :ro__qade01, :decimal

      add :ro__qade02, :decimal

      add :ro__qadt01, :naive_datetime

      add :ro__qadt02, :naive_datetime

      add :ro__qadl01, :boolean

      add :ro__qadl02, :boolean

      add :ro_fsc_code, :string

      add :ro_domain, :string

      add :oid_ro_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RCSX_REF") do
      add :rcsx_shipfrom, :string

      add :rcsx_shipto, :string

      add :rcsx_shipped_rlse_id, :string

      add :rcsx_shipped_cust_job, :string

      add :rcsx_shipped_cust_seq, :string

      add :rcsx_shipped_part, :string

      add :rcsx_shipped_date, :naive_datetime

      add :rcsx_shipped_time, :string

      add :rcsx_shipped_cust_ref, :string

      add :rcsx_shipped_dock, :string

      add :rcsx_shipped_line_feed, :string

      add :rcsx_picked, :boolean

      add :rcsx_shipped, :boolean

      add :rcsx_rlse_id, :string

      add :rcsx_cust_job, :string

      add :rcsx_cust_seq, :string

      add :rcsx_part, :string

      add :rcsx_date, :naive_datetime

      add :rcsx_time, :string

      add :rcsx_cust_ref, :string

      add :rcsx_dock, :string

      add :rcsx_line_feed, :string

      add :rcsx_mod_userid, :string

      add :rcsx_mod_date, :naive_datetime

      add :rcsx_mod_pgm, :string

      add :rcsx_user1, :string

      add :rcsx_user2, :string

      add :rcsx__qadc01, :string

      add :rcsx__qadc02, :string

      add :rcsx__qadd01, :decimal

      add :rcsx__qadd02, :decimal

      add :rcsx__qadi01, :integer

      add :rcsx__qadi02, :integer

      add :rcsx__qadl01, :boolean

      add :rcsx__qadl02, :boolean

      add :rcsx__qadt01, :naive_datetime

      add :rcsx__qadt02, :naive_datetime

      add :rcsx_domain, :string

      add :oid_rcsx_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QO_MSTR") do
      add :qo_nbr, :string

      add :qo_cust, :string

      add :qo_ship, :string

      add :qo_ord_date, :naive_datetime

      add :qo_req_date, :naive_datetime

      add :qo_due_date, :naive_datetime

      add :qo_rmks, :string

      add :qo_cr_terms, :string

      add :qo_fob, :string

      add :qo_po, :string

      add :qo_shipvia, :string

      add :qo_partial, :boolean

      add :qo_print_qo, :boolean

      add :qo_pr_list, :string

      add :qo_xslspsn, :string

      add :qo_source, :string

      add :qo_xcomm_pct, :decimal

      add :qo_cr_card, :string

      add :qo_print_pl, :boolean

      add :qo_cr_init, :string

      add :qo_stat, :string

      add :qo__qad01, :decimal

      add :qo__qad02, :decimal

      add :qo__qad03, :decimal

      add :qo_disc_pct, :decimal

      add :qo_tax_pct, :decimal

      add :qo_prepaid, :decimal

      add :qo_ar_acct, :string

      add :qo_ar_cc, :string

      add :qo_ship_date, :naive_datetime

      add :qo_taxable, :boolean

      add :qo_cmtindx, :integer

      add :qo__qad04, :integer

      add :qo_user1, :string

      add :qo_user2, :string

      add :qo_so_nbr, :string

      add :qo_confirm, :naive_datetime

      add :qo_exp_date, :naive_datetime

      add :qo_rel_date, :naive_datetime

      add :qo_release, :boolean

      add :qo_recur, :boolean

      add :qo_cycle, :string

      add :qo_rel_cnt, :integer

      add :qo_flw_date, :naive_datetime

      add :qo_curr, :string

      add :qo_ex_rate, :decimal

      add :qo_lang, :string

      add :qo__qad05, :decimal

      add :qo_pst, :boolean

      add :qo_fst_id, :string

      add :qo_pst_id, :string

      add :qo_trl1_amt, :decimal

      add :qo_trl1_cd, :string

      add :qo_trl2_amt, :decimal

      add :qo_trl2_cd, :string

      add :qo_trl3_amt, :decimal

      add :qo_trl3_cd, :string

      add :qo_weight, :decimal

      add :qo_weight_um, :string

      add :qo_size, :decimal

      add :qo_size_um, :string

      add :qo_cartons, :integer

      add :qo_bol, :string

      add :qo_site, :string

      add :qo_taxc, :string

      add :qo__chr01, :string

      add :qo__chr02, :string

      add :qo__chr03, :string

      add :qo__chr04, :string

      add :qo__chr05, :string

      add :qo__chr06, :string

      add :qo__chr07, :string

      add :qo__chr08, :string

      add :qo__chr09, :string

      add :qo__chr10, :string

      add :qo__dte01, :naive_datetime

      add :qo__dte02, :naive_datetime

      add :qo__dec01, :decimal

      add :qo__dec02, :decimal

      add :qo__log01, :boolean

      add :qo_project, :string

      add :qo_rev, :integer

      add :qo_pst_pct, :decimal

      add :qo_fr_list, :string

      add :qo_fr_terms, :string

      add :qo_comm_pct, :decimal

      add :qo_slspsn, :string

      add :qo_fix_rate, :boolean

      add :qo_ent_ex, :decimal

      add :qo_bill, :string

      add :qo_print_bl, :boolean

      add :qo_userid, :string

      add :qo_tax_date, :naive_datetime

      add :qo_inv_mthd, :string

      add :qo_channel, :string

      add :qo_bank, :string

      add :qo_fr_min_wt, :decimal

      add :qo_pr_list2, :string

      add :qo_tax_env, :string

      add :qo_tax_usage, :string

      add :qo_pricing_dt, :naive_datetime

      add :qo_priced_dt, :naive_datetime

      add :qo_ex_rate2, :decimal

      add :qo_ex_ratetype, :string

      add :qo_div, :string

      add :qo_exru_seq, :integer

      add :qo_ar_sub, :string

      add :qo_app_owner, :string

      add :qo_manual_fr_terms, :boolean

      add :qo_domain, :string

      add :oid_qo_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QAD_WKFL") do
      add :qad_key1, :string

      add :qad_key2, :string

      add :qad_key3, :string

      add :qad_key4, :string

      add :qad_key5, :string

      add :qad_key6, :string

      add :qad_charfld, :string

      add :qad_decfld, :decimal

      add :qad_datefld, :naive_datetime

      add :qad_user1, :string

      add :qad_user2, :string

      add :qad__qadc01, :string

      add :qad_logfld, :boolean

      add :qad_charfld1, :string

      add :qad_intfld, :integer

      add :qad_domain, :string

      add :oid_qad_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTP_DET") do
      add :ptp_part, :string

      add :ptp_site, :string

      add :ptp_batch, :decimal

      add :ptp_bom_code, :string

      add :ptp__qad01, :naive_datetime

      add :ptp_buyer, :string

      add :ptp_cum_lead, :integer

      add :ptp__qad02, :decimal

      add :ptp_ins_lead, :integer

      add :ptp_ins_rqd, :boolean

      add :ptp_iss_pol, :boolean

      add :ptp_mfg_lead, :decimal

      add :ptp_ms, :boolean

      add :ptp_ord_max, :decimal

      add :ptp_ord_min, :decimal

      add :ptp_ord_mult, :decimal

      add :ptp_ord_per, :integer

      add :ptp_ord_pol, :string

      add :ptp_ord_qty, :decimal

      add :ptp_phantom, :boolean

      add :ptp_plan_ord, :boolean

      add :ptp_pm_code, :string

      add :ptp_pur_lead, :integer

      add :ptp_rev, :string

      add :ptp_rop, :decimal

      add :ptp_routing, :string

      add :ptp_run, :decimal

      add :ptp_run_ll, :decimal

      add :ptp_setup, :decimal

      add :ptp_setup_ll, :decimal

      add :ptp_sfty_stk, :decimal

      add :ptp_sfty_tme, :decimal

      add :ptp_timefnce, :integer

      add :ptp_user1, :string

      add :ptp_user2, :string

      add :ptp_vend, :string

      add :ptp_yld_pct, :decimal

      add :ptp_assay, :decimal

      add :ptp_grade, :string

      add :ptp_ll_bom, :integer

      add :ptp_eco_pend, :boolean

      add :ptp_rollup, :boolean

      add :ptp_added, :naive_datetime

      add :ptp_draw, :string

      add :ptp_trantype, :string

      add :ptp__chr01, :string

      add :ptp__chr02, :string

      add :ptp__chr03, :string

      add :ptp__chr04, :string

      add :ptp__chr05, :string

      add :ptp__chr06, :string

      add :ptp__chr07, :string

      add :ptp__chr08, :string

      add :ptp__chr09, :string

      add :ptp__chr10, :string

      add :ptp__dte01, :naive_datetime

      add :ptp__dte02, :naive_datetime

      add :ptp__dec01, :decimal

      add :ptp__dec02, :decimal

      add :ptp__log01, :boolean

      add :ptp__log02, :boolean

      add :ptp_ll_drp, :integer

      add :ptp__qad05, :integer

      add :ptp_po_site, :string

      add :ptp__qad04, :integer

      add :ptp__qad03, :integer

      add :ptp_mod_date, :naive_datetime

      add :ptp_userid, :string

      add :ptp_network, :string

      add :ptp_rollup_id, :string

      add :ptp_mfg_pct, :decimal

      add :ptp_pur_pct, :decimal

      add :ptp_drp_pct, :decimal

      add :ptp_pou_code, :string

      add :ptp_wks_avg, :decimal

      add :ptp_wks_max, :decimal

      add :ptp_wks_min, :decimal

      add :ptp_pick_logic, :integer

      add :ptp_joint_type, :string

      add :ptp_btb_type, :string

      add :ptp_cfg_type, :string

      add :ptp_op_yield, :boolean

      add :ptp_run_seq1, :string

      add :ptp_run_seq2, :string

      add :ptp_atp_enforcement, :string

      add :ptp_atp_family, :boolean

      add :ptp_domain, :string

      add :oid_ptp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PRD_DET") do
      add :prd_dev, :string

      add :prd_desc, :string

      add :prd_st_80, :string

      add :prd_reset, :string

      add :prd_st_132, :string

      add :prd_st_bc, :string

      add :prd_end_bc, :string

      add :prd_neg_line, :string

      add :prd_length, :integer

      add :prd_blank, :integer

      add :prd_page, :string

      add :prd_type, :string

      add :prd_spooler, :boolean

      add :prd_path, :string

      add :prd_init, :string

      add :prd_init_pro, :string

      add :prd_rset_pro, :string

      add :prd_user1, :string

      add :prd_user2, :string

      add :prd_mapterm, :string

      add :prd_max_page, :integer

      add :prd_scroll_only, :boolean

      add :prd__qad01, :string

      add :prd_dest_type, :integer

      add :oid_prd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LCAP_HIST") do
      add :lcap_db, :string

      add :lcap_table, :string

      add :lcap_qualifier, :string

      add :lcap_period, :string

      add :lcap_count1, :decimal

      add :lcap_count2, :decimal

      add :lcap_count3, :decimal

      add :lcap_count4, :decimal

      add :lcap_hash, :string

      add :lcap_mod_userid, :string

      add :lcap_mod_date, :naive_datetime

      add :lcap__qadc01, :string

      add :lcap__qadc02, :string

      add :lcap__qadt01, :naive_datetime

      add :lcap__qadi01, :integer

      add :lcap__qadd01, :decimal

      add :lcap__qadd02, :decimal

      add :lcap__qadl01, :boolean

      add :oid_lcap_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RMC_CTRL") do
      add :rmc_loc_ov, :string

      add :rmc_hcmmts, :boolean

      add :rmc_lcmmts, :boolean

      add :rmc__qadi03, :integer

      add :rmc_user1, :string

      add :rmc_user2, :string

      add :rmc__qadi04, :integer

      add :rmc_route, :string

      add :rmc_dflt_rma, :string

      add :rmc__qadc05, :string

      add :rmc__qadc06, :string

      add :rmc_site_is, :string

      add :rmc_loc_is, :string

      add :rmc_site_os, :string

      add :rmc_loc_os, :string

      add :rmc_det_all, :boolean

      add :rmc_all_days, :integer

      add :rmc_po_pre, :string

      add :rmc_po_nbr, :integer

      add :rmc_site_ov, :string

      add :rmc_site_iv, :string

      add :rmc_loc_iv, :string

      add :rmc_so_pre, :string

      add :rmc_so_nbr, :integer

      add :rmc_consume, :boolean

      add :rmc__chr01, :string

      add :rmc__chr02, :string

      add :rmc__chr03, :string

      add :rmc__chr04, :string

      add :rmc__chr05, :string

      add :rmc__chr06, :string

      add :rmc__chr07, :string

      add :rmc__chr08, :string

      add :rmc__chr09, :string

      add :rmc__chr10, :string

      add :rmc__dec01, :decimal

      add :rmc__dec02, :decimal

      add :rmc__dec03, :decimal

      add :rmc__dte01, :naive_datetime

      add :rmc__dte02, :naive_datetime

      add :rmc__dte03, :naive_datetime

      add :rmc__dte04, :naive_datetime

      add :rmc__log01, :boolean

      add :rmc__log02, :boolean

      add :rmc__log03, :boolean

      add :rmc__log04, :boolean

      add :rmc__log05, :boolean

      add :rmc_edit_isb, :boolean

      add :rmc_hist, :boolean

      add :rmc__qadc04, :string

      add :rmc_prt_rtn, :boolean

      add :rmc_node, :string

      add :rmc_rtv_trn, :string

      add :rmc_pl, :boolean

      add :rmc_rtn_taxc, :string

      add :rmc_history, :boolean

      add :rmc_print_trail, :boolean

      add :rmc_disp_trail, :boolean

      add :rmc_issues, :boolean

      add :rmc_turn_days, :integer

      add :rmc_rma_accounts, :boolean

      add :rmc_site_lb, :string

      add :rmc_repair_cd, :string

      add :rmc__qadc01, :string

      add :rmc__qadc02, :string

      add :rmc__qadc03, :string

      add :rmc__qadl01, :boolean

      add :rmc__qadl02, :boolean

      add :rmc__qadl03, :boolean

      add :rmc__qadi01, :integer

      add :rmc__qadi02, :integer

      add :rmc__qadd01, :decimal

      add :rmc__qadd02, :decimal

      add :rmc_mod_userid, :string

      add :rmc_mod_date, :naive_datetime

      add :rmc_swsa, :boolean

      add :rmc_so_ratetype, :string

      add :rmc_po_ratetype, :string

      add :rmc_domain, :string

      add :oid_rmc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RCC_MSTR") do
      add :rcc_addr, :string

      add :rcc_inc_in_rss, :boolean

      add :rcc_packing_order, :boolean

      add :rcc_shipper_print, :boolean

      add :rcc_invoice_print, :boolean

      add :rcc_asn_edi, :boolean

      add :rcc_invoice_edi, :boolean

      add :rcc_firm_seq_days, :integer

      add :rcc_seq_per_container, :integer

      add :rcc_merge_seq, :boolean

      add :rcc_check_seq_tol, :boolean

      add :rcc_max_tol, :integer

      add :rcc_mod_userid, :string

      add :rcc_mod_date, :naive_datetime

      add :rcc_mod_pgm, :string

      add :rcc_user1, :string

      add :rcc_user2, :string

      add :rcc__qadc01, :string

      add :rcc__qadc02, :string

      add :rcc__qadd01, :decimal

      add :rcc__qadd02, :decimal

      add :rcc__qadi01, :integer

      add :rcc__qadi02, :integer

      add :rcc__qadl01, :boolean

      add :rcc__qadl02, :boolean

      add :rcc__qadl03, :boolean

      add :rcc__qadl04, :boolean

      add :rcc__qadt01, :naive_datetime

      add :rcc__qadt02, :naive_datetime

      add :rcc_domain, :string

      add :oid_rcc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QODR_DET") do
      add :qodr_div, :string

      add :qodr_group, :string

      add :qodr_line, :integer

      add :qodr_nbr, :string

      add :qodr_pricing, :integer

      add :qodr_seq, :integer

      add :qodr_type, :integer

      add :qodr_user1, :string

      add :qodr_user2, :string

      add :qodr__qadc01, :string

      add :qodr__qadc02, :string

      add :qodr__qadc03, :string

      add :qodr__qadd01, :decimal

      add :qodr__qadd02, :decimal

      add :qodr__qadi01, :integer

      add :qodr__qadi02, :integer

      add :qodr__qadl01, :boolean

      add :qodr__qadl02, :boolean

      add :qodr__qadt01, :naive_datetime

      add :qodr__qadt02, :naive_datetime

      add :qodr_domain, :string

      add :oid_qodr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PVOD_DET") do
      add :pvod_id, :integer

      add :pvod_id_line, :integer

      add :pvod_order_type, :string

      add :pvod_order, :string

      add :pvod_order_line, :integer

      add :pvod__qadc04, :string

      add :pvod_accrual_acct, :string

      add :pvod_accrual_sub, :string

      add :pvod_accrual_cc, :string

      add :pvod_project, :string

      add :pvod_accrued_amt, :decimal

      add :pvod_vouchered_amt, :decimal

      add :pvod_cost_update, :boolean

      add :pvod_internal_ref, :string

      add :pvod_internal_ref_type, :string

      add :pvod_part, :string

      add :pvod_shipto, :string

      add :pvod_shipfrom, :string

      add :pvod_channel, :string

      add :pvod_mod_userid, :string

      add :pvod_mod_date, :naive_datetime

      add :pvod_user1, :string

      add :pvod_user2, :string

      add :pvod__qadc01, :string

      add :pvod__qadc02, :string

      add :pvod__qadc03, :string

      add :pvod_taxable, :boolean

      add :pvod_taxc, :string

      add :pvod_tax_env, :string

      add :pvod_tax_in, :boolean

      add :pvod_tax_usage, :string

      add :pvod__qadd01, :decimal

      add :pvod_domain, :string

      add :oid_pvod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RCS_MSTR") do
      add :rcs_shipfrom, :string

      add :rcs_shipto, :string

      add :rcs_rlse_id, :string

      add :rcs_cr_date, :naive_datetime

      add :rcs_cr_time, :string

      add :rcs_cumulative, :boolean

      add :rcs_date_type, :boolean

      add :rcs_active_start, :naive_datetime

      add :rcs_active_end, :naive_datetime

      add :rcs_active, :boolean

      add :rcs_active_date, :naive_datetime

      add :rcs_packing_order, :boolean

      add :rcs_seq_per_container, :integer

      add :rcs_check_seq_tol, :boolean

      add :rcs_max_tol, :integer

      add :rcs_mod_userid, :string

      add :rcs_mod_date, :naive_datetime

      add :rcs_mod_pgm, :string

      add :rcs_user1, :string

      add :rcs_user2, :string

      add :rcs__qadc01, :string

      add :rcs__qadc02, :string

      add :rcs__qadd01, :decimal

      add :rcs__qadd02, :decimal

      add :rcs__qadi01, :integer

      add :rcs__qadi02, :integer

      add :rcs__qadl01, :boolean

      add :rcs__qadl02, :boolean

      add :rcs__qadt01, :naive_datetime

      add :rcs__qadt02, :naive_datetime

      add :rcs_domain, :string

      add :oid_rcs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QCC_CTRL") do
      add :qcc_site, :string

      add :qcc_inspect, :string

      add :qcc__qadi01, :integer

      add :qcc_wcmmts, :boolean

      add :qcc_user1, :string

      add :qcc_user2, :string

      add :qcc_rcmmts, :boolean

      add :qcc_nbr, :integer

      add :qcc_lot, :integer

      add :qcc_auto_nbr, :boolean

      add :qcc__qadc01, :string

      add :qcc_domain, :string

      add :oid_qcc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTQA_DET") do
      add :ptqa_part, :string

      add :ptqa_element, :string

      add :ptqa_qty, :decimal

      add :ptqa_um, :string

      add :ptqa_interval, :decimal

      add :ptqa_conf_pct, :decimal

      add :ptqa_cmtindx, :integer

      add :ptqa_user1, :string

      add :ptqa_user2, :string

      add :ptqa__chr01, :string

      add :ptqa__chr02, :string

      add :ptqa__chr03, :string

      add :ptqa__chr04, :string

      add :ptqa__chr05, :string

      add :ptqa__dec01, :decimal

      add :ptqa__dec02, :decimal

      add :ptqa__log01, :boolean

      add :ptqa__log02, :boolean

      add :ptqa_domain, :string

      add :oid_ptqa_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PRH_HIST") do
      add :prh_part, :string

      add :prh_nbr, :string

      add :prh_line, :integer

      add :prh_rcvd, :decimal

      add :prh_pur_cost, :decimal

      add :prh_pur_std, :decimal

      add :prh_rcp_date, :naive_datetime

      add :prh_vend, :string

      add :prh_receiver, :string

      add :prh_lot, :string

      add :prh_ps_nbr, :string

      add :prh_ps_qty, :decimal

      add :prh_bo_qty, :decimal

      add :prh__qadc02, :string

      add :prh_xinvoice, :string

      add :prh_xinv_dt, :naive_datetime

      add :prh__qadd01, :decimal

      add :prh_xinv_cst, :decimal

      add :prh__qadc03, :string

      add :prh__qadc04, :string

      add :prh__qadc05, :string

      add :prh_rev, :string

      add :prh_type, :string

      add :prh_print, :boolean

      add :prh_lbr_std, :decimal

      add :prh_mtl_std, :decimal

      add :prh_bdn_std, :decimal

      add :prh_sub_std, :decimal

      add :prh_buyer, :string

      add :prh__qad03, :decimal

      add :prh__qad02, :string

      add :prh_shipto, :string

      add :prh_cst_up, :boolean

      add :prh_um, :string

      add :prh_um_conv, :decimal

      add :prh_curr, :string

      add :prh_ex_rate, :decimal

      add :prh_curr_amt, :decimal

      add :prh_pay_um, :string

      add :prh_pum_conv, :decimal

      add :prh_user1, :string

      add :prh_user2, :string

      add :prh_ovh_std, :decimal

      add :prh_site, :string

      add :prh_ship, :string

      add :prh_qty_ord, :decimal

      add :prh_per_date, :naive_datetime

      add :prh_rcp_type, :string

      add :prh_reason, :string

      add :prh_request, :string

      add :prh_approve, :string

      add :prh__qad04, :integer

      add :prh_tax_at, :string

      add :prh__chr01, :string

      add :prh__chr02, :string

      add :prh__chr03, :string

      add :prh__chr04, :string

      add :prh__chr05, :string

      add :prh__chr06, :string

      add :prh__chr07, :string

      add :prh__chr08, :string

      add :prh__chr09, :string

      add :prh__chr10, :string

      add :prh__dte01, :naive_datetime

      add :prh__dte02, :naive_datetime

      add :prh__dte03, :naive_datetime

      add :prh__dte04, :naive_datetime

      add :prh__dte05, :naive_datetime

      add :prh__dec01, :decimal

      add :prh__dec02, :decimal

      add :prh__dec03, :decimal

      add :prh__dec04, :decimal

      add :prh__dec05, :decimal

      add :prh__log01, :boolean

      add :prh__log02, :boolean

      add :prh_rma_type, :string

      add :prh_fix_rate, :boolean

      add :prh_po_site, :string

      add :prh_cum_req, :decimal

      add :prh_cum_rcvd, :decimal

      add :prh_fsm_type, :string

      add :prh_bank, :string

      add :prh_curr_rlse_id, :string

      add :prh_element, :string

      add :prh_fix_pr, :boolean

      add :prh_tax_usage, :string

      add :prh_tax_env, :string

      add :prh_crt_int, :decimal

      add :prh_tax_in, :boolean

      add :prh_taxc, :string

      add :prh_vend_lot, :string

      add :prh_ship_date, :naive_datetime

      add :prh__qadi01, :integer

      add :prh_ex_rate2, :decimal

      add :prh_ex_ratetype, :string

      add :prh_exru_seq, :integer

      add :prh__qadc06, :string

      add :prh__qadc01, :string

      add :prh_domain, :string

      add :oid_prh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PL_MSTR") do
      add :pl_prod_line, :string

      add :pl_desc, :string

      add :pl_sls_acct, :string

      add :pl_inv_acct, :string

      add :pl_wip_acct, :string

      add :pl_cog_acct, :string

      add :pl_pur_acct, :string

      add :pl_scrp_acct, :string

      add :pl_dscr_acct, :string

      add :pl_sls_cc, :string

      add :pl_inv_cc, :string

      add :pl_wip_cc, :string

      add :pl_cog_cc, :string

      add :pl_pur_cc, :string

      add :pl_scrp_cc, :string

      add :pl_dscr_cc, :string

      add :pl_ppv_acct, :string

      add :pl_ppv_cc, :string

      add :pl_rcpt_acct, :string

      add :pl_rcpt_cc, :string

      add :pl_dsc_acct, :string

      add :pl_dsc_cc, :string

      add :pl_wvar_acct, :string

      add :pl_wvar_cc, :string

      add :pl_taxc, :string

      add :pl_taxable, :boolean

      add :pl_user1, :string

      add :pl_user2, :string

      add :pl_pst, :boolean

      add :pl_esls_acct, :string

      add :pl_esls_cc, :string

      add :pl__chr01, :string

      add :pl__chr02, :string

      add :pl__chr03, :string

      add :pl__chr04, :string

      add :pl__chr05, :string

      add :pl__dte01, :naive_datetime

      add :pl__dte02, :naive_datetime

      add :pl__dec01, :decimal

      add :pl__dec02, :decimal

      add :pl__log01, :boolean

      add :pl_group, :string

      add :pl_division, :string

      add :pl_cchg_acct, :string

      add :pl_cchg_cc, :string

      add :pl_cmtl_acct, :string

      add :pl_cmtl_cc, :string

      add :pl_clbr_acct, :string

      add :pl_clbr_cc, :string

      add :pl_cbdn_acct, :string

      add :pl_cbdn_cc, :string

      add :pl_covh_acct, :string

      add :pl_covh_cc, :string

      add :pl_csub_acct, :string

      add :pl_csub_cc, :string

      add :pl_apvr_acct, :string

      add :pl_apvr_cc, :string

      add :pl_apvu_acct, :string

      add :pl_apvu_cc, :string

      add :pl_ovh_acct, :string

      add :pl_ovh_cc, :string

      add :pl_mvar_acct, :string

      add :pl_mvar_cc, :string

      add :pl_mvrr_acct, :string

      add :pl_mvrr_cc, :string

      add :pl_svar_acct, :string

      add :pl_svar_cc, :string

      add :pl_svrr_acct, :string

      add :pl_svrr_cc, :string

      add :pl_cop_acct, :string

      add :pl_cop_cc, :string

      add :pl_flr_acct, :string

      add :pl_flr_cc, :string

      add :pl_mod_date, :naive_datetime

      add :pl_userid, :string

      add :pl__qadc08, :string

      add :pl__qadc09, :string

      add :pl__qadc14, :string

      add :pl__qadc15, :string

      add :pl_rmar_acct, :string

      add :pl_rmar_cc, :string

      add :pl__qadc12, :string

      add :pl__qadc13, :string

      add :pl__qadc06, :string

      add :pl__qadc07, :string

      add :pl_fiscal_class, :string

      add :pl_xvar_acct, :string

      add :pl_xvar_cc, :string

      add :pl_fslbr_acct, :string

      add :pl_fsbdn_acct, :string

      add :pl_fsexp_acct, :string

      add :pl_fsexd_acct, :string

      add :pl__qadc10, :string

      add :pl_fslbr_cc, :string

      add :pl_fsbdn_cc, :string

      add :pl__qadc11, :string

      add :pl_fsexp_cc, :string

      add :pl_fsexd_cc, :string

      add :pl_fsrc_inv_cc, :string

      add :pl_fscm_inv_acct, :string

      add :pl_fscm_inv_cc, :string

      add :pl_fsrc_inv_acct, :string

      add :pl__qadc01, :string

      add :pl__qadc02, :string

      add :pl__qadc03, :string

      add :pl__qadc04, :string

      add :pl__qadc05, :string

      add :pl__qadl01, :boolean

      add :pl__qadt01, :naive_datetime

      add :pl__qadd01, :decimal

      add :pl_apvr_sub, :string

      add :pl_apvu_sub, :string

      add :pl_cbdn_sub, :string

      add :pl_cchg_sub, :string

      add :pl_clbr_sub, :string

      add :pl_cmtl_sub, :string

      add :pl_cog_sub, :string

      add :pl_cop_sub, :string

      add :pl_covh_sub, :string

      add :pl_csub_sub, :string

      add :pl_dscr_sub, :string

      add :pl_dsc_sub, :string

      add :pl_flr_sub, :string

      add :pl_fsbdn_sub, :string

      add :pl_fscm_inv_sub, :string

      add :pl_fsexd_sub, :string

      add :pl_fsexp_sub, :string

      add :pl_fslbr_sub, :string

      add :pl_fsrc_inv_sub, :string

      add :pl_inv_sub, :string

      add :pl_mvar_sub, :string

      add :pl_mvrr_sub, :string

      add :pl_ovh_sub, :string

      add :pl_ppv_sub, :string

      add :pl_pur_sub, :string

      add :pl_rcpt_sub, :string

      add :pl_rmar_sub, :string

      add :pl_scrp_sub, :string

      add :pl_sls_sub, :string

      add :pl_svar_sub, :string

      add :pl_svrr_sub, :string

      add :pl_wip_sub, :string

      add :pl_wvar_sub, :string

      add :pl_xvar_sub, :string

      add :pl_xfer_acct, :string

      add :pl_xfer_sub, :string

      add :pl_xfer_cc, :string

      add :pl_fsdef_acct, :string

      add :pl_fsdef_sub, :string

      add :pl_fsdef_cc, :string

      add :pl_fsaccr_acct, :string

      add :pl_fsaccr_sub, :string

      add :pl_fsaccr_cc, :string

      add :pl_domain, :string

      add :oid_pl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJSX_DET") do
      add :pjsx_nbr, :string

      add :pjsx_line, :integer

      add :pjsx_prj_nbr, :string

      add :pjsx_pjs_line, :integer

      add :pjsx_date, :naive_datetime

      add :pjsx_def_ws, :string

      add :pjsx_end_date, :naive_datetime

      add :pjsx_int_stat, :string

      add :pjsx_loc, :string

      add :pjsx_qty_demand, :decimal

      add :pjsx_qty_ord, :decimal

      add :pjsx_qty_in_prog, :decimal

      add :pjsx_qty_iss, :decimal

      add :pjsx_site, :string

      add :pjsx_so_nbr, :string

      add :pjsx_sod_line, :integer

      add :pjsx_start_date, :naive_datetime

      add :pjsx_type, :string

      add :pjsx_mod_date, :naive_datetime

      add :pjsx_mod_userid, :string

      add :pjsx_user1, :string

      add :pjsx_user2, :string

      add :pjsx__dec01, :decimal

      add :pjsx__log01, :boolean

      add :pjsx__dte01, :naive_datetime

      add :pjsx__qadc01, :string

      add :pjsx__qadc02, :string

      add :pjsx__qadd01, :decimal

      add :pjsx__qadi01, :integer

      add :pjsx__qadl01, :boolean

      add :pjsx__qadt01, :naive_datetime

      add :pjsx_domain, :string

      add :oid_pjsx_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QOC_CTRL") do
      add :qoc_qo, :integer

      add :qoc_ln_fmt, :boolean

      add :qoc_print, :boolean

      add :qoc_company, :string

      add :qoc_fob, :string

      add :qoc_hcmmts, :boolean

      add :qoc_lcmmts, :boolean

      add :qoc_days, :integer

      add :qoc__qad01, :integer

      add :qoc_user1, :string

      add :qoc_user2, :string

      add :qoc__qadi01, :integer

      add :qoc_fr_by_site, :boolean

      add :qoc_qo_pre, :string

      add :qoc_pl_req, :boolean

      add :qoc_pc_line, :boolean

      add :qoc_pt_req, :boolean

      add :qoc_ex_ratetype, :string

      add :qoc_domain, :string

      add :oid_qoc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PT_MSTR") do
      add :pt_part, :string

      add :pt_desc1, :string

      add :pt_desc2, :string

      add :pt_um, :string

      add :pt__qad13, :string

      add :pt__qad12, :decimal

      add :pt_draw, :string

      add :pt_prod_line, :string

      add :pt_group, :string

      add :pt_part_type, :string

      add :pt_status, :string

      add :pt_abc, :string

      add :pt_iss_pol, :boolean

      add :pt_phantom, :boolean

      add :pt_loc, :string

      add :pt__qad01, :decimal

      add :pt__qad02, :decimal

      add :pt_abc_amt, :decimal

      add :pt__qad03, :decimal

      add :pt__qad04, :decimal

      add :pt_avg_int, :integer

      add :pt__qad05, :naive_datetime

      add :pt_cyc_int, :integer

      add :pt__qad06, :naive_datetime

      add :pt__qad07, :naive_datetime

      add :pt__qad08, :naive_datetime

      add :pt_ms, :boolean

      add :pt_plan_ord, :boolean

      add :pt_mrp, :boolean

      add :pt_ord_pol, :string

      add :pt_ord_qty, :decimal

      add :pt_ord_per, :integer

      add :pt_sfty_stk, :decimal

      add :pt_sfty_time, :decimal

      add :pt_rop, :decimal

      add :pt_buyer, :string

      add :pt_vend, :string

      add :pt__qad09, :decimal

      add :pt_pm_code, :string

      add :pt_mfg_lead, :decimal

      add :pt_pur_lead, :integer

      add :pt_insp_rqd, :boolean

      add :pt_insp_lead, :integer

      add :pt_cum_lead, :integer

      add :pt_ord_min, :decimal

      add :pt_ord_max, :decimal

      add :pt_ord_mult, :decimal

      add :pt_yield_pct, :decimal

      add :pt__qad16, :decimal

      add :pt_setup, :decimal

      add :pt_setup_ll, :decimal

      add :pt_run_ll, :decimal

      add :pt_run, :decimal

      add :pt_price, :decimal

      add :pt_xmtl_tl, :decimal

      add :pt_xlbr_tl, :decimal

      add :pt_xbdn_tl, :decimal

      add :pt_xsub_tl, :decimal

      add :pt_xmtl_ll, :decimal

      add :pt_xlbr_ll, :decimal

      add :pt_xbdn_ll, :decimal

      add :pt_xsub_ll, :decimal

      add :pt_xtot_cur, :decimal

      add :pt_cur_date, :naive_datetime

      add :pt_xmtl_stdtl, :decimal

      add :pt_xlbr_stdtl, :decimal

      add :pt_xbdn_stdtl, :decimal

      add :pt_xsub_stdtl, :decimal

      add :pt_xtot_std, :decimal

      add :pt_std_date, :naive_datetime

      add :pt_ll_code, :integer

      add :pt_abc_qty, :decimal

      add :pt__qad10, :decimal

      add :pt__qad11, :decimal

      add :pt_routing, :string

      add :pt_lot_ser, :string

      add :pt_timefence, :integer

      add :pt_xmtl_stdll, :decimal

      add :pt_xlbr_stdll, :decimal

      add :pt_xbdn_stdll, :decimal

      add :pt_xsub_stdll, :decimal

      add :pt_rev, :string

      add :pt_last_eco, :naive_datetime

      add :pt__qad15, :boolean

      add :pt__qad17, :boolean

      add :pt_qc_lead, :integer

      add :pt_auto_lot, :boolean

      add :pt_assay, :decimal

      add :pt_batch, :decimal

      add :pt__qad14, :naive_datetime

      add :pt_user3, :string

      add :pt_user1, :string

      add :pt_user2, :string

      add :pt_net_wt, :decimal

      add :pt_net_wt_um, :string

      add :pt_size, :decimal

      add :pt_size_um, :string

      add :pt_taxable, :boolean

      add :pt_taxc, :string

      add :pt_rollup, :boolean

      add :pt_xovh_ll, :decimal

      add :pt_xovh_tl, :decimal

      add :pt_xovh_stdll, :decimal

      add :pt_xovh_stdtl, :decimal

      add :pt_site, :string

      add :pt_shelflife, :integer

      add :pt_critical, :boolean

      add :pt_sngl_lot, :boolean

      add :pt_upc, :string

      add :pt_hazard, :string

      add :pt_added, :naive_datetime

      add :pt__chr01, :string

      add :pt__chr02, :string

      add :pt__chr03, :string

      add :pt__chr04, :string

      add :pt__chr05, :string

      add :pt__chr06, :string

      add :pt__chr07, :string

      add :pt__chr08, :string

      add :pt__chr09, :string

      add :pt__chr10, :string

      add :pt__dte01, :naive_datetime

      add :pt__dte02, :naive_datetime

      add :pt__dec01, :decimal

      add :pt__dec02, :decimal

      add :pt__log01, :boolean

      add :pt__log02, :boolean

      add :pt__qad18, :decimal

      add :pt__qad21, :decimal

      add :pt__qad19, :decimal

      add :pt__qad20, :decimal

      add :pt_length, :decimal

      add :pt_height, :decimal

      add :pt_width, :decimal

      add :pt_dim_um, :string

      add :pt_pkg_code, :string

      add :pt_network, :string

      add :pt_ll_drp, :integer

      add :pt_fr_class, :string

      add :pt_spec_hdlg, :string

      add :pt_bom_code, :string

      add :pt_loc_type, :string

      add :pt_transtype, :string

      add :pt_cover, :string

      add :pt_unit_isb, :boolean

      add :pt_article, :string

      add :pt_po_site, :string

      add :pt_ship_wt, :decimal

      add :pt_ship_wt_um, :string

      add :pt_formula, :boolean

      add :pt_dea, :boolean

      add :pt__qad26, :boolean

      add :pt__qad22, :boolean

      add :pt__qad25, :integer

      add :pt__qad24, :integer

      add :pt__qad23, :integer

      add :pt_comm_code, :string

      add :pt_inst_call, :boolean

      add :pt_sys_type, :string

      add :pt_tariff, :string

      add :pt_origin, :string

      add :pt_sttr, :decimal

      add :pt_mfg_mtbf, :decimal

      add :pt_mfg_mttr, :decimal

      add :pt_fru, :boolean

      add :pt_ven_warr, :boolean

      add :pt_svc_group, :string

      add :pt_svc_type, :string

      add :pt_mtbf, :decimal

      add :pt_mttr, :decimal

      add :pt_isb, :boolean

      add :pt_pvm_days, :integer

      add :pt_warr_cd, :string

      add :pt_mod_date, :naive_datetime

      add :pt_userid, :string

      add :pt_obs_date, :naive_datetime

      add :pt_pvm_bom, :string

      add :pt_pvm_route, :string

      add :pt_pvm_um, :string

      add :pt_rp_bom, :string

      add :pt_rp_route, :string

      add :pt_rp_vendor, :string

      add :pt_rctpo_status, :string

      add :pt_rollup_id, :string

      add :pt_spec_grav, :decimal

      add :pt_joint_type, :string

      add :pt_mfg_pct, :decimal

      add :pt_pur_pct, :decimal

      add :pt_drp_pct, :decimal

      add :pt_pou_code, :string

      add :pt_wks_avg, :decimal

      add :pt_wks_max, :decimal

      add :pt_wks_min, :decimal

      add :pt_pick_logic, :integer

      add :pt_fiscal_class, :string

      add :pt_dsgn_grp, :string

      add :pt_drwg_loc, :string

      add :pt_ecn_rev, :string

      add :pt_drwg_size, :string

      add :pt_model, :string

      add :pt_repairable, :boolean

      add :pt_rctwo_status, :string

      add :pt_lot_grp, :string

      add :pt_rctpo_active, :boolean

      add :pt_rctwo_active, :boolean

      add :pt_break_cat, :string

      add :pt_fsc_code, :string

      add :pt_trace_active, :boolean

      add :pt_trace_detail, :boolean

      add :pt_pm_mrp, :boolean

      add :pt_ins_call_type, :string

      add :pt_ins_bom, :string

      add :pt_ins_route, :string

      add :pt_promo, :string

      add :pt_meter_interval, :decimal

      add :pt_meter_um, :string

      add :pt_wh, :boolean

      add :pt_btb_type, :string

      add :pt_cfg_type, :string

      add :pt_app_owner, :string

      add :pt_op_yield, :boolean

      add :pt_run_seq1, :string

      add :pt_run_seq2, :string

      add :pt_atp_enforcement, :string

      add :pt_atp_family, :boolean

      add :pt_domain, :string

      add :oid_pt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_POU_MSTR") do
      add :pou_code, :string

      add :pou_desc, :string

      add :pou_cmtindx, :integer

      add :pou_mod_userid, :string

      add :pou_mod_date, :naive_datetime

      add :pou_user1, :string

      add :pou_user2, :string

      add :pou__qadc01, :string

      add :pou__qadc02, :string

      add :pou_domain, :string

      add :oid_pou_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIN_MSTR") do
      add :pin_product, :string

      add :pin_desc, :string

      add :pin_hwm, :integer

      add :pin_control1, :string

      add :pin_control2, :string

      add :pin_control3, :string

      add :pin_control4, :string

      add :pin_control5, :string

      add :pin_inst_date, :naive_datetime

      add :pin_user1, :string

      add :pin_user2, :string

      add :pin__qadc01, :string

      add :pin__qadi01, :integer

      add :pin__qadd01, :decimal

      add :pin__qadl01, :boolean

      add :pin__qadt01, :naive_datetime

      add :pin_control6, :string

      add :pin_inst_time, :integer

      add :pin_mod_userid, :string

      add :pin_mod_date, :naive_datetime

      add :pin_aud_days, :integer

      add :pin_aud_ddate, :naive_datetime

      add :pin_aud_date, :naive_datetime

      add :pin_aud_user, :string

      add :pin_aud_pswd, :string

      add :pin_aud_nbr, :integer

      add :oid_pin_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PCT_MSTR") do
      add :pct_desc, :string

      add :pct_dsgn_grp, :string

      add :pct_approval, :string

      add :pct_distr, :string

      add :pct_prefix, :string

      add :pct_dc_warn, :integer

      add :pct_type, :string

      add :pct_user1, :string

      add :pct_user2, :string

      add :pct__qad01, :boolean

      add :pct__qad02, :naive_datetime

      add :pct__qad03, :string

      add :pct__qad04, :string

      add :pct__qad05, :string

      add :pct_mod_date, :naive_datetime

      add :pct_userid, :string

      add :pct_secure_text, :string

      add :pct_secure_item, :string

      add :pct_secure_stct, :string

      add :pct_secure_routing, :string

      add :pct_secure_admn, :string

      add :pct_seqrev_off, :boolean

      add :pct_doc_type, :string

      add :pct_domain, :string

      add :oid_pct_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QCS_MSTR") do
      add :qcs_part, :string

      add :qcs_lot_int, :integer

      add :qcs_days, :integer

      add :qcs_user1, :string

      add :qcs_user2, :string

      add :qcs__chr01, :string

      add :qcs__chr02, :string

      add :qcs__chr03, :string

      add :qcs__chr04, :string

      add :qcs__chr05, :string

      add :qcs_domain, :string

      add :oid_qcs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PR_MSTR") do
      add :pr_type, :string

      add :pr_desc, :string

      add :pr_st_80, :string

      add :pr_reset, :string

      add :pr_st_132, :string

      add :pr_st_bc, :string

      add :pr_end_bc, :string

      add :pr_neg_line, :string

      add :pr_length, :integer

      add :pr_blank, :integer

      add :pr_page, :string

      add :pr_init, :string

      add :pr_user1, :string

      add :pr_user2, :string

      add :pr__qadc01, :string

      add :oid_pr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_POD_DET") do
      add :pod_nbr, :string

      add :pod_due_date, :naive_datetime

      add :pod_line, :integer

      add :pod_part, :string

      add :pod_qty_ord, :decimal

      add :pod_qty_rcvd, :decimal

      add :pod_pur_cost, :decimal

      add :pod_std_cost, :decimal

      add :pod_so_job, :string

      add :pod_qty_chg, :decimal

      add :pod_cost_chg, :decimal

      add :pod_bo_chg, :decimal

      add :pod_acct, :string

      add :pod_per_date, :naive_datetime

      add :pod_type, :string

      add :pod_insp_rqd, :boolean

      add :pod_wo_lot, :string

      add :pod_vpart, :string

      add :pod_need, :naive_datetime

      add :pod_taxable, :boolean

      add :pod_desc, :string

      add :pod_cc, :string

      add :pod__qad04, :string

      add :pod_um, :string

      add :pod_disc_pct, :decimal

      add :pod_req_nbr, :string

      add :pod__qad10, :string

      add :pod_um_conv, :decimal

      add :pod_loc, :string

      add :pod_serial, :string

      add :pod_op, :integer

      add :pod_contract, :string

      add :pod_status, :string

      add :pod_rev, :string

      add :pod_cmtindx, :integer

      add :pod_req_line, :integer

      add :pod_project, :string

      add :pod_ps_chg, :decimal

      add :pod_cst_up, :boolean

      add :pod_rum, :string

      add :pod_user1, :string

      add :pod_user2, :string

      add :pod_vat, :boolean

      add :pod__qad16, :string

      add :pod__qad06, :string

      add :pod_pst, :boolean

      add :pod__qad13, :boolean

      add :pod__qad07, :string

      add :pod_pay_um, :string

      add :pod_pum_conv, :decimal

      add :pod__qad15, :boolean

      add :pod_site, :string

      add :pod_rum_conv, :decimal

      add :pod_qty_rtnd, :decimal

      add :pod_blanket, :string

      add :pod_blnkt_ln, :integer

      add :pod__qad01, :naive_datetime

      add :pod__qad02, :integer

      add :pod__qad03, :string

      add :pod__qad05, :boolean

      add :pod__qad08, :naive_datetime

      add :pod__qad09, :integer

      add :pod__qad11, :string

      add :pod__qad12, :boolean

      add :pod__qad14, :naive_datetime

      add :pod_rel_nbr, :integer

      add :pod_rel_qty, :decimal

      add :pod_reason, :string

      add :pod_request, :string

      add :pod_approve, :string

      add :pod__chr01, :string

      add :pod__chr02, :string

      add :pod__chr03, :string

      add :pod__chr04, :string

      add :pod__chr05, :string

      add :pod__chr06, :string

      add :pod__chr07, :string

      add :pod__chr08, :string

      add :pod__chr09, :string

      add :pod__chr10, :string

      add :pod__dte01, :naive_datetime

      add :pod__dte02, :naive_datetime

      add :pod__dec01, :decimal

      add :pod__dec02, :decimal

      add :pod__log01, :boolean

      add :pod_rma_type, :string

      add :pod_tax_max, :decimal

      add :pod_cum_qty, :decimal

      add :pod_cum_date, :naive_datetime

      add :pod_contr_id, :string

      add :pod_apr_code, :string

      add :pod_taxc, :string

      add :pod_po_site, :string

      add :pod_po_db, :string

      add :pod_firm_weeks, :integer

      add :pod_mrp_pct, :decimal

      add :pod_raw_weeks, :integer

      add :pod_fab_weeks, :integer

      add :pod_plan_weeks, :integer

      add :pod_curr_rlse_id, :string

      add :pod_sched, :boolean

      add :pod_ord_mult, :decimal

      add :pod_pkg_code, :string

      add :pod_sch_mrp, :boolean

      add :pod_sch_data, :string

      add :pod_rlse_nbr, :integer

      add :pod_ship_weeks, :integer

      add :pod_translt_days, :decimal

      add :pod_fsm_type, :string

      add :pod_sd_pat, :string

      add :pod_sd_time, :string

      add :pod_plan_days, :integer

      add :pod_plan_mths, :integer

      add :pod_firm_days, :integer

      add :pod_start_eff, :naive_datetime

      add :pod_end_eff, :naive_datetime

      add :pod_raw_days, :integer

      add :pod_fab_days, :integer

      add :pod_tax_usage, :string

      add :pod_tax_in, :boolean

      add :pod_sched_chgd, :boolean

      add :pod_pr_list, :string

      add :pod_dock, :string

      add :pod_pastdue, :string

      add :pod_drp_ref, :string

      add :pod_tax_env, :string

      add :pod_crt_int, :decimal

      add :pod_translt_hrs, :decimal

      add :pod_sftylt_days, :decimal

      add :pod_sftylt_hrs, :decimal

      add :pod_fix_pr, :boolean

      add :pod_fr_list, :string

      add :pod_lot_next, :string

      add :pod_lot_rcpt, :boolean

      add :pod_grade, :string

      add :pod_expire, :naive_datetime

      add :pod_rctstat, :string

      add :pod_assay, :decimal

      add :pod_rctstat_active, :boolean

      add :pod_pricing_dt, :naive_datetime

      add :pod_pr_lst_tp, :integer

      add :pod_ers_opt, :integer

      add :pod__qadd01, :decimal

      add :pod__qadd02, :decimal

      add :pod__qadd03, :decimal

      add :pod_sod_line, :integer

      add :pod_so_status, :string

      add :pod_sub_ship_date, :naive_datetime

      add :pod_sub_type, :string

      add :pod_sub, :string

      add :pod_wip_lotser, :string

      add :pod_pjs_line, :integer

      add :pod_consignment, :boolean

      add :pod_max_aging_days, :integer

      add :pod_multi_due_dates, :boolean

      add :pod_domain, :string

      add :oid_pod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJT_MSTR") do
      add :pjt_code, :string

      add :pjt_ca_int_type, :string

      add :pjt_cmtindx, :integer

      add :pjt_desc, :string

      add :pjt_priority, :integer

      add :pjt_prod_line, :string

      add :pjt_pr_list, :string

      add :pjt_taxable, :boolean

      add :pjt_taxc, :string

      add :pjt_mod_date, :naive_datetime

      add :pjt_mod_userid, :string

      add :pjt_user1, :string

      add :pjt_user2, :string

      add :pjt__qadc01, :string

      add :pjt__qadd01, :decimal

      add :pjt__qadi01, :integer

      add :pjt__qadl01, :boolean

      add :pjt__qadt01, :naive_datetime

      add :pjt_domain, :string

      add :oid_pjt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LBLC_CTRL") do
      add :lblc_index1, :integer

      add :lblc_trans_frame, :boolean

      add :lblc_mod_userid, :string

      add :lblc_mod_date, :naive_datetime

      add :lblc_user1, :string

      add :lblc_user2, :string

      add :lblc__qadc01, :string

      add :lblc__qadc02, :string

      add :lblc__qadl01, :boolean

      add :lblc__qadl02, :boolean

      add :oid_lblc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBL_DET") do
      add :knbl_keyid, :decimal

      add :knbl_knb_keyid, :decimal

      add :knbl_card_type, :string

      add :knbl_calc_mode, :boolean

      add :knbl_kanban_quantity, :decimal

      add :knbl_order_qty, :decimal

      add :knbl_number_of_cards, :integer

      add :knbl_cont_size, :decimal

      add :knbl_cont_type, :string

      add :knbl_type_user_ref, :string

      add :knbl_min_cycle_check, :string

      add :knbl_min_cycle_time, :decimal

      add :knbl_max_cycle_time, :decimal

      add :knbl_print_quantity, :boolean

      add :knbl_id_barcode, :boolean

      add :knbl_item_barcode, :boolean

      add :knbl_print_consume_ref, :boolean

      add :knbl_card_print_option, :string

      add :knbl_regen_required, :boolean

      add :knbl_impact_inventory, :boolean

      add :knbl_backflush, :boolean

      add :knbl_rep_time, :decimal

      add :knbl_fifo_time, :decimal

      add :knbl_dispatch_list, :boolean

      add :knbl_fax_dispatch_list, :boolean

      add :knbl_source_fax, :string

      add :knbl_source_fax2, :string

      add :knbl_email_disp_list, :boolean

      add :knbl_source_email, :string

      add :knbl_blanket_po, :boolean

      add :knbl_accum_type, :string

      add :knbl_interval_time, :decimal

      add :knbl_next_date, :naive_datetime

      add :knbl_next_time, :decimal

      add :knbl_accum_schedule, :string

      add :knbl_accum_sch_time, :string

      add :knbl_mod_date, :naive_datetime

      add :knbl_mod_userid, :string

      add :knbl_user1, :string

      add :knbl_user2, :string

      add :knbl__qadc01, :string

      add :knbl__qadc02, :string

      add :knbl_domain, :string

      add :knbl_card_reporting, :integer

      add :knbl_fractional_kanban, :decimal

      add :knbl_cmtindx, :integer

      add :knbl_run_out_option, :integer

      add :oid_knbl_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QCD_DET") do
      add :qcd_nbr, :string

      add :qcd_lot, :string

      add :qcd_iss_date, :naive_datetime

      add :qcd_part, :string

      add :qcd_qty_req, :decimal

      add :qcd_qty_iss, :decimal

      add :qcd_cmtindx, :integer

      add :qcd_user1, :string

      add :qcd_user2, :string

      add :qcd_op, :integer

      add :qcd__chr01, :string

      add :qcd__chr02, :string

      add :qcd__chr03, :string

      add :qcd__chr04, :string

      add :qcd__chr05, :string

      add :qcd__dte01, :naive_datetime

      add :qcd__dte02, :naive_datetime

      add :qcd__dec01, :decimal

      add :qcd__dec02, :decimal

      add :qcd__log01, :boolean

      add :qcd_domain, :string

      add :oid_qcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PRJ_MSTR") do
      add :prj_nbr, :string

      add :prj_action_stat, :string

      add :prj_ar_acct, :string

      add :prj_ar_sub, :string

      add :prj_ar_cc, :string

      add :prj_bg_above, :decimal

      add :prj_bg_below, :decimal

      add :prj_bill_to, :string

      add :prj_channel, :string

      add :prj_cmtindx, :integer

      add :prj_close_date, :naive_datetime

      add :prj_comm_pct, :decimal

      add :prj_cr_card, :string

      add :prj_cr_init, :string

      add :prj_cr_terms, :string

      add :prj_curr, :string

      add :prj_cust, :string

      add :prj_desc, :string

      add :prj_end_date, :naive_datetime

      add :prj_eng_nbr, :string

      add :prj_eu_nbr, :string

      add :prj_exru_seq, :integer

      add :prj_ex_rate, :decimal

      add :prj_ex_rate2, :decimal

      add :prj_ex_ratetype, :string

      add :prj_fix_rate, :boolean

      add :prj_global_inv, :boolean

      add :prj_inv_det, :boolean

      add :prj_inv_det_pr, :boolean

      add :prj_inv_lvl, :boolean

      add :prj_lang, :string

      add :prj_loc, :string

      add :prj_mref, :string

      add :prj_ord_date, :naive_datetime

      add :prj_pjt_code, :string

      add :prj_po, :string

      add :prj_pr_list, :string

      add :prj_pr_rollup, :boolean

      add :prj_prepaid, :decimal

      add :prj_prep_tax, :decimal

      add :prj_pricing_dt, :naive_datetime

      add :prj_rmks, :string

      add :prj_ship_date, :naive_datetime

      add :prj_ship_to, :string

      add :prj_shipvia, :string

      add :prj_site, :string

      add :prj_slspsn, :string

      add :prj_st_date, :naive_datetime

      add :prj_status, :string

      add :prj_tax_date, :naive_datetime

      add :prj_tax_env, :string

      add :prj_tax_in, :boolean

      add :prj_tax_usage, :string

      add :prj_taxable, :boolean

      add :prj_taxc, :string

      add :prj_type_taxc, :string

      add :prj_trl1_amt, :decimal

      add :prj_trl1_cd, :string

      add :prj_trl2_amt, :decimal

      add :prj_trl2_cd, :string

      add :prj_trl3_amt, :decimal

      add :prj_trl3_cd, :string

      add :prj_userid, :string

      add :prj_use_budgets, :boolean

      add :prj_mod_date, :naive_datetime

      add :prj_mod_userid, :string

      add :prj_user1, :string

      add :prj_user2, :string

      add :prj__dec01, :decimal

      add :prj__log01, :boolean

      add :prj__dte01, :naive_datetime

      add :prj__qadc01, :string

      add :prj__qadc02, :string

      add :prj__qadd01, :decimal

      add :prj__qadd02, :decimal

      add :prj__qadi01, :integer

      add :prj__qadi02, :integer

      add :prj__qadl01, :boolean

      add :prj__qadl02, :boolean

      add :prj__qadt01, :naive_datetime

      add :prj__qadt02, :naive_datetime

      add :prj_domain, :string

      add :oid_prj_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_POC_CTRL") do
      add :poc_bill, :string

      add :poc_ship, :string

      add :poc_po_nbr, :integer

      add :poc_ln_fmt, :boolean

      add :poc_insp_loc, :string

      add :poc_rcv_type, :decimal

      add :poc_rcv_nbr, :decimal

      add :poc_ln_stat, :string

      add :poc_tol_pct, :decimal

      add :poc_tol_cst, :decimal

      add :poc_hcmmts, :boolean

      add :poc_lcmmts, :boolean

      add :poc_fst_id, :string

      add :poc_pst_id, :string

      add :poc_rcv_all, :boolean

      add :poc__qad01, :integer

      add :poc_user1, :string

      add :poc_user2, :string

      add :poc__qadi03, :integer

      add :poc_req_nbr, :integer

      add :poc_po_pre, :string

      add :poc_rcv_pre, :string

      add :poc_req_pre, :string

      add :poc_sort_by, :boolean

      add :poc__qadc04, :string

      add :poc__qadc05, :string

      add :poc_apv_req, :boolean

      add :poc_po_hist, :boolean

      add :poc_pl_req, :boolean

      add :poc_crtacc_acct, :string

      add :poc_crtacc_cc, :string

      add :poc_crtapp_acct, :string

      add :poc_crtapp_cc, :string

      add :poc_next_batch, :integer

      add :poc_pc_line, :boolean

      add :poc_pt_req, :boolean

      add :poc_ers_proc, :boolean

      add :poc_ers_opt, :string

      add :poc__qadc01, :string

      add :poc__qadc02, :string

      add :poc__qadc03, :string

      add :poc__qadt01, :naive_datetime

      add :poc__qadd01, :decimal

      add :poc__qadd02, :decimal

      add :poc__qadi01, :integer

      add :poc__qadi02, :integer

      add :poc__qadl01, :boolean

      add :poc__qadl02, :boolean

      add :poc__qadl03, :boolean

      add :poc__qadl04, :boolean

      add :poc__qadl05, :boolean

      add :poc__qadl06, :boolean

      add :poc_ack_req, :boolean

      add :poc_ex_ratetype, :string

      add :poc_crtacc_sub, :string

      add :poc_crtapp_sub, :string

      add :poc_multi_due_dates, :boolean

      add :poc_domain, :string

      add :oid_poc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJS_MSTR") do
      add :pjs_nbr, :string

      add :pjs_sub_nbr, :integer

      add :pjs_line, :integer

      add :pjs_line_disp, :string

      add :pjs_line_par, :integer

      add :pjs_line_seq, :integer

      add :pjs_line_sort, :string

      add :pjs_amt_inv, :decimal

      add :pjs_budget_type, :integer

      add :pjs_ca_int_type, :string

      add :pjs_cmtindx, :integer

      add :pjs_completed, :boolean

      add :pjs_cost, :decimal

      add :pjs_cost_actual, :decimal

      add :pjs_cost_iss, :decimal

      add :pjs_cost_wip, :decimal

      add :pjs_desc, :string

      add :pjs_disc_pct, :decimal

      add :pjs_frozen, :boolean

      add :pjs_fsc_code, :string

      add :pjs_detail_on_inv, :boolean

      add :pjs_price_on_inv, :boolean

      add :pjs_inv_lvl, :boolean

      add :pjs_inv_group, :string

      add :pjs_link_ok, :boolean

      add :pjs_list_pr, :decimal

      add :pjs_part, :string

      add :pjs_povar_amt, :decimal

      add :pjs_price, :decimal

      add :pjs_prod_line, :string

      add :pjs_qty_actual, :decimal

      add :pjs_qty_budget, :decimal

      add :pjs_qty_inv, :decimal

      add :pjs_qty_iss, :decimal

      add :pjs_qty_oh, :decimal

      add :pjs_qty_planned, :decimal

      add :pjs_qty_sel_inv, :decimal

      add :pjs_qty_wip, :decimal

      add :pjs_status, :string

      add :pjs_subassy, :boolean

      add :pjs_um, :string

      add :pjs_um_conv, :decimal

      add :pjs_variation, :boolean

      add :pjs_mod_date, :naive_datetime

      add :pjs_mod_userid, :string

      add :pjs_user1, :string

      add :pjs_user2, :string

      add :pjs__chr01, :string

      add :pjs__dec01, :decimal

      add :pjs__dec02, :decimal

      add :pjs__log01, :boolean

      add :pjs__log02, :boolean

      add :pjs__dte01, :naive_datetime

      add :pjs__dte02, :naive_datetime

      add :pjs__qadc01, :string

      add :pjs__qadc02, :string

      add :pjs__qadc03, :string

      add :pjs__qadd01, :decimal

      add :pjs__qadd02, :decimal

      add :pjs__qadi01, :integer

      add :pjs__qadi02, :integer

      add :pjs__qadl01, :boolean

      add :pjs__qadl02, :boolean

      add :pjs__qadt01, :naive_datetime

      add :pjs__qadt02, :naive_datetime

      add :pjs_domain, :string

      add :oid_pjs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIGC_DET") do
      add :pigc_amt_type, :string

      add :pigc_code, :string

      add :pigc_div, :string

      add :pigc_expire, :naive_datetime

      add :pigc_include, :boolean

      add :pigc_mem_ref, :string

      add :pigc_mem_type, :integer

      add :pigc_start, :naive_datetime

      add :pigc_user1, :string

      add :pigc_user2, :string

      add :pigc__qadc01, :string

      add :pigc__qadc02, :string

      add :pigc__qadc03, :string

      add :pigc__qadd01, :decimal

      add :pigc__qadd02, :decimal

      add :pigc__qadi01, :integer

      add :pigc__qadi02, :integer

      add :pigc__qadl01, :boolean

      add :pigc__qadl02, :boolean

      add :pigc__qadt01, :naive_datetime

      add :pigc__qadt02, :naive_datetime

      add :pigc_curr, :string

      add :pigc_srch_type, :integer

      add :pigc_domain, :string

      add :oid_pigc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PSHC_CTRL") do
      add :pshc_shipper_nr_id, :string

      add :pshc_master_nr_id, :string

      add :pshc__qadi01, :integer

      add :pshc_mod_date, :naive_datetime

      add :pshc_mod_userid, :string

      add :pshc_user1, :string

      add :pshc_user2, :string

      add :pshc__qadc01, :string

      add :pshc__qadc02, :string

      add :pshc_domain, :string

      add :oid_pshc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJ_MSTR") do
      add :pj_project, :string

      add :pj_desc, :string

      add :pj_active, :boolean

      add :pj_beg_dt, :naive_datetime

      add :pj_cmtindx, :integer

      add :pj_comp, :naive_datetime

      add :pj_findate, :naive_datetime

      add :pj_revdate, :naive_datetime

      add :pj_revfin, :naive_datetime

      add :pj_stat, :string

      add :pj_type, :string

      add :pj_user1, :string

      add :pj_user2, :string

      add :pj__qadc01, :string

      add :pj_domain, :string

      add :oid_pj_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIG_MSTR") do
      add :pig_all_custs, :boolean

      add :pig_all_items, :boolean

      add :pig_amt_type, :string

      add :pig_code, :string

      add :pig_curr, :string

      add :pig_desc, :string

      add :pig_div, :string

      add :pig_expire, :naive_datetime

      add :pig_list, :string

      add :pig_list_id, :string

      add :pig_priority, :integer

      add :pig_ref_code, :string

      add :pig_ref_type, :integer

      add :pig_start, :naive_datetime

      add :pig_val_type, :string

      add :pig_user1, :string

      add :pig_user2, :string

      add :pig__qadc01, :string

      add :pig__qadc02, :string

      add :pig__qadc03, :string

      add :pig__qadd01, :decimal

      add :pig__qadd02, :decimal

      add :pig__qadi01, :integer

      add :pig__qadi02, :integer

      add :pig__qadl01, :boolean

      add :pig__qadl02, :boolean

      add :pig__qadt01, :naive_datetime

      add :pig__qadt02, :naive_datetime

      add :pig_srch_type, :integer

      add :pig_domain, :string

      add :oid_pig_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATTMP_MSTR") do
      add :attmp_event_id, :decimal

      add :attmp_table_name, :string

      add :oid_erecord, :decimal

      add :oid_atap_mstr, :decimal

      add :attmp_date, :naive_datetime

      add :attmp_time, :integer

      add :attmp_timezone, :string

      add :attmp_event_type, :string

      add :attmp_source, :string

      add :attmp_userid, :string

      add :attmp_user_name, :string

      add :attmp_pgmi_exec, :string

      add :attmp__qadc03, :string

      add :attmp_record_order, :integer

      add :attmp__qadd01, :decimal

      add :attmp__qadc01, :string

      add :attmp__qadc02, :string

      add :attmp_raw_image, :binary

      add :attmp_exclude_fields, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTH_HIST") do
      add :pth_year, :integer

      add :pth_part, :string

      add :pth_tot_qty, :decimal

      add :pth_tot_sale, :decimal

      add :pth_tot_cost, :decimal

      add :pth_user1, :string

      add :pth_user2, :string

      add :pth_type, :string

      add :pth__chr01, :string

      add :pth__chr02, :string

      add :pth__chr03, :string

      add :pth__chr04, :string

      add :pth__chr05, :string

      add :pth__dte01, :naive_datetime

      add :pth__dte02, :naive_datetime

      add :pth__dec01, :decimal

      add :pth__dec02, :decimal

      add :pth__log01, :boolean

      add :pth_for, :string

      add :pth_domain, :string

      add :oid_pth_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PP_PLAN") do
      add :pp_prod_line, :string

      add :pp_year, :integer

      add :pp_ship_fcst, :decimal

      add :pp_ship_act, :decimal

      add :pp_ord_fcst, :decimal

      add :pp_ord_act, :decimal

      add :pp_inv_fcst, :decimal

      add :pp_inv_act, :decimal

      add :pp_bklg_fcst, :decimal

      add :pp_bklg_act, :decimal

      add :pp_cost_fcst, :decimal

      add :pp_cost_act, :decimal

      add :pp_prod_fcst, :decimal

      add :pp_prod_act, :decimal

      add :pp_user1, :string

      add :pp_user2, :string

      add :pp_site, :string

      add :pp__qadc01, :string

      add :pp_domain, :string

      add :oid_pp_plan, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PLI_MSTR") do
      add :pli_keyid, :integer

      add :pli_internal_ref_type, :string

      add :pli_internal_ref, :string

      add :pli_supplier, :string

      add :pli_invoice, :string

      add :pli_invoice_amt, :decimal

      add :pli_curr, :string

      add :pli_invoice_date, :naive_datetime

      add :pli_vo_ref, :string

      add :pli_ex_rate, :decimal

      add :pli_ex_rate2, :decimal

      add :pli_ex_ratetype, :string

      add :pli_exru_seq, :integer

      add :pli_taxable, :boolean

      add :pli_taxc, :string

      add :pli_tax_env, :string

      add :pli_tax_in, :boolean

      add :pli_tax_usage, :string

      add :pli_tax_date, :naive_datetime

      add :pli_mod_date, :naive_datetime

      add :pli_mod_userid, :string

      add :pli_user1, :string

      add :pli_user2, :string

      add :pli__qadc01, :string

      add :pli__qadc02, :string

      add :pli_domain, :string

      add :oid_pli_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJC_CTRL") do
      add :pjc__qadi02, :integer

      add :pjc_auto_mo, :boolean

      add :pjc_bg_above, :decimal

      add :pjc_bg_below, :decimal

      add :pjc_dflt_que, :string

      add :pjc_global_inv, :boolean

      add :pjc_hold_level, :integer

      add :pjc_hcmmts, :boolean

      add :pjc_scmmts, :boolean

      add :pjc_lcmmts, :boolean

      add :pjc_paocmmts, :boolean

      add :pjc_open_status, :string

      add :pjc_hold_status, :string

      add :pjc_comp_status, :string

      add :pjc_close_status, :string

      add :pjc_pao_nbr, :integer

      add :pjc_pao_pre, :string

      add :pjc_pao_open, :string

      add :pjc_pao_hold, :string

      add :pjc_pao_complete, :string

      add :pjc_pao_close, :string

      add :pjc_pao_cancel, :string

      add :pjc_par_detail, :boolean

      add :pjc_par_return, :string

      add :pjc_par_scrap, :string

      add :pjc_pj_type, :string

      add :pjc_pjs_hist, :boolean

      add :pjc_prj_nbr, :integer

      add :pjc_prj_pre, :string

      add :pjc_prj_site, :string

      add :pjc_pr_rollup, :boolean

      add :pjc_ps_in_wip, :boolean

      add :pjc_pt_prod, :boolean

      add :pjc_schedule_pao, :boolean

      add :pjc_so_nbr, :integer

      add :pjc_so_pre, :string

      add :pjc_sub_det, :boolean

      add :pjc_use_budgets, :boolean

      add :pjc_use_pay_rate, :boolean

      add :pjc_mod_date, :naive_datetime

      add :pjc_mod_userid, :string

      add :pjc_user1, :string

      add :pjc_user2, :string

      add :pjc__log01, :boolean

      add :pjc__log02, :boolean

      add :pjc__qadc01, :string

      add :pjc__qadc02, :string

      add :pjc__qadd01, :decimal

      add :pjc__qadi01, :integer

      add :pjc__qadl01, :boolean

      add :pjc__qadl02, :boolean

      add :pjc__qadt01, :naive_datetime

      add :pjc_par_labor_st, :boolean

      add :pjc_domain, :string

      add :oid_pjc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PQ_MSTR") do
      add :pq_prod_line, :string

      add :pq_rsc, :string

      add :pq_qty_per, :decimal

      add :pq_lead, :integer

      add :pq_lt_off, :integer

      add :pq_start, :naive_datetime

      add :pq_end, :naive_datetime

      add :pq_ref, :string

      add :pq_user1, :string

      add :pq_user2, :string

      add :pq_site, :string

      add :pq__qadc01, :string

      add :pq_domain, :string

      add :oid_pq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PLSD_DET") do
      add :plsd_prodline, :string

      add :plsd_site, :string

      add :plsd_cmtype, :string

      add :plsd_channel, :string

      add :plsd_sls_acct, :string

      add :plsd_sls_cc, :string

      add :plsd_dsc_acct, :string

      add :plsd_dsc_cc, :string

      add :plsd_cbdn_acct, :string

      add :plsd_cbdn_cc, :string

      add :plsd_clbr_acct, :string

      add :plsd_clbr_cc, :string

      add :plsd_cmtl_acct, :string

      add :plsd_cmtl_cc, :string

      add :plsd_covh_acct, :string

      add :plsd_covh_cc, :string

      add :plsd_csub_acct, :string

      add :plsd_csub_cc, :string

      add :plsd_user1, :string

      add :plsd_user2, :string

      add :plsd_userid, :string

      add :plsd_mod_date, :naive_datetime

      add :plsd__qadc01, :string

      add :plsd_cbdn_sub, :string

      add :plsd_clbr_sub, :string

      add :plsd_cmtl_sub, :string

      add :plsd_covh_sub, :string

      add :plsd_csub_sub, :string

      add :plsd_dsc_sub, :string

      add :plsd_sls_sub, :string

      add :plsd_fsaccr_acct, :string

      add :plsd_fsaccr_sub, :string

      add :plsd_fsaccr_cc, :string

      add :plsd_fsdef_acct, :string

      add :plsd_fsdef_sub, :string

      add :plsd_fsdef_cc, :string

      add :plsd_domain, :string

      add :oid_plsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PGM_DET") do
      add :pgm_ref, :string

      add :pgm_eq, :string

      add :pgm_type, :string

      add :pgm_seq, :integer

      add :pgm_cmmt, :string

      add :pgm_mod_date, :naive_datetime

      add :pgm_userid, :string

      add :pgm_user1, :string

      add :pgm_user2, :string

      add :pgm_desc, :string

      add :pgm__qadc01, :string

      add :pgm_domain, :string

      add :oid_pgm_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PO_MSTR") do
      add :po_nbr, :string

      add :po_vend, :string

      add :po_ship, :string

      add :po_ord_date, :naive_datetime

      add :po_rmks, :string

      add :po_cr_terms, :string

      add :po_buyer, :string

      add :po_shipvia, :string

      add :po_fob, :string

      add :po_bill, :string

      add :po__qad04, :boolean

      add :po_partial, :boolean

      add :po_rev, :decimal

      add :po_stat, :string

      add :po_ap_acct, :string

      add :po_ap_cc, :string

      add :po_frt, :decimal

      add :po_serv_chg, :decimal

      add :po_spec_chg, :decimal

      add :po_tax_pct, :decimal

      add :po_disc_pct, :decimal

      add :po_prepaid, :decimal

      add :po_contact, :string

      add :po_confirm, :boolean

      add :po_cmtindx, :integer

      add :po_print, :boolean

      add :po_cls_date, :naive_datetime

      add :po_taxable, :boolean

      add :po_user1, :string

      add :po_user2, :string

      add :po_curr, :string

      add :po_ex_rate, :decimal

      add :po_lang, :string

      add :po_fst_id, :string

      add :po_pst_id, :string

      add :po_pst, :boolean

      add :po_duty_type, :string

      add :po__qad05, :decimal

      add :po__qad07, :string

      add :po__qad08, :string

      add :po_site, :string

      add :po_blanket, :string

      add :po__qad01, :naive_datetime

      add :po__qad02, :integer

      add :po__qad03, :string

      add :po_contract, :string

      add :po_del_to, :string

      add :po_due_date, :naive_datetime

      add :po_eff_strt, :naive_datetime

      add :po_eff_to, :naive_datetime

      add :po_est_value, :decimal

      add :po__qad06, :boolean

      add :po_project, :string

      add :po_rel_nbr, :integer

      add :po_req_id, :string

      add :po_type, :string

      add :po_user_id, :string

      add :po__qad09, :decimal

      add :po_release, :boolean

      add :po_recurr, :boolean

      add :po_cycl, :string

      add :po__chr01, :string

      add :po__chr02, :string

      add :po__chr03, :string

      add :po__chr04, :string

      add :po__chr05, :string

      add :po__chr06, :string

      add :po__chr07, :string

      add :po__chr08, :string

      add :po__chr09, :string

      add :po__chr10, :string

      add :po__dte01, :naive_datetime

      add :po__dte02, :naive_datetime

      add :po__dec01, :decimal

      add :po__dec02, :decimal

      add :po__log01, :boolean

      add :po_inv_mthd, :string

      add :po_fix_rate, :boolean

      add :po_ent_ex, :decimal

      add :po_tax_date, :naive_datetime

      add :po_fsm_type, :string

      add :po_bank, :string

      add :po_pr_list, :string

      add :po_tax_env, :string

      add :po_sched, :boolean

      add :po_pr_list2, :string

      add :po_tax_usage, :string

      add :po_fix_pr, :boolean

      add :po_sch_mthd, :string

      add :po_taxc, :string

      add :po_priced_dt, :naive_datetime

      add :po_pricing_dt, :naive_datetime

      add :po_ers_opt, :string

      add :po_pr_lst_tp, :integer

      add :po__qadc01, :string

      add :po__qadc02, :string

      add :po__qadd01, :decimal

      add :po__qadd02, :decimal

      add :po__qadi01, :integer

      add :po__qadi02, :integer

      add :po_so_nbr, :string

      add :po_is_btb, :boolean

      add :po_so_hold, :boolean

      add :po_xmit, :string

      add :po_ex_rate2, :decimal

      add :po_ex_ratetype, :string

      add :po_exru_seq, :integer

      add :po_ap_sub, :string

      add :po_crt_int, :decimal

      add :po_consignment, :boolean

      add :po_max_aging_days, :integer

      add :po_app_owner, :string

      add :po_tot_terms_code, :string

      add :po_translt_days, :decimal

      add :po_domain, :string

      add :oid_po_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PLID_DET") do
      add :plid_pli_keyid, :integer

      add :plid_line, :integer

      add :plid_order_type, :string

      add :plid_order, :string

      add :plid_order_line, :integer

      add :plid_inv_qty, :decimal

      add :plid_inv_cost, :decimal

      add :plid_pvo_id, :integer

      add :plid_taxable, :boolean

      add :plid_taxc, :string

      add :plid_tax_env, :string

      add :plid_tax_in, :boolean

      add :plid_tax_usage, :string

      add :plid_mod_date, :naive_datetime

      add :plid_mod_userid, :string

      add :plid_user1, :string

      add :plid_user2, :string

      add :plid__qadc01, :string

      add :plid__qadc02, :string

      add :plid_domain, :string

      add :oid_plid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PGC_CTRL") do
      add :pgc_wait_status, :string

      add :pgc_addr, :string

      add :pgc_append_ca, :boolean

      add :pgc_phone, :string

      add :pgc_index, :integer

      add :pgc_port4, :string

      add :pgc_port3, :string

      add :pgc_port2, :string

      add :pgc_port1, :string

      add :pgc_post_control, :string

      add :pgc_pre_control, :string

      add :pgc_paged_status, :string

      add :pgc_program, :string

      add :pgc_user1, :string

      add :pgc_user2, :string

      add :pgc__qadc01, :string

      add :pgc_domain, :string

      add :oid_pgc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PAL_MSTR") do
      add :pal_pallet, :string

      add :pal_desc, :string

      add :pal_unit_lay, :integer

      add :pal_um, :string

      add :pal_nbr_lay, :integer

      add :pal_height, :decimal

      add :pal_weight, :decimal

      add :pal_user1, :string

      add :pal_user2, :string

      add :pal__chr01, :string

      add :pal__chr03, :string

      add :pal__chr04, :string

      add :pal__chr05, :string

      add :pal__dec01, :decimal

      add :pal__dec02, :decimal

      add :pal__chr02, :string

      add :pal_hght_um, :string

      add :pal_wght_um, :string

      add :pal_domain, :string

      add :oid_pal_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_NR_MSTR") do
      add :nr_seqid, :string

      add :nr_desc, :string

      add :nr_dataset, :string

      add :nr_allow_discard, :boolean

      add :nr_allow_void, :boolean

      add :nr_next_set, :boolean

      add :nr_seg_type, :string

      add :nr_seg_nbr, :string

      add :nr_segcount, :integer

      add :nr_seg_rank, :string

      add :nr_seg_ini, :string

      add :nr_seg_min, :string

      add :nr_seg_max, :string

      add :nr_seg_reset, :string

      add :nr_seg_value, :string

      add :nr_seg_format, :string

      add :nr_archived, :boolean

      add :nr_internal, :boolean

      add :nr_effdate, :naive_datetime

      add :nr_exp_date, :naive_datetime

      add :nr_user1, :string

      add :nr_user2, :string

      add :nr__qadc01, :string

      add :nr_curr_effdate, :naive_datetime

      add :nr_valuemask, :string

      add :nr_domain, :string

      add :oid_nr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIH_HIST") do
      add :pih_doc_type, :integer

      add :pih_nbr, :string

      add :pih_line, :integer

      add :pih_feature, :string

      add :pih_option, :string

      add :pih_disc_acct, :string

      add :pih_disc_cc, :string

      add :pih_disc_sub, :string

      add :pih_disc_proj, :string

      add :pih_qty, :decimal

      add :pih_amt, :decimal

      add :pih_disc_amt, :decimal

      add :pih_break_cat, :string

      add :pih_pid_qty, :decimal

      add :pih_amt_type, :string

      add :pih_cr_terms, :string

      add :pih_fr_list, :string

      add :pih_fr_terms, :string

      add :pih_userid, :string

      add :pih_mod_date, :naive_datetime

      add :pih_list_id, :string

      add :pih_source, :string

      add :pih_min_net, :decimal

      add :pih_qty_type, :string

      add :pih_um, :string

      add :pih_time, :integer

      add :pih_list, :string

      add :pih_comb_type, :string

      add :pih_confg_disc, :boolean

      add :pih_parent, :string

      add :pih_accr_acct, :string

      add :pih_accr_cc, :string

      add :pih_accr_proj, :string

      add :pih_accr_sub, :string

      add :pih_disc_seq, :decimal

      add :pih_print, :boolean

      add :pih_user1, :string

      add :pih_user2, :string

      add :pih__qadc01, :string

      add :pih__qadd01, :decimal

      add :pih__dte01, :naive_datetime

      add :pih__dte02, :naive_datetime

      add :pih__dec01, :decimal

      add :pih__dec02, :decimal

      add :pih__log01, :boolean

      add :pih__chr01, :string

      add :pih__chr02, :string

      add :pih__chr03, :string

      add :pih__chr04, :string

      add :pih__chr05, :string

      add :pih__chr06, :string

      add :pih__chr07, :string

      add :pih__chr08, :string

      add :pih__chr09, :string

      add :pih__chr10, :string

      add :pih_promo1, :string

      add :pih_promo2, :string

      add :pih_bonus_line, :integer

      add :pih_promo3, :string

      add :pih_promo4, :string

      add :pih_pig_code, :string

      add :pih_domain, :string

      add :oid_pih_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PAC_MSTR") do
      add :pac_code, :string

      add :pac_desc, :string

      add :pac_site, :string

      add :pac_pl, :string

      add :pac_pur_acct, :string

      add :pac_pur_cc, :string

      add :pac_amt, :decimal

      add :pac_apr_by, :string

      add :pac_req_by, :string

      add :pac_user1, :string

      add :pac_user2, :string

      add :pac_userid, :string

      add :pac_mod_date, :naive_datetime

      add :pac__qadc01, :string

      add :pac_pur_sub, :string

      add :pac_domain, :string

      add :oid_pac_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_NCC_CTRL") do
      add :ncc_channel, :string

      add :ncc_pr_list, :string

      add :ncc_ln_pricing, :boolean

      add :ncc_disp_weight, :boolean

      add :ncc_ln_fmt, :boolean

      add :ncc_cr_init, :string

      add :ncc_shipvia, :string

      add :ncc_type, :string

      add :ncc_region, :string

      add :ncc_county, :string

      add :ncc_site, :string

      add :ncc_class, :string

      add :ncc_lang, :string

      add :ncc_slspsn, :string

      add :ncc_rmks, :string

      add :ncc_fix_pr, :boolean

      add :ncc_ar_acct, :string

      add :ncc_ar_sub, :string

      add :ncc_ar_cc, :string

      add :ncc_partial, :boolean

      add :ncc_taxable, :boolean

      add :ncc_tax_usage, :string

      add :ncc_taxc, :string

      add :ncc_cr_rating, :string

      add :ncc_cr_limit, :decimal

      add :ncc_cr_terms, :string

      add :ncc_disc_pct, :decimal

      add :ncc_po_reqd, :boolean

      add :ncc_fr_list, :string

      add :ncc_fr_min_wt, :decimal

      add :ncc_fr_terms, :string

      add :ncc_confirmed, :string

      add :ncc_show_inv, :boolean

      add :ncc_tax_in, :boolean

      add :ncc_tx_in_city, :boolean

      add :ncc_stat, :string

      add :ncc_nc_app_id, :string

      add :ncc__qadi02, :integer

      add :ncc_mod_userid, :string

      add :ncc_mod_date, :naive_datetime

      add :ncc_user1, :string

      add :ncc_user2, :string

      add :ncc__qadc01, :string

      add :ncc__qadi01, :integer

      add :ncc__qadd01, :decimal

      add :ncc__qadl01, :boolean

      add :ncc__qadt01, :naive_datetime

      add :ncc_domain, :string

      add :oid_ncc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIC_CTRL") do
      add :pic__qadi01, :integer

      add :pic_list_id, :integer

      add :pic_po_date, :string

      add :pic_qo_date, :string

      add :pic_so_date, :string

      add :pic_fs_date, :string

      add :pic_po_fact, :boolean

      add :pic_qo_fact, :boolean

      add :pic_so_fact, :boolean

      add :pic_fs_fact, :boolean

      add :pic_fs_rfact, :integer

      add :pic_po_rfact, :integer

      add :pic_qo_rfact, :integer

      add :pic_so_rfact, :integer

      add :pic_item_regen, :boolean

      add :pic_cust_regen, :boolean

      add :pic_so_linpri, :boolean

      add :pic_fs_linpri, :boolean

      add :pic_po_linpri, :boolean

      add :pic_qo_linpri, :boolean

      add :pic_disc_comb, :string

      add :pic_user1, :string

      add :pic_user2, :string

      add :pic_promo_pre, :string

      add :pic__qadc01, :string

      add :pic_domain, :string

      add :oid_pic_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OPC_CTRL") do
      add :opc__qadi02, :integer

      add :opc_payroll, :boolean

      add :opc_move, :boolean

      add :opc_time_ind, :string

      add :opc_std_hrs, :decimal

      add :opc_std_per, :string

      add :opc_close_gl, :boolean

      add :opc__qad01, :integer

      add :opc_user1, :string

      add :opc_user2, :string

      add :opc__qadi01, :integer

      add :opc_domain, :string

      add :oid_opc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MRPC_CTRL") do
      add :mrpc_horizon, :integer

      add :mrpc_sum_def, :integer

      add :mrpc_user1, :string

      add :mrpc_user2, :string

      add :mrpc__qadi01, :integer

      add :mrpc_drp, :boolean

      add :mrpc_reldays, :integer

      add :mrpc__qadc01, :string

      add :mrpc_op_yield, :boolean

      add :mrpc_domain, :string

      add :oid_mrpc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MND_DET") do
      add :mnd_nbr, :string

      add :mnd_select, :integer

      add :mnd_label, :string

      add :mnd_exec, :string

      add :mnd_fkey, :integer

      add :mnd_help, :string

      add :mnd_canrun, :string

      add :mnd_name, :string

      add :mnd_user1, :string

      add :mnd_user2, :string

      add :mnd__qadc01, :string

      add :oid_mnd_det, :decimal

      add :mnd_uri, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PC_MSTR") do
      add :pc_list, :string

      add :pc_prod_line, :string

      add :pc_part, :string

      add :pc_um, :string

      add :pc_start, :naive_datetime

      add :pc_expire, :naive_datetime

      add :pc_amt_type, :string

      add :pc__qad02, :string

      add :pc_min_qty, :decimal

      add :pc_amt, :decimal

      add :pc_curr, :string

      add :pc_tax_in, :boolean

      add :pc__qad01, :decimal

      add :pc_user1, :string

      add :pc_user2, :string

      add :pc_mod_date, :naive_datetime

      add :pc_userid, :string

      add :pc_min_price, :decimal

      add :pc_max_price, :decimal

      add :pc_domain, :string

      add :oid_pc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MSG_MSTR") do
      add :msg_nbr, :integer

      add :msg_desc, :string

      add :msg_lang, :string

      add :msg_user1, :string

      add :msg_user2, :string

      add :msg_type, :string

      add :msg_explanation, :string

      add :msg__qadc01, :string

      add :oid_msg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MOF_MSTR") do
      add :mof_key, :string

      add :mof_from_login, :integer

      add :mof_to_login, :integer

      add :mof_from_idle_menu, :integer

      add :mof_from_idle_prog, :integer

      add :mof_filter, :boolean

      add :mof_from_userid, :string

      add :mof_to_userid, :string

      add :mof_from_sel, :string

      add :mof_to_sel, :string

      add :mof_bind, :boolean

      add :mof_desc, :string

      add :mof_sessions, :integer

      add :mof_user1, :string

      add :mof_user2, :string

      add :mof__qadc01, :string

      add :mof__qadd01, :decimal

      add :mof__qadi01, :integer

      add :mof__qadl01, :boolean

      add :mof__qadt01, :naive_datetime

      add :oid_mof_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LVR_DET") do
      add :lvr_userid, :string

      add :lvr_date, :string

      add :lvr_time, :string

      add :lvr_user1, :string

      add :lvr_user2, :string

      add :lvr__qadc01, :string

      add :lvr__qadi01, :integer

      add :lvr__qadd01, :decimal

      add :lvr__qadl01, :boolean

      add :lvr__qadt01, :naive_datetime

      add :lvr_nbr, :integer

      add :lvr_product, :string

      add :lvr_msg_sev, :integer

      add :lvr_msg_nbr, :integer

      add :lvr_dir_cnt, :integer

      add :lvr_ind_cnt, :integer

      add :lvr_sid, :string

      add :lvr_type, :string

      add :oid_lvr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PCC_CTRL") do
      add :pcc__qadi01, :integer

      add :pcc_auto_nbr, :boolean

      add :pcc_cmmt_type, :string

      add :pcc_security_on, :boolean

      add :pcc_max_wkfl, :integer

      add :pcc_struct_ok, :boolean

      add :pcc_routing_ok, :boolean

      add :pcc_qspec_ok, :boolean

      add :pcc_quality_ok, :boolean

      add :pcc_initial_date, :naive_datetime

      add :pcc_ecooff_date, :naive_datetime

      add :pcc_comm_lang, :string

      add :pcc_pco_pre, :string

      add :pcc_next_pco, :integer

      add :pcc_db_seq, :integer

      add :pcc_user1, :string

      add :pcc_user2, :string

      add :pcc__qadc01, :string

      add :pcc_formula_ok, :boolean

      add :pcc_process_ok, :boolean

      add :pcc_domain, :string

      add :oid_pcc_ctrl, :decimal

      add :pcc_enforce_seq, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OA_DET") do
      add :oa_nbr, :string

      add :oa_part, :string

      add :oa_qty, :decimal

      add :oa_fr_date, :naive_datetime

      add :oa_to_date, :naive_datetime

      add :oa_code, :integer

      add :oa_detail, :string

      add :oa_review, :string

      add :oa_site, :string

      add :oa_line, :string

      add :oa_user1, :string

      add :oa_user2, :string

      add :oa__qadc01, :string

      add :oa_domain, :string

      add :oid_oa_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MPS_MSTR") do
      add :mps_part, :string

      add :mps_due_date, :naive_datetime

      add :mps_rel_date, :naive_datetime

      add :mps_qty_req, :decimal

      add :mps_qty_cons, :decimal

      add :mps_record, :integer

      add :mps_site, :string

      add :mps_line, :string

      add :mps_user1, :string

      add :mps_user2, :string

      add :mps_bom_code, :string

      add :mps_routing, :string

      add :mps__qadc01, :string

      add :mps_domain, :string

      add :oid_mps_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MFREL_MSTR") do
      add :mfrel_type, :string

      add :mfrel_source_key1, :string

      add :mfrel_source_key2, :string

      add :mfrel_source_key3, :string

      add :mfrel_target_key1, :string

      add :mfrel_target_key2, :string

      add :mfrel_target_key3, :string

      add :mfrel__qadc01, :string

      add :mfrel__qadc02, :string

      add :mfrel__qadc03, :string

      add :mfrel__qadc04, :string

      add :mfrel__qadc05, :string

      add :mfrel__qadd01, :decimal

      add :mfrel__qadd02, :decimal

      add :mfrel__qadd03, :decimal

      add :mfrel__qadd04, :decimal

      add :mfrel__qadd05, :decimal

      add :mfrel__qadl01, :boolean

      add :mfrel__qadl02, :boolean

      add :mfrel__qaddt01, :naive_datetime

      add :mfrel__qaddt02, :naive_datetime

      add :mfrel_mod_userid, :string

      add :mfrel_mod_date, :naive_datetime

      add :mfrel_user1, :string

      add :mfrel_user2, :string

      add :oid_mfrel_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LOT_MSTR") do
      add :lot_part, :string

      add :lot_serial, :string

      add :lot_nbr, :string

      add :lot_create, :naive_datetime

      add :lot_userid, :string

      add :lot__dte01, :naive_datetime

      add :lot__dte02, :naive_datetime

      add :lot__dte03, :naive_datetime

      add :lot__dte04, :naive_datetime

      add :lot__dte05, :naive_datetime

      add :lot__dte06, :naive_datetime

      add :lot__dec01, :decimal

      add :lot__dec02, :decimal

      add :lot__dec03, :decimal

      add :lot__dec04, :decimal

      add :lot__dec05, :decimal

      add :lot__dec06, :decimal

      add :lot__chr01, :string

      add :lot__chr02, :string

      add :lot__chr03, :string

      add :lot__chr04, :string

      add :lot__chr05, :string

      add :lot__chr06, :string

      add :lot_cmtindx, :integer

      add :lot_line, :string

      add :lot_pot_um, :string

      add :lot_pot_conv, :decimal

      add :lot_trans, :string

      add :lot_user1, :string

      add :lot_user2, :string

      add :lot_domain, :string

      add :oid_lot_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PALD_DET") do
      add :pald_pallet, :string

      add :pald_desc, :string

      add :pald_unit_lay, :integer

      add :pald_um, :string

      add :pald_nbr_lay, :integer

      add :pald_height, :decimal

      add :pald_weight, :decimal

      add :pald_user1, :string

      add :pald_user2, :string

      add :pald__chr01, :string

      add :pald__chr03, :string

      add :pald__chr04, :string

      add :pald__chr05, :string

      add :pald__dec01, :decimal

      add :pald__dec02, :decimal

      add :pald__chr02, :string

      add :pald_part, :string

      add :pald_hght_um, :string

      add :pald_wght_um, :string

      add :pald_domain, :string

      add :oid_pald_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_NRH_HIST") do
      add :nrh_seqid, :string

      add :nrh_number, :string

      add :nrh_action, :string

      add :nrh_desc, :string

      add :nrh_userid, :string

      add :nrh_date, :naive_datetime

      add :nrh_time, :string

      add :nrh_user1, :string

      add :nrh_user2, :string

      add :nrh__qadc01, :string

      add :nrh_line, :integer

      add :nrh_inc, :string

      add :nrh_non_inc, :string

      add :nrh_domain, :string

      add :oid_nrh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MPH_HIST") do
      add :mph_part, :string

      add :mph_routing, :string

      add :mph_op, :integer

      add :mph_procedure, :string

      add :mph_test, :string

      add :mph_date, :naive_datetime

      add :mph_rsult, :string

      add :mph_cmtindx, :integer

      add :mph_op_trnbr, :integer

      add :mph_lot, :string

      add :mph_mch, :string

      add :mph_wr_nbr, :string

      add :mph_pass, :boolean

      add :mph_user1, :string

      add :mph_user2, :string

      add :mph__chr01, :string

      add :mph__chr02, :string

      add :mph__chr03, :string

      add :mph__chr04, :string

      add :mph__chr05, :string

      add :mph__dec01, :decimal

      add :mph__dec02, :decimal

      add :mph_testmthd, :string

      add :mph_attribute, :string

      add :mph_domain, :string

      add :oid_mph_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MA_MSTR") do
      add :ma_entity, :string

      add :ma_tr_type, :string

      add :ma_acct1, :string

      add :ma_cc1, :string

      add :ma_acct2, :string

      add :ma_cc2, :string

      add :ma_mr_acct1, :string

      add :ma_mr_cc1, :string

      add :ma_mr_acct2, :string

      add :ma_mr_cc2, :string

      add :ma_all_cc, :boolean

      add :ma_user1, :string

      add :ma_user2, :string

      add :ma__qadc01, :string

      add :ma_sub1, :string

      add :ma_sub2, :string

      add :ma_mr_sub1, :string

      add :ma_mr_sub2, :string

      add :ma_all_sub, :boolean

      add :ma_domain, :string

      add :oid_ma_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PEX_MSTR") do
      add :pex_product, :string

      add :pex_desc, :string

      add :pex_hwm, :integer

      add :pex_control1, :string

      add :pex_control2, :string

      add :pex_control3, :string

      add :pex_control4, :string

      add :pex_control5, :string

      add :pex_inst_date, :naive_datetime

      add :pex_user1, :string

      add :pex_user2, :string

      add :pex__qadc01, :string

      add :pex__qadi01, :integer

      add :pex__qadd01, :decimal

      add :pex__qadl01, :boolean

      add :pex__qadt01, :naive_datetime

      add :pex_control6, :string

      add :pex_inst_time, :integer

      add :pex_mod_userid, :string

      add :pex_mod_date, :naive_datetime

      add :pex_aud_days, :integer

      add :pex_aud_ddate, :naive_datetime

      add :pex_aud_date, :naive_datetime

      add :pex_aud_user, :string

      add :pex_aud_pswd, :string

      add :pex_aud_nbr, :integer

      add :oid_pex_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OP_HIST") do
      add :op_trnbr, :integer

      add :op_type, :string

      add :op_date, :naive_datetime

      add :op_emp, :string

      add :op_wo_nbr, :string

      add :op_wo_op, :integer

      add :op_act_setup, :decimal

      add :op_act_run, :decimal

      add :op_qty_wip, :decimal

      add :op_qty_comp, :decimal

      add :op_qty_rjct, :decimal

      add :op_qty_rwrk, :decimal

      add :op_sub_cost, :decimal

      add :op_wkctr, :string

      add :op_wo_lot, :string

      add :op_lbr_cost, :decimal

      add :op_rsn, :string

      add :op_rsn_rjct, :string

      add :op_rsn_rwrk, :string

      add :op_part, :string

      add :op_bdn_cost, :decimal

      add :op__qad01, :string

      add :op__qad04, :string

      add :op_project, :string

      add :op_lbr_std, :decimal

      add :op_bdn_std, :decimal

      add :op_std_run, :decimal

      add :op_std_setup, :decimal

      add :op_wo_serial, :string

      add :op_shift, :string

      add :op_sub_std, :decimal

      add :op_po_nbr, :string

      add :op_dept, :string

      add :op_earn, :string

      add :op_comment, :string

      add :op_mch, :string

      add :op_milestone, :boolean

      add :op_tran_date, :naive_datetime

      add :op_pay_calc, :boolean

      add :op_lbr_ovhd, :decimal

      add :op_act_rate, :decimal

      add :op_act_units, :decimal

      add :op_std_rate, :decimal

      add :op_std_units, :decimal

      add :op_cmtindx, :integer

      add :op_tool, :string

      add :op_pro_pct, :decimal

      add :op_user1, :string

      add :op_user2, :string

      add :op__qad05, :string

      add :op__qad06, :string

      add :op__qad07, :string

      add :op__qad08, :string

      add :op__qad02, :string

      add :op__qad03, :string

      add :op__chr01, :string

      add :op__chr02, :string

      add :op__chr03, :string

      add :op__chr04, :string

      add :op__chr05, :string

      add :op__dte01, :naive_datetime

      add :op__dte02, :naive_datetime

      add :op__dec01, :decimal

      add :op__dec02, :decimal

      add :op__log01, :boolean

      add :op_site, :string

      add :op_program, :string

      add :op_time, :integer

      add :op_userid, :string

      add :op_sa_nbr, :string

      add :op_fsm_type, :string

      add :op_line, :string

      add :op_rsn_down, :string

      add :op_from_op, :integer

      add :op_to_op, :integer

      add :op_qty_scrap, :decimal

      add :op_qty_adjust, :decimal

      add :op_rsn_adjust, :string

      add :op_fsc_code, :string

      add :op_fcg_code, :string

      add :op_eng_area, :string

      add :op_ca_int_type, :string

      add :op_price, :decimal

      add :op_covered_amt, :decimal

      add :op_curr, :string

      add :op_ex_rate, :decimal

      add :op_flbr_std, :decimal

      add :op_flvrte_accr, :decimal

      add :op_flvrte_post, :decimal

      add :op_svc_type, :string

      add :op_sv_code, :string

      add :op_itm_line, :integer

      add :op_ca_opn_date, :naive_datetime

      add :op_flbr_cstd, :decimal

      add :op_eng_code, :string

      add :op_sad_line, :integer

      add :op_ex_rate2, :decimal

      add :op_ex_ratetype, :string

      add :op_exru_seq, :integer

      add :op_wip_lotser, :string

      add :op_wip_ref, :string

      add :op_rsn_scrap, :string

      add :op_userc03, :string

      add :op_useri01, :integer

      add :op_userd01, :decimal

      add :op_userl01, :boolean

      add :op_usert01, :naive_datetime

      add :op_domain, :string

      add :oid_op_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MON_MSTR") do
      add :mon_userid, :string

      add :mon_sid, :string

      add :mon_ora_id1, :integer

      add :mon_ora_id2, :integer

      add :mon_selection, :string

      add :mon_time_start, :integer

      add :mon_login_time, :integer

      add :mon_idle_time, :integer

      add :mon_program, :string

      add :mon_user1, :string

      add :mon_user2, :string

      add :mon__qadc01, :string

      add :mon__qadi01, :integer

      add :mon__qadd01, :decimal

      add :mon__qadl01, :boolean

      add :mon__qadt01, :naive_datetime

      add :mon_prog_user, :string

      add :mon_login_date, :naive_datetime

      add :mon_interface, :string

      add :mon_product, :string

      add :mon_date_start, :naive_datetime

      add :oid_mon_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MAXT_DET") do
      add :maxt_field, :string

      add :maxt_book, :string

      add :maxt_class, :string

      add :maxt_beg_date, :naive_datetime

      add :maxt_end_date, :naive_datetime

      add :maxt_amt, :decimal

      add :maxt__qad01, :boolean

      add :maxt__qad02, :string

      add :maxt__qad03, :string

      add :maxt_user1, :string

      add :maxt_user2, :string

      add :maxt_entity, :string

      add :oid_maxt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LN_MSTR") do
      add :ln_line, :string

      add :ln_site, :string

      add :ln_desc, :string

      add :ln_user1, :string

      add :ln_user2, :string

      add :ln_rate, :decimal

      add :ln_rate_base, :boolean

      add :ln_shift1, :decimal

      add :ln_shift2, :decimal

      add :ln_shift3, :decimal

      add :ln__chr01, :string

      add :ln__chr03, :string

      add :ln__chr04, :string

      add :ln__chr05, :string

      add :ln__dec01, :decimal

      add :ln__dec02, :decimal

      add :ln__dec03, :decimal

      add :ln__log01, :boolean

      add :ln_shift4, :decimal

      add :ln_schedule_code, :string

      add :ln_rate_code, :string

      add :ln_freeze_period, :integer

      add :ln_kanban_receipts, :boolean

      add :ln_domain, :string

      add :oid_ln_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OPGL_DET") do
      add :opgl_cr_acct, :string

      add :opgl_cr_cc, :string

      add :opgl_dr_acct, :string

      add :opgl_dr_cc, :string

      add :opgl_trnbr, :integer

      add :opgl_gl_amt, :decimal

      add :opgl_gl_ref, :string

      add :opgl_type, :string

      add :opgl_cr_line, :integer

      add :opgl_dr_line, :integer

      add :opgl_cr_proj, :string

      add :opgl_dr_proj, :string

      add :opgl_user1, :string

      add :opgl_user2, :string

      add :opgl_sequence, :integer

      add :opgl__qadc01, :string

      add :opgl_dy_code, :string

      add :opgl_dy_num, :string

      add :opgl_cr_sub, :string

      add :opgl_dr_sub, :string

      add :opgl_domain, :string

      add :oid_opgl_det, :decimal

      add :opgl_eff_trans, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MNP_DET") do
      add :mnp_userid, :string

      add :mnp_sequence, :integer

      add :mnp_repeat_group, :string

      add :mnp_select, :integer

      add :mnp_menu, :string

      add :mnp_prog_type, :string

      add :mnp_exec, :string

      add :mnp_program, :string

      add :mnp_user1, :string

      add :mnp_user2, :string

      add :mnp__qadc01, :string

      add :mnp_domain, :string

      add :oid_mnp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LS_MSTR") do
      add :ls_type, :string

      add :ls_addr, :string

      add :ls_user1, :string

      add :ls_user2, :string

      add :ls__qadc01, :string

      add :ls_app_owner, :string

      add :ls__dec01, :decimal

      add :ls__dec02, :decimal

      add :ls__int01, :integer

      add :ls__int02, :integer

      add :ls__log01, :boolean

      add :ls__log02, :boolean

      add :ls__dte01, :naive_datetime

      add :ls__dte02, :naive_datetime

      add :ls__qadc02, :string

      add :ls__qadc03, :string

      add :ls__qadc04, :string

      add :ls__qadd01, :decimal

      add :ls__qadd02, :decimal

      add :ls__qadi01, :integer

      add :ls__qadi02, :integer

      add :ls__qadl01, :boolean

      add :ls__qadl02, :boolean

      add :ls__qadt01, :naive_datetime

      add :ls__qadt02, :naive_datetime

      add :ls_domain, :string

      add :oid_ls_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LNF_DET") do
      add :lnf_site, :string

      add :lnf_production_line, :string

      add :lnf_part, :string

      add :lnf_preference, :integer

      add :lnf_mod_userid, :string

      add :lnf_mod_date, :naive_datetime

      add :lnf_user1, :string

      add :lnf_user2, :string

      add :lnf_userc03, :string

      add :lnf_userd01, :decimal

      add :lnf_useri01, :integer

      add :lnf_userl01, :boolean

      add :lnf_usert01, :naive_datetime

      add :lnf__qadc01, :string

      add :lnf__qadc02, :string

      add :lnf__qadc03, :string

      add :lnf__qadd01, :decimal

      add :lnf__qadi01, :integer

      add :lnf__qadl01, :boolean

      add :lnf__qadt01, :naive_datetime

      add :lnf_domain, :string

      add :oid_lnf_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OCM_MSTR") do
      add :ocm_start_eff, :naive_datetime

      add :ocm_area, :string

      add :ocm_page, :boolean

      add :ocm_eng_code, :string

      add :ocm_end_eff, :naive_datetime

      add :ocm_user1, :string

      add :ocm_user2, :string

      add :ocm_mod_date, :naive_datetime

      add :ocm_mod_userid, :string

      add :ocm__chr01, :string

      add :ocm__dte01, :naive_datetime

      add :ocm__log01, :boolean

      add :ocm__qadc01, :string

      add :ocm__qadt01, :naive_datetime

      add :ocm__qadl01, :boolean

      add :ocm_schedule, :string

      add :ocm_domain, :string

      add :oid_ocm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MFSD_DET") do
      add :mfsd_userid, :string

      add :mfsd_eng_code, :string

      add :mfsd_eng_id, :string

      add :mfsd_site, :string

      add :mfsd_loc, :string

      add :mfsd_svc_group1, :string

      add :mfsd_svc_group2, :string

      add :mfsd_sync_auth, :boolean

      add :mfsd_call_header, :boolean

      add :mfsd_sa_pre, :string

      add :mfsd_nonexisting_user, :boolean

      add :mfsd_nonexisting_items, :boolean

      add :mfsd_prntsyscmnt, :boolean

      add :mfsd_client_doc_ids, :boolean

      add :mfsd_ca_mo_pre, :string

      add :mfsd_mod_userid, :string

      add :mfsd_mod_date, :naive_datetime

      add :mfsd_user1, :string

      add :mfsd_user2, :string

      add :mfsd__qadc01, :string

      add :mfsd__qadc02, :string

      add :mfsd_userc03, :string

      add :mfsd_userc04, :string

      add :mfsd_userc05, :string

      add :mfsd_userd01, :decimal

      add :mfsd_userd02, :decimal

      add :mfsd_userl01, :boolean

      add :mfsd_userl02, :boolean

      add :mfsd_usert01, :naive_datetime

      add :mfsd_usert02, :naive_datetime

      add :mfsd_domain, :string

      add :oid_mfsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LPMD_DET") do
      add :lpmd_product, :string

      add :lpmd_exec, :string

      add :lpmd_mod_userid, :string

      add :lpmd_mod_date, :naive_datetime

      add :lpmd__qadc01, :string

      add :lpmd__qadc02, :string

      add :lpmd__qadd01, :decimal

      add :lpmd__qadt01, :naive_datetime

      add :lpmd_access_type, :string

      add :oid_lpmd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LNA_DET") do
      add :lna_site, :string

      add :lna_line, :string

      add :lna_part, :string

      add :lna_allocation, :decimal

      add :lna__qadc01, :string

      add :lna__qadc02, :string

      add :lna__qadd01, :decimal

      add :lna__qadd02, :decimal

      add :lna__qadi01, :integer

      add :lna__qadi02, :integer

      add :lna__qadl01, :boolean

      add :lna__qadl02, :boolean

      add :lna__qadt01, :naive_datetime

      add :lna__qadt02, :naive_datetime

      add :lna_user1, :string

      add :lna_user2, :string

      add :lna__chr01, :string

      add :lna__chr02, :string

      add :lna__dec01, :decimal

      add :lna__dec02, :decimal

      add :lna__dte01, :naive_datetime

      add :lna__dte02, :naive_datetime

      add :lna__log01, :boolean

      add :lna__log02, :boolean

      add :lna_domain, :string

      add :oid_lna_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MRP_DET") do
      add :mrp_dataset, :string

      add :mrp_part, :string

      add :mrp_nbr, :string

      add :mrp_line, :string

      add :mrp_rel_date, :naive_datetime

      add :mrp_due_date, :naive_datetime

      add :mrp_qty, :decimal

      add :mrp_type, :string

      add :mrp_detail, :string

      add :mrp__qad01, :boolean

      add :mrp_site, :string

      add :mrp_user1, :string

      add :mrp_user2, :string

      add :mrp_line2, :string

      add :mrp_ord_site, :string

      add :mrp_keyid, :integer

      add :mrp_domain, :string

      add :oid_mrp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MNT_DET") do
      add :mnt_nbr, :string

      add :mnt_select, :integer

      add :mnt_lang, :string

      add :mnt_label, :string

      add :mnt_user1, :string

      add :mnt_user2, :string

      add :mnt__qadc01, :string

      add :oid_mnt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LNGD_DET") do
      add :lngd_dataset, :string

      add :lngd_key1, :string

      add :lngd_key2, :string

      add :lngd_key3, :string

      add :lngd_key4, :string

      add :lngd_field, :string

      add :lngd_lang, :string

      add :lngd_translation, :string

      add :lngd_user1, :string

      add :lngd_user2, :string

      add :lngd_desc, :string

      add :lngd_mnemonic, :string

      add :lngd_translate2, :string

      add :lngd__qadc01, :string

      add :oid_lngd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LAD_DET") do
      add :lad_dataset, :string

      add :lad_nbr, :string

      add :lad_line, :string

      add :lad_site, :string

      add :lad_loc, :string

      add :lad_part, :string

      add :lad_lot, :string

      add :lad_qty_all, :decimal

      add :lad_qty_pick, :decimal

      add :lad_qty_chg, :decimal

      add :lad_user1, :string

      add :lad_user2, :string

      add :lad_ref, :string

      add :lad_ord_site, :string

      add :lad__qadc01, :string

      add :lad_domain, :string

      add :oid_lad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ITS_MSTR") do
      add :its_part, :string

      add :its_site, :string

      add :its_date, :naive_datetime

      add :its_target, :integer

      add :its_qty_oh, :decimal

      add :its_user1, :string

      add :its_user2, :string

      add :its__dec01, :decimal

      add :its__dec02, :decimal

      add :its__dec03, :decimal

      add :its_domain, :string

      add :oid_its_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MFC_CTRL") do
      add :mfc_module, :string

      add :mfc_seq, :integer

      add :mfc_field, :string

      add :mfc_label, :string

      add :mfc_desc, :string

      add :mfc_type, :string

      add :mfc_integer, :integer

      add :mfc_char, :string

      add :mfc_decimal, :decimal

      add :mfc_logical, :boolean

      add :mfc_date, :naive_datetime

      add :mfc_user1, :string

      add :mfc_user2, :string

      add :mfc__qadc01, :string

      add :mfc_domain, :string

      add :oid_mfc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LGSI_DET") do
      add :lgsi_app_id, :string

      add :lgsi_site, :string

      add :lgsi_mod_date, :naive_datetime

      add :lgsi_mod_userid, :string

      add :lgsi_user1, :string

      add :lgsi_user2, :string

      add :lgsi__dec01, :decimal

      add :lgsi__dec02, :decimal

      add :lgsi__int01, :integer

      add :lgsi__int02, :integer

      add :lgsi__log01, :boolean

      add :lgsi__log02, :boolean

      add :lgsi__dte01, :naive_datetime

      add :lgsi__dte02, :naive_datetime

      add :lgsi__qadc01, :string

      add :lgsi__qadc02, :string

      add :lgsi__qadc03, :string

      add :lgsi__qadc04, :string

      add :lgsi__qadd01, :decimal

      add :lgsi__qadd02, :decimal

      add :lgsi__qadi01, :integer

      add :lgsi__qadi02, :integer

      add :lgsi__qadl01, :boolean

      add :lgsi__qadl02, :boolean

      add :lgsi__qadt01, :naive_datetime

      add :lgsi__qadt02, :naive_datetime

      add :lgsi_domain, :string

      add :oid_lgsi_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNB_MSTR") do
      add :knb_keyid, :decimal

      add :knb_knbi_keyid, :decimal

      add :knb_knbs_keyid, :decimal

      add :knb_knbsm_keyid, :decimal

      add :knb_loop_type, :string

      add :knb_mod_date, :naive_datetime

      add :knb_mod_userid, :string

      add :knb_user1, :string

      add :knb_user2, :string

      add :knb__qadc01, :string

      add :knb__qadc02, :string

      add :knb_domain, :string

      add :oid_knb_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBCD_DET") do
      add :knbcd_dispatch_id, :string

      add :knbcd_part, :string

      add :knbcd_knbd_id, :integer

      add :knbcd_closed, :boolean

      add :knbcd_due_date, :naive_datetime

      add :knbcd_due_time, :integer

      add :knbcd_delivery_date, :naive_datetime

      add :knbcd_delivery_time, :integer

      add :knbcd_process_edi, :boolean

      add :knbcd_ship_date, :naive_datetime

      add :knbcd_ship_time, :integer

      add :knbcd_fill_date, :naive_datetime

      add :knbcd_fill_time, :integer

      add :knbcd_kbtr_trans_nbr, :integer

      add :knbcd_source_type, :string

      add :knbcd_ref1, :string

      add :knbcd_ref2, :string

      add :knbcd_ref3, :string

      add :knbcd_ref4, :string

      add :knbcd_ref5, :string

      add :knbcd_po_nbr, :string

      add :knbcd_pod_line, :integer

      add :knbcd_pod_blanket, :string

      add :knbcd_pod_blnkt_ln, :integer

      add :knbcd_mfd_seq, :integer

      add :knbcd_source_fax, :string

      add :knbcd_source_fax2, :string

      add :knbcd_source_email, :string

      add :knbcd_mod_userid, :string

      add :knbcd_mod_date, :naive_datetime

      add :knbcd_user1, :string

      add :knbcd_user2, :string

      add :knbcd__qadc01, :string

      add :knbcd__qadc02, :string

      add :knbcd__qadc03, :string

      add :knbcd__qadc04, :string

      add :knbcd__qadl01, :boolean

      add :knbcd__qadl02, :boolean

      add :knbcd_domain, :string

      add :oid_knbcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LC_MSTR") do
      add :lc_charge, :string

      add :lc_desc, :string

      add :lc_element, :string

      add :lc_taxable, :boolean

      add :lc_taxc, :string

      add :lc_apportion_method, :string

      add :lc_close_accruals, :boolean

      add :lc_supplier, :string

      add :lc_mod_userid, :string

      add :lc_mod_date, :naive_datetime

      add :lc_user1, :string

      add :lc_user2, :string

      add :lc__qadc01, :string

      add :lc__qadc02, :string

      add :lc_domain, :string

      add :oid_lc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBSM_MSTR") do
      add :knbsm_site, :string

      add :knbsm_supermarket_id, :string

      add :knbsm_desc, :string

      add :knbsm_keyid, :decimal

      add :knbsm_inv_loc, :string

      add :knbsm_inv_loc_type, :string

      add :knbsm_dest_fax, :string

      add :knbsm_dest_fax2, :string

      add :knbsm_dest_email, :string

      add :knbsm_mod_date, :naive_datetime

      add :knbsm_mod_userid, :string

      add :knbsm_user1, :string

      add :knbsm_user2, :string

      add :knbsm__qadc01, :string

      add :knbsm__qadc02, :string

      add :knbsm_domain, :string

      add :knbsm_cmtindx, :integer

      add :oid_knbsm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBTR_HIST") do
      add :kbtr_trans_nbr, :integer

      add :kbtr_trans_date, :naive_datetime

      add :kbtr_trans_time, :integer

      add :kbtr_eff_date, :naive_datetime

      add :kbtr_id, :integer

      add :kbtr_part, :string

      add :kbtr_supp_source, :string

      add :kbtr_supp_ref, :string

      add :kbtr_cons_source, :string

      add :kbtr_cons_ref, :string

      add :kbtr_mode, :string

      add :kbtr_trans_type, :string

      add :kbtr_trans_qty, :decimal

      add :kbtr_kanban_quantity, :decimal

      add :kbtr_pattern, :string

      add :kbtr_demand_hr, :decimal

      add :kbtr_rep_time, :decimal

      add :kbtr_cont_size, :decimal

      add :kbtr_cont_type, :string

      add :kbtr_loop, :boolean

      add :kbtr_calc_mode, :boolean

      add :kbtr_cards, :integer

      add :kbtr_card_type, :string

      add :kbtr_safety_stock, :decimal

      add :kbtr_var_factor, :decimal

      add :kbtr_card_nbr, :integer

      add :kbtr_calc_date, :naive_datetime

      add :kbtr_print_date, :naive_datetime

      add :kbtr_print_time, :integer

      add :kbtr_backflush, :boolean

      add :kbtr_vend, :string

      add :kbtr_po_nbr, :string

      add :kbtr_type, :string

      add :kbtr_batch_size, :decimal

      add :kbtr_production_line, :string

      add :kbtr_impact_inventory, :boolean

      add :kbtr_max_cycle_time, :integer

      add :kbtr_min_cycle_check, :string

      add :kbtr_min_cycle_time, :integer

      add :kbtr_disp_list_date, :naive_datetime

      add :kbtr_mod_userid, :string

      add :kbtr_mod_date, :naive_datetime

      add :kbtr_user1, :string

      add :kbtr_user2, :string

      add :kbtr_userd01, :decimal

      add :kbtr_useri01, :integer

      add :kbtr_userl01, :boolean

      add :kbtr_usert01, :naive_datetime

      add :kbtr__qadc01, :string

      add :kbtr__qadc02, :string

      add :kbtr__qadc03, :string

      add :kbtr__qadd01, :decimal

      add :kbtr__qadi01, :integer

      add :kbtr__qadl01, :boolean

      add :kbtr__qadt01, :naive_datetime

      add :kbtr_lot_size, :decimal

      add :kbtr_pou_site, :string

      add :kbtr_pou_ref, :string

      add :kbtr_transaction_event, :string

      add :kbtr_daily_demand, :decimal

      add :kbtr_lead_time, :decimal

      add :kbtr_number_of_cards, :integer

      add :kbtr_type_user_ref, :string

      add :kbtr_order_qty, :decimal

      add :kbtr_step, :integer

      add :kbtr_source_type, :string

      add :kbtr_source_ref1, :string

      add :kbtr_source_ref2, :string

      add :kbtr_source_ref3, :string

      add :kbtr_source_ref4, :string

      add :kbtr_source_ref5, :string

      add :kbtr_supermarket_id, :string

      add :kbtr_supermarket_site, :string

      add :kbtr_loop_type, :string

      add :kbtr_source_app, :string

      add :kbtr_curr_process_id, :string

      add :kbtr_domain, :string

      add :oid_kbtr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ITM_DET") do
      add :itm_nbr, :string

      add :itm_prefix, :string

      add :itm_part, :string

      add :itm_rev, :string

      add :itm_cmtindx, :integer

      add :itm_serial, :string

      add :itm_ref, :integer

      add :itm_user1, :string

      add :itm_user2, :string

      add :itm__qadc06, :string

      add :itm__qadc05, :string

      add :itm_bill_detail, :boolean

      add :itm_bom_code, :string

      add :itm_bom_gen, :boolean

      add :itm_ca_int_type, :string

      add :itm_comp_date, :naive_datetime

      add :itm_desc, :string

      add :itm_eng_code, :string

      add :itm_line, :integer

      add :itm_nxt_act, :string

      add :itm_nxt_date, :naive_datetime

      add :itm_nxt_time, :string

      add :itm_qty_call, :decimal

      add :itm_qty_rc_rec, :decimal

      add :itm_qty_rc_ship, :decimal

      add :itm_qty_rec, :decimal

      add :itm_qty_ship, :decimal

      add :itm_rec_date, :naive_datetime

      add :itm_route, :string

      add :itm_route_gen, :boolean

      add :itm_sad_line, :integer

      add :itm_sa_nbr, :string

      add :itm_ship_date, :naive_datetime

      add :itm_status, :string

      add :itm_svc_type, :string

      add :itm_sv_code, :string

      add :itm_taxable, :boolean

      add :itm_taxc, :string

      add :itm_tax_usage, :string

      add :itm_type, :string

      add :itm__chr01, :string

      add :itm__chr02, :string

      add :itm__chr03, :string

      add :itm__chr04, :string

      add :itm__dec01, :decimal

      add :itm__dec02, :decimal

      add :itm__dec03, :decimal

      add :itm__dte01, :naive_datetime

      add :itm__dte02, :naive_datetime

      add :itm__dte03, :naive_datetime

      add :itm__log01, :boolean

      add :itm__log02, :boolean

      add :itm__log03, :boolean

      add :itm__qadc01, :string

      add :itm__qadc02, :string

      add :itm__qadc03, :string

      add :itm__qadc04, :string

      add :itm__qadd01, :naive_datetime

      add :itm__qadd02, :naive_datetime

      add :itm__qadd03, :naive_datetime

      add :itm__qadde01, :decimal

      add :itm__qadde02, :decimal

      add :itm__qadde03, :decimal

      add :itm__qadl01, :boolean

      add :itm__qadl02, :boolean

      add :itm__qadl03, :boolean

      add :itm_unprocessed, :boolean

      add :itm_invoiced, :boolean

      add :itm_uninvoiced, :boolean

      add :itm_exp_rec, :naive_datetime

      add :itm_due_date, :naive_datetime

      add :itm_warr_sv, :string

      add :itm_sa_sv, :string

      add :itm_itm_line, :integer

      add :itm_stdown_date, :naive_datetime

      add :itm_endown_date, :naive_datetime

      add :itm_endown_time, :string

      add :itm_stdown_time, :string

      add :itm_stjob_date, :naive_datetime

      add :itm_stjob_time, :string

      add :itm_recorded, :boolean

      add :itm_qty_chg, :decimal

      add :itm_tag, :string

      add :itm_rrc_nbr, :string

      add :itm_rrc_seq, :integer

      add :itm_sep_doc, :boolean

      add :itm_site, :string

      add :itm_loc, :string

      add :itm_fix_pr, :boolean

      add :itm_fixed_price, :decimal

      add :itm_upd_isb, :boolean

      add :itm_mod_userid, :string

      add :itm_mod_date, :naive_datetime

      add :itm_tax_env, :string

      add :itm_tax_in, :boolean

      add :itm_pr_list, :string

      add :itm_est_time, :string

      add :itm_prod_line, :string

      add :itm_override_lmt, :boolean

      add :itm_eu_nbr, :string

      add :itm_pst, :boolean

      add :itm_acct, :string

      add :itm_sub, :string

      add :itm_cc, :string

      add :itm_project, :string

      add :itm_dsc_acct, :string

      add :itm_dsc_sub, :string

      add :itm_dsc_cc, :string

      add :itm_dsc_project, :string

      add :itm_domain, :string

      add :oid_itm_det, :decimal

      add :itm_est_cost, :decimal

      add :itm_alternate, :string

      add :itm_replace_line, :integer

      add :itm_repair_type, :string

      add :itm_sod_nbr, :string

      add :itm_sod_line, :integer

      add :itm_model, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ILG_HIST") do
      add :ilg_access_code, :string

      add :ilg_src_comp, :string

      add :ilg_app_id, :string

      add :ilg_src_task, :string

      add :ilg_app_ver, :string

      add :ilg_archive_id, :string

      add :ilg_ctrl_tot_1, :integer

      add :ilg_ctrl_tot_2, :decimal

      add :ilg_ctrl_tot_3, :decimal

      add :ilg_date_ack, :naive_datetime

      add :ilg_date_map, :naive_datetime

      add :ilg_date_proc, :naive_datetime

      add :ilg_date_rcvd, :naive_datetime

      add :ilg_dest_app_ver, :string

      add :ilg_dest_app_id, :string

      add :ilg_dest_doc_rev, :string

      add :ilg_dest_doc_std, :string

      add :ilg_dest_doc_typ, :string

      add :ilg_dest_proc, :string

      add :ilg_doc_id, :integer

      add :ilg_doc_lng, :string

      add :ilg_doc_rev, :string

      add :ilg_doc_std, :string

      add :ilg_doc_typ, :string

      add :ilg_email_userid, :string

      add :ilg_email_notlvl, :string

      add :ilg_map_log_file, :string

      add :ilg_err_stat, :string

      add :ilg_ext_doc_key, :string

      add :ilg_mfgpro_site, :string

      add :ilg_mfgpro_key, :string

      add :ilg_grp_id, :integer

      add :ilg_map_spec, :string

      add :ilg_mod_date, :naive_datetime

      add :ilg_mod_userid, :string

      add :ilg_orig_doc_id, :integer

      add :ilg_ack_lvl_reqd, :string

      add :ilg_ack_sent, :boolean

      add :ilg_prcg_stage, :string

      add :ilg_sess_id, :integer

      add :ilg_src_proc, :string

      add :ilg_src_userid, :string

      add :ilg_doc_sufx, :integer

      add :ilg_time_ack, :string

      add :ilg_time_map, :string

      add :ilg_time_proc, :string

      add :ilg_time_rcvd, :string

      add :ilg_tradptr_id, :string

      add :ilg_unit_wrk_typ, :string

      add :ilg_map_doc_now, :boolean

      add :ilg_use_im_queue, :boolean

      add :ilg_code_pg, :string

      add :ilg_date_form, :string

      add :ilg_num_form, :string

      add :ilg_user1, :string

      add :ilg_user2, :string

      add :ilg__dec01, :decimal

      add :ilg__dec02, :decimal

      add :ilg__int01, :integer

      add :ilg__int02, :integer

      add :ilg__log01, :boolean

      add :ilg__log02, :boolean

      add :ilg__dte01, :naive_datetime

      add :ilg__dte02, :naive_datetime

      add :ilg__qadc01, :string

      add :ilg__qadc02, :string

      add :ilg__qadc03, :string

      add :ilg__qadc04, :string

      add :ilg__qadd01, :decimal

      add :ilg__qadd02, :decimal

      add :ilg__qadi01, :integer

      add :ilg__qadi02, :integer

      add :ilg__qadl01, :boolean

      add :ilg__qadl02, :boolean

      add :ilg__qadt01, :naive_datetime

      add :ilg__qadt02, :naive_datetime

      add :ilg_grp_seq, :integer

      add :ilg_date_create, :naive_datetime

      add :ilg_time_create, :string

      add :ilg_timezone, :string

      add :ilg_mapper_proc, :string

      add :ilg_dest_mthd, :string

      add :ilg_process_typ, :string

      add :ilg_domain, :string

      add :oid_ilg_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IDH_HIST") do
      add :idh_nbr, :string

      add :idh_due_date, :naive_datetime

      add :idh_per_date, :naive_datetime

      add :idh_req_date, :naive_datetime

      add :idh_line, :integer

      add :idh_part, :string

      add :idh_qty_ord, :decimal

      add :idh_qty_all, :decimal

      add :idh_qty_pick, :decimal

      add :idh_qty_ship, :decimal

      add :idh_qty_inv, :decimal

      add :idh_loc, :string

      add :idh_type, :string

      add :idh_price, :decimal

      add :idh_std_cost, :decimal

      add :idh_qty_chg, :decimal

      add :idh_bo_chg, :decimal

      add :idh_acct, :string

      add :idh_abnormal, :boolean

      add :idh_taxable, :boolean

      add :idh_serial, :string

      add :idh_desc, :string

      add :idh_um, :string

      add :idh_cc, :string

      add :idh_comment, :string

      add :idh_lot, :string

      add :idh_um_conv, :decimal

      add :idh_fa_nbr, :string

      add :idh_disc_pct, :decimal

      add :idh_project, :string

      add :idh_cmtindx, :integer

      add :idh_custpart, :string

      add :idh__qad01, :integer

      add :idh_status, :string

      add :idh_xslspsn, :string

      add :idh_xcomm_pct, :decimal

      add :idh_dsc_acct, :string

      add :idh_dsc_cc, :string

      add :idh_list_pr, :decimal

      add :idh_user1, :string

      add :idh_user2, :string

      add :idh_sob_rev, :naive_datetime

      add :idh_sob_std, :boolean

      add :idh_qty_qote, :decimal

      add :idh_consume, :boolean

      add :idh_expire, :naive_datetime

      add :idh__qad02, :boolean

      add :idh_taxc, :string

      add :idh_inv_nbr, :string

      add :idh_site, :string

      add :idh_prodline, :string

      add :idh__chr01, :string

      add :idh__chr02, :string

      add :idh__chr03, :string

      add :idh__chr04, :string

      add :idh__chr05, :string

      add :idh__chr06, :string

      add :idh__chr07, :string

      add :idh__chr08, :string

      add :idh__chr09, :string

      add :idh__chr10, :string

      add :idh__dte01, :naive_datetime

      add :idh__dte02, :naive_datetime

      add :idh__dec01, :decimal

      add :idh__dec02, :decimal

      add :idh__log01, :boolean

      add :idh__dte03, :naive_datetime

      add :idh__dec03, :decimal

      add :idh__dec04, :decimal

      add :idh__dec05, :decimal

      add :idh_tax_max, :decimal

      add :idh_tax_in, :boolean

      add :idh_pst, :boolean

      add :idh_fr_rate, :decimal

      add :idh_calc_isb, :boolean

      add :idh_owner, :string

      add :idh_rma_type, :string

      add :idh_qty_item, :decimal

      add :idh_qty_per, :decimal

      add :idh_ref, :integer

      add :idh_for, :string

      add :idh_slspsn, :string

      add :idh_comm_pct, :decimal

      add :idh_retro_price, :decimal

      add :idh_contr_id, :string

      add :idh_fst_list, :boolean

      add :idh_cum_date, :naive_datetime

      add :idh_cum_qty, :decimal

      add :idh_curr_rlse_id, :string

      add :idh_ord_mult, :decimal

      add :idh_pkg_code, :string

      add :idh_rlse_nbr, :integer

      add :idh_sch_data, :string

      add :idh_sch_mrp, :boolean

      add :idh_sched, :boolean

      add :idh_trans_lt, :decimal

      add :idh_fsm_type, :string

      add :idh_sa_nbr, :string

      add :idh_fix_pr, :boolean

      add :idh_fr_wt, :decimal

      add :idh_fr_wt_um, :string

      add :idh_fr_class, :string

      add :idh_fr_chg, :decimal

      add :idh_tax_usage, :string

      add :idh_tax_env, :string

      add :idh_fr_list, :string

      add :idh_crt_int, :decimal

      add :idh_act_price, :decimal

      add :idh_auto_ins, :boolean

      add :idh_covered_amt, :decimal

      add :idh_override_lmt, :boolean

      add :idh_enduser, :string

      add :idh_isb_loc, :string

      add :idh_isb_ref, :integer

      add :idh_ship, :string

      add :idh_fixed_price, :decimal

      add :idh_inv_cost, :decimal

      add :idh_partial, :boolean

      add :idh_pickdate, :naive_datetime

      add :idh_conrep, :string

      add :idh_start_eff, :naive_datetime

      add :idh_end_eff, :naive_datetime

      add :idh_out_po, :string

      add :idh_translt_hrs, :decimal

      add :idh_pr_list, :string

      add :idh_dock, :string

      add :idh_raw_days, :integer

      add :idh_fab_days, :integer

      add :idh_rbkt_days, :integer

      add :idh_rbkt_weeks, :integer

      add :idh_rbkt_mths, :integer

      add :idh_sched_chgd, :boolean

      add :idh_pastdue, :string

      add :idh_drp_ref, :string

      add :idh_upd_isb, :boolean

      add :idh_ca_nbr, :string

      add :idh_car_load, :boolean

      add :idh_ca_line, :integer

      add :idh_qty_cons, :decimal

      add :idh_qty_ret, :decimal

      add :idh_qty_pend, :decimal

      add :idh_to_loc, :string

      add :idh_to_site, :string

      add :idh_ln_ref, :string

      add :idh_to_ref, :string

      add :idh_qty_exch, :decimal

      add :idh_warr_start, :naive_datetime

      add :idh_sad_line, :integer

      add :idh_mod_userid, :string

      add :idh_mod_date, :naive_datetime

      add :idh_pricing_dt, :naive_datetime

      add :idh_sv_code, :string

      add :idh_for_serial, :string

      add :idh__qadc01, :string

      add :idh__qadc02, :string

      add :idh__qadc03, :string

      add :idh__qadc04, :string

      add :idh__qadc05, :string

      add :idh__qadc06, :string

      add :idh__qadi01, :integer

      add :idh__qadi02, :integer

      add :idh__qadi03, :integer

      add :idh__qadi04, :integer

      add :idh__qadd01, :decimal

      add :idh__qadd02, :decimal

      add :idh__qadd03, :decimal

      add :idh__qadd04, :decimal

      add :idh__qadd05, :decimal

      add :idh__qadl01, :boolean

      add :idh__qadl02, :boolean

      add :idh__qadl03, :boolean

      add :idh__qadl04, :boolean

      add :idh__qadl05, :boolean

      add :idh__qadt01, :naive_datetime

      add :idh__qadt02, :naive_datetime

      add :idh__qadt03, :naive_datetime

      add :idh__qadt04, :naive_datetime

      add :idh__qadt05, :naive_datetime

      add :idh_bonus, :boolean

      add :idh_btb_type, :string

      add :idh_btb_po, :string

      add :idh_btb_pod_line, :integer

      add :idh_btb_vend, :string

      add :idh_exp_del, :naive_datetime

      add :idh_cfg_type, :string

      add :idh_div, :string

      add :idh_pl_priority, :integer

      add :idh_prig1, :string

      add :idh_prig2, :string

      add :idh_sub, :string

      add :idh_dsc_project, :string

      add :idh_dsc_sub, :string

      add :idh_promise_date, :naive_datetime

      add :idh_modelyr, :string

      add :idh_custref, :string

      add :idh_domain, :string

      add :oid_idh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRX_MSTR") do
      add :grx_report, :string

      add :grx_desc, :string

      add :grx_add_id, :string

      add :grx_add_date, :naive_datetime

      add :grx_mod_id, :string

      add :grx_mod_date, :naive_datetime

      add :grx_status, :boolean

      add :grx_cmtindx, :integer

      add :grx_row_group, :string

      add :grx_col_group, :string

      add :grx_round, :string

      add :grx_format, :string

      add :grx_user1, :string

      add :grx_user2, :string

      add :grx_lab_bc, :integer

      add :grx_rp_group, :string

      add :grx_mt_group, :string

      add :grx_ctl_gl, :string

      add :grx_ctl_ac, :string

      add :grx_cont_pg, :boolean

      add :grx_text_ix, :integer

      add :grx_defprt, :string

      add :grx_mrg_top, :integer

      add :grx_mrg_bot, :integer

      add :grx_mrg_left, :integer

      add :grx_mrg_right, :integer

      add :grx_zero_suppress, :string

      add :grx__qadc01, :string

      add :grx_domain, :string

      add :oid_grx_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRIT_WKF") do
      add :grit_runid, :string

      add :grit_gl_code, :string

      add :grit_desc, :string

      add :grit_marker, :string

      add :grit_gl_type, :string

      add :grit_an_code, :string

      add :grit_user1, :string

      add :grit_user2, :string

      add :grit__qadc01, :string

      add :grit_domain, :string

      add :oid_grit_wkf, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LACD_DET") do
      add :lacd_internal_ref_type, :string

      add :lacd_internal_ref, :string

      add :lacd_shipfrom, :string

      add :lacd_lc_charge, :string

      add :lacd_log_supplier, :string

      add :lacd_element, :string

      add :lacd_accrual_level, :string

      add :lacd_mod_userid, :string

      add :lacd_mod_date, :naive_datetime

      add :lacd_user1, :string

      add :lacd_user2, :string

      add :lacd__qadc01, :string

      add :lacd__qadc02, :string

      add :lacd_domain, :string

      add :oid_lacd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBDT_MSTR") do
      add :kbdt_template, :string

      add :kbdt_desc, :string

      add :kbdt_history_source, :string

      add :kbdt_history_days, :integer

      add :kbdt_future_source, :string

      add :kbdt_future_days, :integer

      add :kbdt_mod_date, :naive_datetime

      add :kbdt_mod_userid, :string

      add :kbdt_user1, :string

      add :kbdt_user2, :string

      add :kbdt__qadc01, :string

      add :kbdt__qadc02, :string

      add :kbdt_domain, :string

      add :oid_kbdt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ISP_MSTR") do
      add :isp_access_code, :string

      add :isp_src_comp, :string

      add :isp_app_id, :string

      add :isp_src_task, :string

      add :isp_app_ver, :string

      add :isp_del_err_det, :string

      add :isp_dest_app_id, :string

      add :isp_dest_app_ver, :string

      add :isp_dest_doc_rev, :string

      add :isp_dest_doc_std, :string

      add :isp_dest_doc_typ, :string

      add :isp_dest_proc, :string

      add :isp_cim_proc, :boolean

      add :isp_doc_lng, :string

      add :isp_doc_rev, :string

      add :isp_doc_std, :string

      add :isp_doc_typ, :string

      add :isp_email_userid, :string

      add :isp_email_notlvl, :string

      add :isp_im_map_flg, :boolean

      add :isp_proc_flg, :boolean

      add :isp_rcv_flg, :boolean

      add :isp_desc, :string

      add :isp_mapper_proc, :string

      add :isp_map_spec, :string

      add :isp_mod_date, :naive_datetime

      add :isp_mod_userid, :string

      add :isp_pause_sev, :integer

      add :isp_ack_doc_rev, :string

      add :isp_ack_doc_std, :string

      add :isp_ack_doc_typ, :string

      add :isp_ack_lvl_reqd, :string

      add :isp_src_proc, :string

      add :isp_src_userid, :string

      add :isp_tradptr_id, :string

      add :isp_use_im_queue, :boolean

      add :isp_code_pg, :string

      add :isp_date_form, :string

      add :isp_num_form, :string

      add :isp_user1, :string

      add :isp_user2, :string

      add :isp__dec01, :decimal

      add :isp__dec02, :decimal

      add :isp__int01, :integer

      add :isp__int02, :integer

      add :isp__log01, :boolean

      add :isp__log02, :boolean

      add :isp__dte01, :naive_datetime

      add :isp__dte02, :naive_datetime

      add :isp__qadc01, :string

      add :isp__qadc02, :string

      add :isp__qadc03, :string

      add :isp__qadc04, :string

      add :isp__qadd01, :decimal

      add :isp__qadd02, :decimal

      add :isp__qadi01, :integer

      add :isp__qadi02, :integer

      add :isp__qadl01, :boolean

      add :isp__qadl02, :boolean

      add :isp__qadt01, :naive_datetime

      add :isp__qadt02, :naive_datetime

      add :isp_map_parm, :string

      add :isp_map_parm_val, :string

      add :isp_delim, :integer

      add :isp_dest_mthd, :string

      add :isp_process_typ, :string

      add :isp_xml, :string

      add :isp_domain, :string

      add :oid_isp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_INSD_DET") do
      add :insd_sched_date, :naive_datetime

      add :insd_pjs_line, :integer

      add :insd_prj_nbr, :string

      add :insd_sub_nbr, :integer

      add :insd_sched_nbr, :string

      add :insd_qty_inv, :decimal

      add :insd_price, :decimal

      add :insd_list_pr, :decimal

      add :insd_mod_date, :naive_datetime

      add :insd_mod_userid, :string

      add :insd_user1, :string

      add :insd_user2, :string

      add :insd__qadc01, :string

      add :insd__qadd01, :decimal

      add :insd__qadi01, :integer

      add :insd__qadl01, :boolean

      add :insd__qadt01, :naive_datetime

      add :insd_domain, :string

      add :oid_insd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNPD_DET") do
      add :knpd_keyid, :decimal

      add :knpd_knp_keyid, :decimal

      add :knpd_knbi_keyid, :decimal

      add :knpd_epe_interval, :decimal

      add :knpd_epei_auto_calc, :boolean

      add :knpd_mix_pct, :decimal

      add :knpd_yield_pct, :decimal

      add :knpd_cycle_time, :decimal

      add :knpd_equip_time, :decimal

      add :knpd_lead_time, :decimal

      add :knpd_setup_time, :decimal

      add :knpd_move_time, :decimal

      add :knpd_work_content, :decimal

      add :knpd_req_operators, :decimal

      add :knpd_op_start, :integer

      add :knpd_op_end, :integer

      add :knpd_mfg_seq, :integer

      add :knpd_mod_date, :naive_datetime

      add :knpd_mod_userid, :string

      add :knpd_user1, :string

      add :knpd_user2, :string

      add :knpd__qadc01, :string

      add :knpd__qadc02, :string

      add :knpd_domain, :string

      add :knpd_min_epe_interval, :decimal

      add :oid_knpd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBDD_MSTR") do
      add :knbdd_document_type, :string

      add :knbdd_document_name, :string

      add :knbdd_label_type, :string

      add :knbdd_supplier, :boolean

      add :knbdd_supplier_desc, :boolean

      add :knbdd_po_nbr, :boolean

      add :knbdd_po_line, :boolean

      add :knbdd_process_site, :boolean

      add :knbdd_prcs_site_desc, :boolean

      add :knbdd_process_id, :boolean

      add :knbdd_process_desc, :boolean

      add :knbdd_inv_site, :boolean

      add :knbdd_inv_site_desc, :boolean

      add :knbdd_source_sm_id, :boolean

      add :knbdd_kanban_id, :boolean

      add :knbdd_part, :boolean

      add :knbdd_pt_desc1, :boolean

      add :knbdd_pt_desc2, :boolean

      add :knbdd_pt_rev, :boolean

      add :knbdd_pt_um, :boolean

      add :knbdd_routing, :boolean

      add :knbdd_bom_code, :boolean

      add :knbdd_kanban_quantity, :boolean

      add :knbdd_cont_size, :boolean

      add :knbdd_cont_type, :boolean

      add :knbdd_second_card_id, :boolean

      add :knbdd_sm_inv_location, :boolean

      add :knbdd_del_loc, :boolean

      add :knbdd_pou_loc, :boolean

      add :knbdd_card_type, :boolean

      add :knbdd_card_type_desc, :boolean

      add :knbdd_accum_type, :boolean

      add :knbdd_accum_type_desc, :boolean

      add :knbdd_cycles_allowed, :boolean

      add :knbdd_active_start, :boolean

      add :knbdd_active_end, :boolean

      add :knbdd_print_date, :boolean

      add :knbdd_print_time, :boolean

      add :knbdd_card_cmmt_page, :integer

      add :knbdd_document_size, :string

      add :knbdd_card_stock, :string

      add :knbdd_document_color, :string

      add :knbdd_text_font, :string

      add :knbdd_font_style, :string

      add :knbdd_font_size, :string

      add :knbdd_text_color, :string

      add :knbdd_sm_site, :boolean

      add :knbdd_sm_site_desc, :boolean

      add :knbdd_document_desc, :string

      add :knbdd_dest_sm_id, :boolean

      add :knbdd_source_sm_desc, :boolean

      add :knbdd_dest_sm_desc, :boolean

      add :knbdd_mod_date, :naive_datetime

      add :knbdd_mod_userid, :string

      add :knbdd_step, :boolean

      add :knbdd_user1, :string

      add :knbdd_user2, :string

      add :knbdd__qadc01, :string

      add :knbdd__qadc02, :string

      add :knbdd_user3, :string

      add :knbdd__qadc03, :string

      add :knbdd__qadc04, :string

      add :knbdd__qadl01, :boolean

      add :knbdd__qadl02, :boolean

      add :knbdd__qadd01, :decimal

      add :knbdd__qadl03, :boolean

      add :knbdd__qadi01, :integer

      add :knbdd__qadt01, :naive_datetime

      add :knbdd_domain, :string

      add :oid_knbdd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IVS_CTRL") do
      add :ivs_index1, :integer

      add :ivs_cmmts, :boolean

      add :ivs_so_pre, :string

      add :ivs_so_nbr, :integer

      add :ivs_ar_acct, :string

      add :ivs_ar_sub, :string

      add :ivs_ar_cc, :string

      add :ivs_prep_acct, :string

      add :ivs_prep_sub, :string

      add :ivs_prep_cc, :string

      add :ivs_ptax_acct, :string

      add :ivs_ptax_sub, :string

      add :ivs_ptax_cc, :string

      add :ivs_inv_type, :string

      add :ivs_mod_date, :naive_datetime

      add :ivs_mod_userid, :string

      add :ivs_user1, :string

      add :ivs_user2, :string

      add :ivs__qadc01, :string

      add :ivs__qadd01, :decimal

      add :ivs__qadi01, :integer

      add :ivs__qadl01, :boolean

      add :ivs__qadt01, :naive_datetime

      add :ivs_domain, :string

      add :oid_ivs_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ISB_MSTR") do
      add :isb_part, :string

      add :isb_serial, :string

      add :isb_seq, :integer

      add :isb__qadi03, :integer

      add :isb_warr_dur, :integer

      add :isb_eu_nbr, :string

      add :isb_status, :string

      add :isb__qadc04, :string

      add :isb__qadi04, :integer

      add :isb_rev, :string

      add :isb_ins_date, :naive_datetime

      add :isb_last_pm, :naive_datetime

      add :isb_pm_days, :integer

      add :isb_so_nbr, :string

      add :isb_desc1, :string

      add :isb_desc2, :string

      add :isb_ref, :integer

      add :isb_warr_cd, :string

      add :isb_comp, :boolean

      add :isb_parent, :boolean

      add :isb_warr_exp, :naive_datetime

      add :isb_next_pm, :naive_datetime

      add :isb_so_line, :integer

      add :isb_inv_nbr, :string

      add :isb_owner, :string

      add :isb_tarrif, :string

      add :isb_origin, :string

      add :isb_sys_type, :string

      add :isb__chr01, :string

      add :isb__chr02, :string

      add :isb__chr03, :string

      add :isb__chr04, :string

      add :isb__chr05, :string

      add :isb__chr06, :string

      add :isb__chr07, :string

      add :isb__chr08, :string

      add :isb__chr09, :string

      add :isb__chr10, :string

      add :isb__dec01, :decimal

      add :isb__dec02, :decimal

      add :isb__dec03, :decimal

      add :isb__dte01, :naive_datetime

      add :isb__dte02, :naive_datetime

      add :isb__dte03, :naive_datetime

      add :isb__dte04, :naive_datetime

      add :isb__log01, :boolean

      add :isb__log02, :boolean

      add :isb__log03, :boolean

      add :isb__log04, :boolean

      add :isb__log05, :boolean

      add :isb_lst_upd, :naive_datetime

      add :isb_pm_um, :string

      add :isb_location, :string

      add :isb_user1, :string

      add :isb_user2, :string

      add :isb_eco, :string

      add :isb_ship_date, :naive_datetime

      add :isb_ic_ref, :string

      add :isb_calibration, :decimal

      add :isb_calib_date, :naive_datetime

      add :isb_model, :string

      add :isb_article, :string

      add :isb_sold_to, :string

      add :isb_price_sold, :decimal

      add :isb_rebuild, :boolean

      add :isb_customer_id, :string

      add :isb_cmtindx, :integer

      add :isb_updates, :string

      add :isb_orig_ins, :naive_datetime

      add :isb_plant_maint, :boolean

      add :isb_eud_trnbr, :integer

      add :isb_eng_code, :string

      add :isb_lb_warr_exp, :naive_datetime

      add :isb_mod_userid, :string

      add :isb_mod_date, :naive_datetime

      add :isb__qadc01, :string

      add :isb__qadc02, :string

      add :isb__qadc03, :string

      add :isb__qadt01, :naive_datetime

      add :isb__qadt02, :naive_datetime

      add :isb__qadt03, :naive_datetime

      add :isb__qade01, :decimal

      add :isb__qade02, :decimal

      add :isb__qade03, :decimal

      add :isb__qadi01, :integer

      add :isb__qadi02, :integer

      add :isb__qadl01, :boolean

      add :isb__qadl02, :boolean

      add :isb__qadl03, :boolean

      add :isb_qty, :decimal

      add :isb_meter_rdg, :decimal

      add :isb_meter_date, :naive_datetime

      add :isb_meter_interval, :decimal

      add :isb_meter_um, :string

      add :isb_warr_override, :boolean

      add :isb_domain, :string

      add :oid_isb_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IEH_HIST") do
      add :ieh_addr, :string

      add :ieh_com_code, :string

      add :ieh_ctry_desdisp, :string

      add :ieh_ctry_origin, :string

      add :ieh_authority, :string

      add :ieh_decl_period, :string

      add :ieh_decl_year, :string

      add :ieh_decl_date, :naive_datetime

      add :ieh_declarant, :string

      add :ieh_reported, :boolean

      add :ieh_effdate, :naive_datetime

      add :ieh_flow, :string

      add :ieh_inv_cur, :string

      add :ieh_inv_date, :naive_datetime

      add :ieh_inv_amt_gl, :decimal

      add :ieh_inv_amt_cur, :decimal

      add :ieh_line, :integer

      add :ieh_mode_transp, :string

      add :ieh_nat_trans, :string

      add :ieh_nbr, :string

      add :ieh_net_wt, :decimal

      add :ieh_net_wt_um, :string

      add :ieh_part, :string

      add :ieh_port_arrdisp, :string

      add :ieh_port_transh, :string

      add :ieh_program, :string

      add :ieh_qty, :decimal

      add :ieh_qty_um, :string

      add :ieh_ref, :string

      add :ieh_ref_date, :naive_datetime

      add :ieh_decl_cur, :string

      add :ieh_decl_inv_amt, :decimal

      add :ieh_decl_statval, :decimal

      add :ieh_site, :string

      add :ieh_stat_proc, :string

      add :ieh_stat_val, :decimal

      add :ieh_suppl_units, :decimal

      add :ieh_suppl_um, :string

      add :ieh_terms_deliv, :string

      add :ieh_trans_id, :integer

      add :ieh_type, :string

      add :ieh_voucher, :string

      add :ieh_userid, :string

      add :ieh_mod_date, :naive_datetime

      add :ieh_pst_id, :string

      add :ieh_region, :string

      add :ieh_declaration_id, :integer

      add :ieh__chr01, :string

      add :ieh__chr02, :string

      add :ieh__chr03, :string

      add :ieh__chr04, :string

      add :ieh__chr05, :string

      add :ieh__dec01, :decimal

      add :ieh__dec02, :decimal

      add :ieh__dec03, :decimal

      add :ieh__dec04, :decimal

      add :ieh__dec05, :decimal

      add :ieh__dte01, :naive_datetime

      add :ieh__dte02, :naive_datetime

      add :ieh__dte03, :naive_datetime

      add :ieh__dte04, :naive_datetime

      add :ieh__dte05, :naive_datetime

      add :ieh_declarant_id, :string

      add :ieh_agent, :string

      add :ieh_agent_id, :string

      add :ieh__qadc04, :string

      add :ieh__qadc05, :string

      add :ieh__qadc06, :string

      add :ieh__qadc07, :string

      add :ieh__qadc08, :string

      add :ieh__qadc09, :string

      add :ieh__qadc10, :string

      add :ieh__qadi01, :integer

      add :ieh__qadd01, :decimal

      add :ieh__qadd02, :decimal

      add :ieh__qadd03, :decimal

      add :ieh__qadd04, :decimal

      add :ieh__qadd05, :decimal

      add :ieh__qadd06, :decimal

      add :ieh__qadl01, :boolean

      add :ieh__qadl02, :boolean

      add :ieh__qadt01, :naive_datetime

      add :ieh__qadt02, :naive_datetime

      add :ieh_user1, :string

      add :ieh_user2, :string

      add :ieh_correction, :boolean

      add :ieh_orig_doc, :string

      add :ieh_orig_month, :integer

      add :ieh_orig_year, :integer

      add :ieh_affiliation, :string

      add :ieh_container, :boolean

      add :ieh_csa, :integer

      add :ieh_decl_region, :string

      add :ieh_item_spec, :string

      add :ieh_preference, :integer

      add :ieh_req_nbr, :string

      add :ieh_shipvia, :string

      add :ieh_trnbr, :integer

      add :ieh_domain, :string

      add :oid_ieh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_HLP_MSTR") do
      add :hlp_context_str, :string

      add :hlp_context_nbr, :integer

      add :hlp_file, :string

      add :hlp_user1, :string

      add :hlp_user2, :string

      add :hlp__qadc01, :string

      add :oid_hlp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRRD_DET") do
      add :grrd_row, :integer

      add :grrd_row_group, :string

      add :grrd_row_type, :string

      add :grrd_label, :string

      add :grrd_indent, :integer

      add :grrd_show, :boolean

      add :grrd_percent, :boolean

      add :grrd_print, :boolean

      add :grrd_reverse, :boolean

      add :grrd_format, :string

      add :grrd_override, :boolean

      add :grrd_round, :string

      add :grrd_page, :boolean

      add :grrd_pre_und, :string

      add :grrd_user1, :string

      add :grrd_user2, :string

      add :grrd_skips, :integer

      add :grrd_post_und, :string

      add :grrd_start_col, :integer

      add :grrd_rvpol, :string

      add :grrd_precedence, :boolean

      add :grrd_text, :string

      add :grrd_calc, :string

      add :grrd_apply_sym, :boolean

      add :grrd_zero_suppress, :string

      add :grrd__qadc01, :string

      add :grrd_domain, :string

      add :oid_grrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBS_DET") do
      add :knbs_keyid, :decimal

      add :knbs_source_type, :string

      add :knbs_ref1, :string

      add :knbs_ref2, :string

      add :knbs_ref3, :string

      add :knbs_ref4, :string

      add :knbs_ref5, :string

      add :knbs_mod_date, :naive_datetime

      add :knbs_mod_userid, :string

      add :knbs_user1, :string

      add :knbs_user2, :string

      add :knbs__qadc01, :string

      add :knbs__qadc02, :string

      add :knbs_domain, :string

      add :oid_knbs_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBADC_HIST") do
      add :knbadc_part, :string

      add :knbadc_site, :string

      add :knbadc_template, :string

      add :knbadc_calc_date, :naive_datetime

      add :knbadc_calc_time, :decimal

      add :knbadc_keyid, :decimal

      add :knbadc_knbism_keyid, :decimal

      add :knbadc_daily_demand, :decimal

      add :knbadc_mod_date, :naive_datetime

      add :knbadc_mod_userid, :string

      add :knbadc_user1, :string

      add :knbadc_user2, :string

      add :knbadc__qadc01, :string

      add :knbadc__qadc02, :string

      add :knbadc_domain, :string

      add :oid_knbadc_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ITSD_DET") do
      add :itsd_part, :string

      add :itsd_site, :string

      add :itsd_qty, :decimal

      add :itsd_type, :string

      add :itsd_user1, :string

      add :itsd_user2, :string

      add :itsd_ref, :string

      add :itsd_date, :naive_datetime

      add :itsd_loaded, :boolean

      add :itsd__qadc01, :string

      add :itsd_domain, :string

      add :oid_itsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IRAW_DET") do
      add :iraw_doc_id, :integer

      add :iraw_doc_line, :integer

      add :iraw_line_cont, :boolean

      add :iraw_mod_date, :naive_datetime

      add :iraw_mod_userid, :string

      add :iraw_data, :string

      add :iraw_user1, :string

      add :iraw_user2, :string

      add :iraw__dec01, :decimal

      add :iraw__dec02, :decimal

      add :iraw__int01, :integer

      add :iraw__int02, :integer

      add :iraw__log01, :boolean

      add :iraw__log02, :boolean

      add :iraw__dte01, :naive_datetime

      add :iraw__dte02, :naive_datetime

      add :iraw__qadc01, :string

      add :iraw__qadc02, :string

      add :iraw__qadc03, :string

      add :iraw__qadc04, :string

      add :iraw__qadd01, :decimal

      add :iraw__qadd02, :decimal

      add :iraw__qadi01, :integer

      add :iraw__qadi02, :integer

      add :iraw__qadl01, :boolean

      add :iraw__qadl02, :boolean

      add :iraw__qadt01, :naive_datetime

      add :iraw__qadt02, :naive_datetime

      add :iraw_domain, :string

      add :oid_iraw_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IMAP_DET") do
      add :imap_doc_id, :integer

      add :imap_doc_line, :integer

      add :imap_line_cont, :boolean

      add :imap_data, :string

      add :imap_mod_date, :naive_datetime

      add :imap_mod_userid, :string

      add :imap_doc_sufx, :integer

      add :imap_user1, :string

      add :imap_user2, :string

      add :imap__dec01, :decimal

      add :imap__dec02, :decimal

      add :imap__int01, :integer

      add :imap__int02, :integer

      add :imap__log01, :boolean

      add :imap__log02, :boolean

      add :imap__dte01, :naive_datetime

      add :imap__dte02, :naive_datetime

      add :imap__qadc01, :string

      add :imap__qadc02, :string

      add :imap__qadc03, :string

      add :imap__qadc04, :string

      add :imap__qadd01, :decimal

      add :imap__qadd02, :decimal

      add :imap__qadi01, :integer

      add :imap__qadi02, :integer

      add :imap__qadl01, :boolean

      add :imap__qadl02, :boolean

      add :imap__qadt01, :naive_datetime

      add :imap__qadt02, :naive_datetime

      add :imap_domain, :string

      add :oid_imap_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ITMH_HIST") do
      add :itmh_bom_code, :string

      add :itmh_ca_int_type, :string

      add :itmh_cmtindx, :integer

      add :itmh_comp_date, :naive_datetime

      add :itmh_desc, :string

      add :itmh_eng_code, :string

      add :itmh_line, :integer

      add :itmh_nbr, :string

      add :itmh_nxt_act, :string

      add :itmh_nxt_date, :naive_datetime

      add :itmh_nxt_time, :string

      add :itmh_part, :string

      add :itmh_prefix, :string

      add :itmh_qty_call, :decimal

      add :itmh_qty_rc_rec, :decimal

      add :itmh_qty_rc_ship, :decimal

      add :itmh_qty_rec, :decimal

      add :itmh_qty_ship, :decimal

      add :itmh_rec_date, :naive_datetime

      add :itmh_ref, :integer

      add :itmh_rev, :string

      add :itmh_route, :string

      add :itmh_sad_line, :integer

      add :itmh_sa_nbr, :string

      add :itmh_serial, :string

      add :itmh_ship_date, :naive_datetime

      add :itmh_sv_code, :string

      add :itmh_type, :string

      add :itmh_user1, :string

      add :itmh_user2, :string

      add :itmh_taxc, :string

      add :itmh_tax_usage, :string

      add :itmh__chr01, :string

      add :itmh__chr02, :string

      add :itmh__chr03, :string

      add :itmh__chr04, :string

      add :itmh__dec01, :decimal

      add :itmh__dec02, :decimal

      add :itmh__dec03, :decimal

      add :itmh__dte01, :naive_datetime

      add :itmh__dte02, :naive_datetime

      add :itmh__dte03, :naive_datetime

      add :itmh__log01, :boolean

      add :itmh__log02, :boolean

      add :itmh__log03, :boolean

      add :itmh__qadc01, :string

      add :itmh__qadc02, :string

      add :itmh__qadc03, :string

      add :itmh__qadc04, :string

      add :itmh__qadt01, :naive_datetime

      add :itmh__qadt02, :naive_datetime

      add :itmh__qadt03, :naive_datetime

      add :itmh__qadd01, :decimal

      add :itmh__qadd02, :decimal

      add :itmh__qadd03, :decimal

      add :itmh__qadl01, :boolean

      add :itmh__qadl02, :boolean

      add :itmh__qadl03, :boolean

      add :itmh_stdown_time, :string

      add :itmh_stdown_date, :naive_datetime

      add :itmh_stjob_date, :naive_datetime

      add :itmh_endown_date, :naive_datetime

      add :itmh_endown_time, :string

      add :itmh_bom_gen, :boolean

      add :itmh_due_date, :naive_datetime

      add :itmh_exp_rec, :naive_datetime

      add :itmh_route_gen, :boolean

      add :itmh_sa_sv, :string

      add :itmh_svc_type, :string

      add :itmh_taxable, :boolean

      add :itmh_warr_sv, :string

      add :itmh__qadc05, :string

      add :itmh__qadc06, :string

      add :itmh_opn_date, :naive_datetime

      add :itmh_status, :string

      add :itmh_stjob_time, :string

      add :itmh_fix_pr, :boolean

      add :itmh_fixed_price, :decimal

      add :itmh_bill_detail, :boolean

      add :itmh_unprocessed, :boolean

      add :itmh_invoiced, :boolean

      add :itmh_uninvoiced, :boolean

      add :itmh_itm_line, :integer

      add :itmh_recorded, :boolean

      add :itmh_qty_chg, :decimal

      add :itmh_tag, :string

      add :itmh_rrc_nbr, :string

      add :itmh_rrc_seq, :integer

      add :itmh_sep_doc, :boolean

      add :itmh_site, :string

      add :itmh_loc, :string

      add :itmh_upd_isb, :boolean

      add :itmh_mod_userid, :string

      add :itmh_mod_date, :naive_datetime

      add :itmh_tax_env, :string

      add :itmh_tax_in, :boolean

      add :itmh_est_time, :string

      add :itmh_pr_list, :string

      add :itmh_prod_line, :string

      add :itmh_override_lmt, :boolean

      add :itmh_eu_nbr, :string

      add :itmh_pst, :boolean

      add :itmh_acct, :string

      add :itmh_sub, :string

      add :itmh_cc, :string

      add :itmh_project, :string

      add :itmh_dsc_acct, :string

      add :itmh_dsc_sub, :string

      add :itmh_dsc_cc, :string

      add :itmh_dsc_project, :string

      add :itmh_domain, :string

      add :oid_itmh_hist, :decimal

      add :itmh_model, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IPH_HIST") do
      add :iph_inv_nbr, :string

      add :iph_nbr, :string

      add :iph_line, :integer

      add :iph_feature, :string

      add :iph_option, :string

      add :iph_disc_acct, :string

      add :iph_disc_cc, :string

      add :iph_disc_sub, :string

      add :iph_disc_proj, :string

      add :iph_qty, :decimal

      add :iph_amt, :decimal

      add :iph_disc_amt, :decimal

      add :iph_break_cat, :string

      add :iph_pid_qty, :decimal

      add :iph_amt_type, :string

      add :iph_cr_terms, :string

      add :iph_fr_list, :string

      add :iph_fr_terms, :string

      add :iph_userid, :string

      add :iph_mod_date, :naive_datetime

      add :iph_list_id, :string

      add :iph_source, :string

      add :iph_min_net, :decimal

      add :iph_qty_type, :string

      add :iph_um, :string

      add :iph_time, :integer

      add :iph_list, :string

      add :iph_comb_type, :string

      add :iph_confg_disc, :boolean

      add :iph_parent, :string

      add :iph_accr_acct, :string

      add :iph_accr_cc, :string

      add :iph_accr_proj, :string

      add :iph_accr_sub, :string

      add :iph_disc_seq, :decimal

      add :iph_print, :boolean

      add :iph_user1, :string

      add :iph_user2, :string

      add :iph__qadc01, :string

      add :iph__qadd01, :decimal

      add :iph__dte01, :naive_datetime

      add :iph__dte02, :naive_datetime

      add :iph__dec01, :decimal

      add :iph__dec02, :decimal

      add :iph__log01, :boolean

      add :iph__chr01, :string

      add :iph__chr02, :string

      add :iph__chr03, :string

      add :iph__chr04, :string

      add :iph__chr05, :string

      add :iph__chr06, :string

      add :iph__chr07, :string

      add :iph__chr08, :string

      add :iph__chr09, :string

      add :iph__chr10, :string

      add :iph_promo1, :string

      add :iph_promo2, :string

      add :iph_promo3, :string

      add :iph_promo4, :string

      add :iph_bonus_line, :integer

      add :iph_pig_code, :string

      add :iph_domain, :string

      add :oid_iph_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IDHR_HIST") do
      add :idhr_div, :string

      add :idhr_group, :string

      add :idhr_inv_nbr, :string

      add :idhr_line, :integer

      add :idhr_nbr, :string

      add :idhr_pricing, :integer

      add :idhr_seq, :integer

      add :idhr_type, :integer

      add :idhr_user1, :string

      add :idhr_user2, :string

      add :idhr__qadc01, :string

      add :idhr__qadc02, :string

      add :idhr__qadc03, :string

      add :idhr__qadd01, :decimal

      add :idhr__qadd02, :decimal

      add :idhr__qadi01, :integer

      add :idhr__qadi02, :integer

      add :idhr__qadl01, :boolean

      add :idhr__qadl02, :boolean

      add :idhr__qadt01, :naive_datetime

      add :idhr__qadt02, :naive_datetime

      add :idhr_domain, :string

      add :oid_idhr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRX3_WKFL") do
      add :grx3_run_id, :integer

      add :grx3_row, :integer

      add :grx3_col, :integer

      add :grx3_line, :integer

      add :grx3_priority, :integer

      add :grx3_explode, :integer

      add :grx3_element1, :string

      add :grx3_element2, :string

      add :grx3_element3, :string

      add :grx3_element4, :string

      add :grx3_element5, :string

      add :grx3_user1, :string

      add :grx3_user2, :string

      add :grx3__qadc01, :string

      add :grx3_domain, :string

      add :oid_grx3_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBPP_MSTR") do
      add :kbpp_period, :string

      add :kbpp_desc, :string

      add :kbpp_hours, :decimal

      add :kbpp_mod_userid, :string

      add :kbpp_mod_date, :naive_datetime

      add :kbpp_user1, :string

      add :kbpp_user2, :string

      add :kbpp__qadc01, :string

      add :kbpp_calendar_days, :integer

      add :kbpp_work_days, :integer

      add :kbpp_domain, :string

      add :oid_kbpp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ISVC_MSTR") do
      add :isvc_ctry_dest, :string

      add :isvc_ctry_orig, :string

      add :isvc_terms_delivery, :string

      add :isvc_min_value, :decimal

      add :isvc_percentage, :decimal

      add :isvc_per_unit, :decimal

      add :isvc_per_weight, :decimal

      add :isvc_shipvia, :string

      add :isvc_mode_transp, :string

      add :isvc_flow, :string

      add :isvc_mod_date, :naive_datetime

      add :isvc_mod_userid, :string

      add :isvc_user1, :string

      add :isvc_user2, :string

      add :isvc__qadc01, :string

      add :isvc__qadc02, :string

      add :isvc_um, :string

      add :isvc_domain, :string

      add :oid_isvc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IN_MSTR") do
      add :in_part, :string

      add :in_site, :string

      add :in_qty_oh, :decimal

      add :in_qty_req, :decimal

      add :in_qty_all, :decimal

      add :in_qty_ord, :decimal

      add :in_qty_chg, :decimal

      add :in_qty_avail, :decimal

      add :in_sls_chg, :decimal

      add :in_iss_chg, :decimal

      add :in_iss_date, :naive_datetime

      add :in_rec_date, :naive_datetime

      add :in_cnt_date, :naive_datetime

      add :in_avg_iss, :decimal

      add :in_avg_sls, :decimal

      add :in_avg_date, :naive_datetime

      add :in_user1, :string

      add :in_user2, :string

      add :in_rop, :decimal

      add :in_sfty_stk, :decimal

      add :in_qty_nonet, :decimal

      add :in_mrp, :boolean

      add :in_gl_set, :string

      add :in_cur_set, :string

      add :in_abc, :string

      add :in_avg_int, :integer

      add :in_cyc_int, :integer

      add :in_level, :integer

      add :in_loc, :string

      add :in_loc_type, :string

      add :in_proj_use, :integer

      add :in_grade, :string

      add :in_assay, :decimal

      add :in_rollup, :boolean

      add :in_rollup_id, :string

      add :in_rctpo_status, :string

      add :in_rctwo_status, :string

      add :in_rctpo_active, :boolean

      add :in_rctwo_active, :boolean

      add :in__qadc01, :string

      add :in_wh, :boolean

      add :in_gl_cost_site, :string

      add :in_cust_consign_qty, :decimal

      add :in_supp_consign_qty, :decimal

      add :in_domain, :string

      add :oid_in_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IHR_HIST") do
      add :ihr_div, :string

      add :ihr_group, :string

      add :ihr_inv_nbr, :string

      add :ihr_nbr, :string

      add :ihr_pricing, :integer

      add :ihr_seq, :integer

      add :ihr_type, :integer

      add :ihr_user1, :string

      add :ihr_user2, :string

      add :ihr__qadc01, :string

      add :ihr__qadc02, :string

      add :ihr__qadc03, :string

      add :ihr__qadd01, :decimal

      add :ihr__qadd02, :decimal

      add :ihr__qadi01, :integer

      add :ihr__qadi02, :integer

      add :ihr__qadl01, :boolean

      add :ihr__qadl02, :boolean

      add :ihr__qadt01, :naive_datetime

      add :ihr__qadt02, :naive_datetime

      add :ihr_domain, :string

      add :oid_ihr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ICC_CTRL") do
      add :icc_cur_cost, :string

      add :icc__qadi04, :integer

      add :icc_jrnl, :integer

      add :icc_gl_sum, :boolean

      add :icc_tol_flag, :boolean

      add :icc_tol_a, :decimal

      add :icc_tol_b, :decimal

      add :icc_tol_c, :decimal

      add :icc_tol_o, :decimal

      add :icc_cur_ap, :boolean

      add :icc_iss_days, :integer

      add :icc__qad03, :integer

      add :icc__qad02, :integer

      add :icc_gl_tran, :boolean

      add :icc__qad01, :integer

      add :icc_pk_ord, :integer

      add :icc_ascend, :boolean

      add :icc_user1, :string

      add :icc_user2, :string

      add :icc__qadi02, :integer

      add :icc_gl_set, :string

      add :icc_cur_set, :string

      add :icc_cogs, :boolean

      add :icc__qadc01, :string

      add :icc__qadc03, :string

      add :icc_xclr_acct, :string

      add :icc_xclr_cc, :string

      add :icc_mirror, :boolean

      add :icc_site, :string

      add :icc__qadc02, :string

      add :icc_xclr_sub, :string

      add :icc_domain, :string

      add :oid_icc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRX1_WKFL") do
      add :grx1_run_id, :integer

      add :grx1_an_code, :string

      add :grx1_link_type, :string

      add :grx1_link_code, :string

      add :grx1_user1, :string

      add :grx1_user2, :string

      add :grx1__qadc01, :string

      add :grx1_domain, :string

      add :oid_grx1_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBMD_MSTR") do
      add :kbmd_part, :string

      add :kbmd_supp_source, :string

      add :kbmd_supp_ref, :string

      add :kbmd_cons_source, :string

      add :kbmd_cons_ref, :string

      add :kbmd_line, :string

      add :kbmd_pattern, :string

      add :kbmd_period, :string

      add :kbmd_demand, :integer

      add :kbmd_mod_userid, :string

      add :kbmd_mod_date, :naive_datetime

      add :kbmd_user1, :string

      add :kbmd_user2, :string

      add :kbmd__chr01, :string

      add :kbmd__dec01, :decimal

      add :kbmd__dte01, :naive_datetime

      add :kbmd__log01, :boolean

      add :kbmd__int01, :integer

      add :kbmd__qadc01, :string

      add :kbmd__qadi01, :integer

      add :kbmd__qadd01, :decimal

      add :kbmd__qadl01, :boolean

      add :kbmd__qadt01, :naive_datetime

      add :kbmd_domain, :string

      add :oid_kbmd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ISS_MSTR") do
      add :iss_eu_nbr, :string

      add :iss_par, :string

      add :iss_comp, :string

      add :iss_par_ser, :string

      add :iss_comp_ser, :string

      add :iss_par_ref, :integer

      add :iss_comp_ref, :integer

      add :iss__chr01, :string

      add :iss__chr02, :string

      add :iss__chr03, :string

      add :iss__dec01, :decimal

      add :iss__dec02, :decimal

      add :iss__dte01, :naive_datetime

      add :iss__dte02, :naive_datetime

      add :iss__log01, :boolean

      add :iss__log02, :boolean

      add :iss_user1, :string

      add :iss_user2, :string

      add :iss_domain, :string

      add :oid_iss_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_INS_MSTR") do
      add :ins_ar_acct, :string

      add :ins_ar_sub, :string

      add :ins_ar_cc, :string

      add :ins_bill_to, :string

      add :ins_cmtindx, :integer

      add :ins_cr_terms, :string

      add :ins_curr, :string

      add :ins_fixed, :boolean

      add :ins_hold, :boolean

      add :ins_hold_rmks, :string

      add :ins_inv_amt, :decimal

      add :ins_sched_date, :naive_datetime

      add :ins_inv_nbr, :string

      add :ins_inv_pct, :decimal

      add :ins_inv_type, :string

      add :ins_ord_date, :naive_datetime

      add :ins_orig_date, :naive_datetime

      add :ins_prepayment, :boolean

      add :ins_prj_nbr, :string

      add :ins_rel_date, :naive_datetime

      add :ins_released, :boolean

      add :ins_rmks, :string

      add :ins_sched_nbr, :string

      add :ins_so_nbr, :string

      add :ins_sub_nbr, :integer

      add :ins_userid, :string

      add :ins_mod_date, :naive_datetime

      add :ins_mod_userid, :string

      add :ins_user1, :string

      add :ins_user2, :string

      add :ins__qadc01, :string

      add :ins__qadd01, :decimal

      add :ins__qadi01, :integer

      add :ins__qadl01, :boolean

      add :ins__qadt01, :naive_datetime

      add :ins_domain, :string

      add :oid_ins_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IHCC_HIST") do
      add :ihcc_nbr, :string

      add :ihcc_cc_nbr, :string

      add :ihcc_cc_nbr_tail, :string

      add :ihcc_cc_expire_date, :naive_datetime

      add :ihcc_card_type, :string

      add :ihcc_auth_date, :naive_datetime

      add :ihcc_auth_nbr, :string

      add :ihcc_auth_amt, :decimal

      add :ihcc_auth_expire_date, :naive_datetime

      add :ihcc_inv_nbr, :string

      add :ihcc_billing_name, :string

      add :ihcc_billing_addr1, :string

      add :ihcc_billing_addr2, :string

      add :ihcc_billing_addr3, :string

      add :ihcc_billing_city, :string

      add :ihcc_billing_zip, :string

      add :ihcc_billing_state, :string

      add :ihcc_billing_country, :string

      add :ihcc_billing_ctry, :string

      add :ihcc_mod_userid, :string

      add :ihcc_mod_date, :naive_datetime

      add :ihcc_user1, :string

      add :ihcc_user2, :string

      add :ihcc__qadc01, :string

      add :ihcc__qadi01, :integer

      add :ihcc__qadd01, :decimal

      add :ihcc__qadl01, :boolean

      add :ihcc__qadt01, :naive_datetime

      add :ihcc_domain, :string

      add :oid_ihcc_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBC_CTRL") do
      add :kbc_pattern, :string

      add :kbc_mod_userid, :string

      add :kbc_mod_date, :naive_datetime

      add :kbc_user1, :string

      add :kbc_user2, :string

      add :kbc__qadc01, :string

      add :kbc__qadi02, :integer

      add :kbc_display_pause, :integer

      add :kbc_eff_date_entry, :boolean

      add :kbc_id_barcode, :boolean

      add :kbc_item_barcode, :boolean

      add :kbc_print_quantity, :boolean

      add :kbc_max_cycle_time, :integer

      add :kbc_min_cycle_time, :integer

      add :kbc_min_cycle_check, :string

      add :kbc_controlled_entry, :string

      add :kbc_userd01, :decimal

      add :kbc_useri01, :integer

      add :kbc_userl01, :boolean

      add :kbc_usert01, :naive_datetime

      add :kbc__qadc02, :string

      add :kbc__qadc03, :string

      add :kbc__qadd01, :decimal

      add :kbc__qadi01, :integer

      add :kbc__qadl01, :boolean

      add :kbc__qadt01, :naive_datetime

      add :kbc_template, :string

      add :kbc_time_adj, :string

      add :kbc_print_consume_ref, :boolean

      add :kbc_tolerance_pct, :decimal

      add :kbc_time_fence, :integer

      add :kbc_export_directory, :string

      add :kbc_import_directory, :string

      add :kbc_fifo_entry, :boolean

      add :kbc_domain, :string

      add :kbc_min_epe_interval, :decimal

      add :kbc_load_limit, :decimal

      add :kbc_lead_time_method, :integer

      add :kbc_card_reporting, :integer

      add :kbc_fractional_kanban, :decimal

      add :kbc_cost_set, :string

      add :kbc_ss_template, :string

      add :oid_kbc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ISD_DET") do
      add :isd_status, :string

      add :isd_tr_type, :string

      add :isd_user1, :string

      add :isd_user2, :string

      add :isd_type, :string

      add :isd_bdl_allowed, :boolean

      add :isd__qadc01, :string

      add :isd_domain, :string

      add :oid_isd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IND_DET") do
      add :ind_site, :string

      add :ind_nbr, :string

      add :ind_part, :string

      add :ind_qty_req, :decimal

      add :ind_qty_all, :decimal

      add :ind_qty_pick, :decimal

      add :ind_qty_iss, :decimal

      add :ind_qty_chg, :decimal

      add :ind_bo_chg, :decimal

      add :ind_loc, :string

      add :ind_serial, :string

      add :ind_req_date, :naive_datetime

      add :ind_request, :string

      add :ind_remarks, :string

      add :ind_project, :string

      add :ind_type, :string

      add :ind_um, :string

      add :ind_um_conv, :decimal

      add :ind_mod_date, :naive_datetime

      add :ind_userid, :string

      add :ind_cmtindx, :integer

      add :ind_user1, :string

      add :ind_user2, :string

      add :ind__chr01, :string

      add :ind__chr02, :string

      add :ind__chr03, :string

      add :ind__chr04, :string

      add :ind__chr05, :string

      add :ind__dte01, :naive_datetime

      add :ind__dte02, :naive_datetime

      add :ind__dec01, :decimal

      add :ind__dec02, :decimal

      add :ind__log01, :boolean

      add :ind_domain, :string

      add :oid_ind_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IE_MSTR") do
      add :ie_incl_memo, :boolean

      add :ie_mode_transp, :string

      add :ie_nat_trans, :string

      add :ie_nbr, :string

      add :ie_port_arrdisp, :string

      add :ie_port_transh, :string

      add :ie_stat_proc, :string

      add :ie_terms_deliv, :string

      add :ie_type, :string

      add :ie_userid, :string

      add :ie_mod_date, :naive_datetime

      add :ie_region, :string

      add :ie_ctry_desdisp, :string

      add :ie__chr01, :string

      add :ie__chr02, :string

      add :ie__chr03, :string

      add :ie__chr04, :string

      add :ie__chr05, :string

      add :ie__log01, :boolean

      add :ie__log02, :boolean

      add :ie__qadc01, :string

      add :ie__qadc02, :string

      add :ie__qadc03, :string

      add :ie__qadc04, :string

      add :ie__qadc05, :string

      add :ie__qadl01, :boolean

      add :ie__qadl02, :boolean

      add :ie_user1, :string

      add :ie_user2, :string

      add :ie_correction, :boolean

      add :ie_orig_doc, :string

      add :ie_orig_year, :integer

      add :ie_orig_month, :integer

      add :ie_affiliation, :string

      add :ie_domain, :string

      add :oid_ie_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_HWM_DET") do
      add :hwm_product, :string

      add :hwm_date, :naive_datetime

      add :hwm_time, :integer

      add :hwm_userid, :string

      add :hwm_sid, :string

      add :hwm_lic_type, :string

      add :hwm_cnt, :integer

      add :hwm_lic_cnt, :integer

      add :hwm__qadc01, :string

      add :hwm__qadc02, :string

      add :hwm__qadd01, :decimal

      add :hwm__qadt01, :naive_datetime

      add :oid_hwm_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IPD_DET") do
      add :ipd_part, :string

      add :ipd_routing, :string

      add :ipd_op, :integer

      add :ipd_nbr, :string

      add :ipd_test, :string

      add :ipd_label, :string

      add :ipd_tol, :string

      add :ipd_include, :boolean

      add :ipd_cmtindx, :integer

      add :ipd_user1, :string

      add :ipd_user2, :string

      add :ipd_tol_type, :string

      add :ipd__chr01, :string

      add :ipd__chr02, :string

      add :ipd__chr03, :string

      add :ipd__chr04, :string

      add :ipd__chr05, :string

      add :ipd__dec01, :decimal

      add :ipd__dec02, :decimal

      add :ipd_start, :naive_datetime

      add :ipd_end, :naive_datetime

      add :ipd_testmthd, :string

      add :ipd_attribute, :string

      add :ipd_domain, :string

      add :oid_ipd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IH_HIST") do
      add :ih_nbr, :string

      add :ih_cust, :string

      add :ih_ship, :string

      add :ih_ord_date, :naive_datetime

      add :ih_req_date, :naive_datetime

      add :ih_due_date, :naive_datetime

      add :ih_rmks, :string

      add :ih_cr_terms, :string

      add :ih_fob, :string

      add :ih_po, :string

      add :ih_shipvia, :string

      add :ih_partial, :boolean

      add :ih_print_so, :boolean

      add :ih_inv_nbr, :string

      add :ih_pr_list, :string

      add :ih_xslspsn, :string

      add :ih_source, :string

      add :ih_xcomm_pct, :decimal

      add :ih_cr_card, :string

      add :ih_print_pl, :boolean

      add :ih_cr_init, :string

      add :ih_stat, :string

      add :ih__qad01, :decimal

      add :ih__qad02, :decimal

      add :ih__qad03, :decimal

      add :ih_disc_pct, :decimal

      add :ih_tax_pct, :decimal

      add :ih_prepaid, :decimal

      add :ih_to_inv, :boolean

      add :ih_invoiced, :boolean

      add :ih_ar_acct, :string

      add :ih_ar_cc, :string

      add :ih_inv_date, :naive_datetime

      add :ih_ship_date, :naive_datetime

      add :ih_taxable, :boolean

      add :ih_cmtindx, :integer

      add :ih__qad04, :integer

      add :ih_user1, :string

      add :ih_user2, :string

      add :ih_curr, :string

      add :ih_ex_rate, :decimal

      add :ih_lang, :string

      add :ih_type, :string

      add :ih_conf_date, :naive_datetime

      add :ih_rev, :integer

      add :ih_bol, :string

      add :ih__qad05, :decimal

      add :ih_pst, :boolean

      add :ih_fst_id, :string

      add :ih_trl1_amt, :decimal

      add :ih_trl1_cd, :string

      add :ih_trl2_amt, :decimal

      add :ih_trl2_cd, :string

      add :ih_trl3_amt, :decimal

      add :ih_trl3_cd, :string

      add :ih_weight, :decimal

      add :ih_weight_um, :string

      add :ih_size, :decimal

      add :ih_size_um, :string

      add :ih_cartons, :integer

      add :ih_site, :string

      add :ih_quote, :string

      add :ih_taxc, :string

      add :ih__chr01, :string

      add :ih__chr02, :string

      add :ih__chr03, :string

      add :ih__chr04, :string

      add :ih__chr05, :string

      add :ih__chr06, :string

      add :ih__chr07, :string

      add :ih__chr08, :string

      add :ih__chr09, :string

      add :ih__chr10, :string

      add :ih__dte01, :naive_datetime

      add :ih__dte02, :naive_datetime

      add :ih__dec01, :decimal

      add :ih__dec02, :decimal

      add :ih__log01, :boolean

      add :ih_credit, :boolean

      add :ih_inv_cr, :string

      add :ih_project, :string

      add :ih_pst_pct, :decimal

      add :ih_pst_id, :string

      add :ih_fr_list, :string

      add :ih_fr_terms, :string

      add :ih_comm_pct, :decimal

      add :ih_slspsn, :string

      add :ih_fix_rate, :boolean

      add :ih_ent_ex, :decimal

      add :ih_bill, :string

      add :ih_print_bl, :boolean

      add :ih_userid, :string

      add :ih_tax_date, :naive_datetime

      add :ih_channel, :string

      add :ih_inv_mthd, :string

      add :ih_fsm_type, :string

      add :ih_bank, :string

      add :ih_fr_min_wt, :decimal

      add :ih_pr_list2, :string

      add :ih_tax_env, :string

      add :ih_tax_usage, :string

      add :ih_sa_nbr, :string

      add :ih_crprlist, :string

      add :ih_ship_eng, :boolean

      add :ih_cncl_date, :naive_datetime

      add :ih_conrep, :string

      add :ih_sched, :boolean

      add :ih_fix_pr, :boolean

      add :ih_sch_mthd, :string

      add :ih_ca_nbr, :string

      add :ih_fcg_code, :string

      add :ih_mod_date, :naive_datetime

      add :ih_pricing_dt, :naive_datetime

      add :ih_priced_dt, :naive_datetime

      add :ih_rstk_pct, :decimal

      add :ih__qadc01, :string

      add :ih__qadc02, :string

      add :ih__qadc03, :string

      add :ih__qadc04, :string

      add :ih__qadc05, :string

      add :ih__qadt01, :naive_datetime

      add :ih__qadt02, :naive_datetime

      add :ih__qadt03, :naive_datetime

      add :ih__qadd01, :decimal

      add :ih__qadd02, :decimal

      add :ih__qadd03, :decimal

      add :ih__qadi01, :integer

      add :ih__qadi02, :integer

      add :ih__qadi03, :integer

      add :ih__qadl01, :boolean

      add :ih__qadl02, :boolean

      add :ih__qadl03, :boolean

      add :ih_primary, :boolean

      add :ih_cust_po, :string

      add :ih_secondary, :boolean

      add :ih_ship_po, :string

      add :ih_ex_rate2, :decimal

      add :ih_ex_ratetype, :string

      add :ih_div, :string

      add :ih_exru_seq, :integer

      add :ih_export_batch, :integer

      add :ih_export_date, :naive_datetime

      add :ih_export_time, :integer

      add :ih_ar_sub, :string

      add :ih_prep_tax, :decimal

      add :ih_custref_val, :boolean

      add :ih_domain, :string

      add :oid_ih_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IDHLC_HIST") do
      add :idhlc_inv_nbr, :string

      add :idhlc_nbr, :string

      add :idhlc_line, :integer

      add :idhlc_sub_line, :integer

      add :idhlc_trl, :string

      add :idhlc_charge_category, :string

      add :idhlc_part, :string

      add :idhlc_price, :decimal

      add :idhlc_charge_type, :string

      add :idhlc_qty_inv, :decimal

      add :idhlc_um, :string

      add :idhlc_desc, :string

      add :idhlc_desc1, :string

      add :idhlc_desc2, :string

      add :idhlc_fr_class, :string

      add :idhlc_fr_wt, :decimal

      add :idhlc_fr_wt_um, :string

      add :idhlc_prodline, :string

      add :idhlc_taxable, :boolean

      add :idhlc_taxc, :string

      add :idhlc_tax_env, :string

      add :idhlc_tax_usage, :string

      add :idhlc_acct, :string

      add :idhlc_sub, :string

      add :idhlc_cc, :string

      add :idhlc_project, :string

      add :idhlc_mod_userid, :string

      add :idhlc_mod_date, :naive_datetime

      add :idhlc_userc01, :string

      add :idhlc_userc02, :string

      add :idhlc__qadc01, :string

      add :idhlc__qadc02, :string

      add :idhlc_domain, :string

      add :oid_idhlc_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRX2_WKFL") do
      add :grx2_run_id, :integer

      add :grx2_type, :boolean

      add :grx2_nbr, :integer

      add :grx2_acct, :string

      add :grx2_cc, :string

      add :grx2_entity, :string

      add :grx2_project, :string

      add :grx2_sub, :string

      add :grx2_actual, :boolean

      add :grx2_bg_code, :string

      add :grx2_level, :integer

      add :grx2_user1, :string

      add :grx2_user2, :string

      add :grx2__qadc01, :string

      add :grx2_domain, :string

      add :oid_grx2_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRID_DET") do
      add :grid_run_id, :integer

      add :grid_row, :integer

      add :grid_line, :integer

      add :grid_stl, :integer

      add :grid_indent, :integer

      add :grid_label, :string

      add :grid_skips, :integer

      add :grid_row_type, :string

      add :grid_pre_und, :string

      add :grid_post_und, :string

      add :grid_page, :boolean

      add :grid_print, :boolean

      add :grid_text, :string

      add :grid_allzero, :boolean

      add :grid_select, :boolean

      add :grid_apply_sym, :boolean

      add :grid_zero_suppress, :string

      add :grid_expl_line, :integer

      add :grid_user1, :string

      add :grid_user2, :string

      add :grid__qadc01, :string

      add :grid_domain, :string

      add :oid_grid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRAL_DET") do
      add :gral_an_code, :string

      add :gral_link_code, :string

      add :gral_seq, :decimal

      add :gral_user1, :string

      add :gral_user2, :string

      add :gral__qadc01, :string

      add :gral_domain, :string

      add :oid_gral_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLR_MSTR") do
      add :glr_code, :string

      add :glr_title, :string

      add :glr_user1, :string

      add :glr_user2, :string

      add :glr__qadc01, :string

      add :glr_domain, :string

      add :oid_glr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IED_DET") do
      add :ied_com_code, :string

      add :ied_ctry_origin, :string

      add :ied_line, :integer

      add :ied_mode_transp, :string

      add :ied_nat_trans, :string

      add :ied_nbr, :string

      add :ied_port_arrdisp, :string

      add :ied_port_transh, :string

      add :ied_stat_proc, :string

      add :ied_terms_deliv, :string

      add :ied_type, :string

      add :ied_userid, :string

      add :ied_mod_date, :naive_datetime

      add :ied_ctry_desdisp, :string

      add :ied_intrastat, :boolean

      add :ied_region, :string

      add :ied__chr01, :string

      add :ied__chr02, :string

      add :ied__chr03, :string

      add :ied__chr04, :string

      add :ied__chr05, :string

      add :ied__dec01, :decimal

      add :ied__dec02, :decimal

      add :ied__dec03, :decimal

      add :ied__dec04, :decimal

      add :ied__dec05, :decimal

      add :ied__dte01, :naive_datetime

      add :ied__dte02, :naive_datetime

      add :ied__dte03, :naive_datetime

      add :ied__dte04, :naive_datetime

      add :ied__dte05, :naive_datetime

      add :ied__log01, :boolean

      add :ied__log02, :boolean

      add :ied__log03, :boolean

      add :ied__qadc01, :string

      add :ied__qadc02, :string

      add :ied__qadc03, :string

      add :ied__qadc04, :string

      add :ied__qadc05, :string

      add :ied__qadd01, :decimal

      add :ied__qadd02, :decimal

      add :ied__qadd03, :decimal

      add :ied__qadd04, :decimal

      add :ied__qadd05, :decimal

      add :ied__qadl01, :boolean

      add :ied__qadl02, :boolean

      add :ied__qadl03, :boolean

      add :ied__qadl04, :boolean

      add :ied__qadl05, :boolean

      add :ied__qadt01, :naive_datetime

      add :ied__qadt02, :naive_datetime

      add :ied__qadt03, :naive_datetime

      add :ied__log04, :boolean

      add :ied__log05, :boolean

      add :ied__log06, :boolean

      add :ied_user1, :string

      add :ied_user2, :string

      add :ied_shipvia, :string

      add :ied_affiliation, :string

      add :ied_item_spec, :string

      add :ied_csa, :integer

      add :ied_container, :boolean

      add :ied_preference, :integer

      add :ied_decl_region, :string

      add :ied_req_nbr, :string

      add :ied_trnbr, :integer

      add :ied_domain, :string

      add :oid_ied_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRQD_DET") do
      add :grqd_per_end, :integer

      add :grqd_quarter, :integer

      add :grqd_user1, :string

      add :grqd_user2, :string

      add :grqd_year, :integer

      add :grqd_per_start, :integer

      add :grqd__qadc01, :string

      add :grqd_domain, :string

      add :oid_grqd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRCD_DET") do
      add :grcd_col, :integer

      add :grcd_col_group, :string

      add :grcd_col_type, :string

      add :grcd_desc, :string

      add :grcd_project, :string

      add :grcd_bg_code, :string

      add :grcd_percent, :boolean

      add :grcd_print, :boolean

      add :grcd_format, :string

      add :grcd_override, :boolean

      add :grcd_round, :string

      add :grcd_label, :string

      add :grcd_user1, :string

      add :grcd_user2, :string

      add :grcd_year, :string

      add :grcd_per_from, :string

      add :grcd_quarter, :string

      add :grcd_activity, :string

      add :grcd_bg_roll, :boolean

      add :grcd_width, :integer

      add :grcd_rvpol, :string

      add :grcd_calc, :string

      add :grcd_currency, :boolean

      add :grcd_per_to, :string

      add :grcd_symbol, :string

      add :grcd__qadc01, :string

      add :grcd_domain, :string

      add :oid_grcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLTR_HIST") do
      add :gltr_acc, :string

      add :gltr_ctr, :string

      add :gltr_tr_type, :string

      add :gltr_ent_dt, :naive_datetime

      add :gltr_eff_dt, :naive_datetime

      add :gltr_amt, :decimal

      add :gltr_ref, :string

      add :gltr_desc, :string

      add :gltr_unb, :boolean

      add :gltr_user, :string

      add :gltr_project, :string

      add :gltr_error, :string

      add :gltr_batch, :string

      add :gltr_curr, :string

      add :gltr_curramt, :decimal

      add :gltr_entity, :string

      add :gltr_line, :integer

      add :gltr_ex_rate, :decimal

      add :gltr_export, :boolean

      add :gltr_addr, :string

      add :gltr_doc, :string

      add :gltr_doc_typ, :string

      add :gltr_user1, :string

      add :gltr_user2, :string

      add :gltr_fx_ind, :string

      add :gltr_sub, :string

      add :gltr_rflag, :boolean

      add :gltr_ecur_amt, :decimal

      add :gltr_en_exrate, :decimal

      add :gltr__qadc01, :string

      add :gltr_correction, :boolean

      add :gltr_dy_code, :string

      add :gltr_dy_num, :string

      add :gltr_ex_rate2, :decimal

      add :gltr_ex_ratetype, :string

      add :gltr_en_exrate2, :decimal

      add :gltr_exru_seq, :integer

      add :gltr_en_exru_seq, :integer

      add :gltr_src_desc, :string

      add :gltr_domain, :string

      add :oid_gltr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IBH_HIST") do
      add :ibh_nbr, :string

      add :ibh_line, :integer

      add :ibh_feature, :string

      add :ibh_part, :string

      add :ibh_iss_date, :naive_datetime

      add :ibh_qty_req, :decimal

      add :ibh_qty_all, :decimal

      add :ibh_qty_pick, :decimal

      add :ibh_qty_iss, :decimal

      add :ibh_tot_std, :decimal

      add :ibh_qty_chg, :decimal

      add :ibh_bo_chg, :decimal

      add :ibh_price, :decimal

      add :ibh_loc, :string

      add :ibh_serial, :string

      add :ibh_cmtindx, :integer

      add :ibh_user1, :string

      add :ibh_user2, :string

      add :ibh_inv_nbr, :string

      add :ibh_site, :string

      add :ibh_parent, :string

      add :ibh__qadc01, :string

      add :ibh_cfg_type, :string

      add :ibh_domain, :string

      add :oid_ibh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRTX_DET") do
      add :grtx_indx, :integer

      add :grtx_seq, :integer

      add :grtx_text, :string

      add :grtx_user1, :string

      add :grtx_user2, :string

      add :grtx_fmt_txt, :string

      add :grtx__qadc01, :string

      add :grtx_domain, :string

      add :oid_grtx_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GL_CTRL") do
      add :gl_ar_acct, :string

      add :gl_ar_cc, :string

      add :gl_disc_acct, :string

      add :gl__qadc01, :string

      add :gl__qadc03, :string

      add :gl__qadc05, :string

      add :gl_term_acct, :string

      add :gl_fin_acct, :string

      add :gl_rtns_acct, :string

      add :gl_cs_acct, :string

      add :gl_disc_cc, :string

      add :gl__qadc02, :string

      add :gl__qadc04, :string

      add :gl__qadc06, :string

      add :gl_tax1_cc, :string

      add :gl_tax2_cc, :string

      add :gl_tax3_cc, :string

      add :gl_term_cc, :string

      add :gl_fin_cc, :string

      add :gl_rtns_cc, :string

      add :gl_cs_cc, :string

      add :gl_tax1_acct, :string

      add :gl_tax2_acct, :string

      add :gl_tax3_acct, :string

      add :gl_sls_acct, :string

      add :gl_sls_cc, :string

      add :gl_ap_acct, :string

      add :gl_ap_cc, :string

      add :gl_pur_acct, :string

      add :gl_pur_cc, :string

      add :gl_inv_acct, :string

      add :gl_inv_cc, :string

      add :gl_dscr_acct, :string

      add :gl_dscr_cc, :string

      add :gl_wip_acct, :string

      add :gl_wip_cc, :string

      add :gl_cog_acct, :string

      add :gl_cog_cc, :string

      add :gl_scrp_acct, :string

      add :gl_scrp_cc, :string

      add :gl_apds_acct, :string

      add :gl_apds_cc, :string

      add :gl_verify, :boolean

      add :gl_ppv_acct, :string

      add :gl_ppv_cc, :string

      add :gl_rcpt_acct, :string

      add :gl_rcpt_cc, :string

      add :gl_bdn_acct, :string

      add :gl_bdn_cc, :string

      add :gl_lbr_acct, :string

      add :gl_lbr_cc, :string

      add :gl_lvar_acct, :string

      add :gl_lvar_cc, :string

      add :gl_ot_acct, :string

      add :gl_ot_cc, :string

      add :gl_cop_acct, :string

      add :gl_cop_cc, :string

      add :gl_wvar_acct, :string

      add :gl_wvar_cc, :string

      add :gl_base_curr, :string

      add :gl_symbol, :string

      add :gl_user_acct, :string

      add :gl_user_cc, :string

      add :gl_entity, :string

      add :gl__qad01, :integer

      add :gl_user1, :string

      add :gl_user2, :string

      add :gl_index1, :integer

      add :gl_vat, :boolean

      add :gl_ex_round, :integer

      add :gl_can, :boolean

      add :gl_cchg_acct, :string

      add :gl_cchg_cc, :string

      add :gl_xfer_acct, :string

      add :gl_xfer_cc, :string

      add :gl_cmtl_acct, :string

      add :gl_cmtl_cc, :string

      add :gl_clbr_acct, :string

      add :gl_clbr_cc, :string

      add :gl_cbdn_acct, :string

      add :gl_cbdn_cc, :string

      add :gl_covh_acct, :string

      add :gl_covh_cc, :string

      add :gl_csub_acct, :string

      add :gl_csub_cc, :string

      add :gl_apvr_acct, :string

      add :gl_apvr_cc, :string

      add :gl_apvu_acct, :string

      add :gl_apvu_cc, :string

      add :gl_bvar_acct, :string

      add :gl_bvar_cc, :string

      add :gl_lvrr_acct, :string

      add :gl_lvrr_cc, :string

      add :gl_bvrr_acct, :string

      add :gl_bvrr_cc, :string

      add :gl_ovh_acct, :string

      add :gl_ovh_cc, :string

      add :gl__qadl01, :boolean

      add :gl_sub_len, :integer

      add :gl_mvar_acct, :string

      add :gl_mvar_cc, :string

      add :gl_mvrr_acct, :string

      add :gl_mvrr_cc, :string

      add :gl_svar_acct, :string

      add :gl_svar_cc, :string

      add :gl_svrr_acct, :string

      add :gl_svrr_cc, :string

      add :gl__qadc07, :string

      add :gl__qadc08, :string

      add :gl_flr_acct, :string

      add :gl_flr_cc, :string

      add :gl_esls_acct, :string

      add :gl_esls_cc, :string

      add :gl_tax_type, :string

      add :gl_frtapp_acct, :string

      add :gl_frtapp_cc, :string

      add :gl_frtacc_acct, :string

      add :gl_frtacc_cc, :string

      add :gl_bk_val, :string

      add :gl_apvrx_acct, :string

      add :gl_apvrx_cc, :string

      add :gl_apvux_acct, :string

      add :gl_apvux_cc, :string

      add :gl_rcptx_acct, :string

      add :gl_rcptx_cc, :string

      add :gl_crterms_acct, :string

      add :gl_crterms_cc, :string

      add :gl_late_acct, :string

      add :gl_late_cc, :string

      add :gl_xvar_acct, :string

      add :gl_xvar_cc, :string

      add :gl_rnd_mthd, :string

      add :gl_lang, :string

      add :gl_fslbr_acct, :string

      add :gl_fslbr_cc, :string

      add :gl_fsbdn_acct, :string

      add :gl_fsbdn_cc, :string

      add :gl_fsexp_acct, :string

      add :gl_fsexp_cc, :string

      add :gl_fsexd_acct, :string

      add :gl_fsexd_cc, :string

      add :gl_fsrc_inv_acct, :string

      add :gl_fsrc_inv_cc, :string

      add :gl_fscm_inv_acct, :string

      add :gl_fscm_inv_cc, :string

      add :gl_rmar_acct, :string

      add :gl_rmar_cc, :string

      add :gl_ex_rnd_acct, :string

      add :gl_ex_rnd_cc, :string

      add :gl_ex_ratetype, :string

      add :gl_ugain_acct, :string

      add :gl_ugain_cc, :string

      add :gl_uloss_acct, :string

      add :gl_uloss_cc, :string

      add :gl_rgain_acct, :string

      add :gl_rgain_cc, :string

      add :gl_rloss_acct, :string

      add :gl_rloss_cc, :string

      add :gl_apds_sub, :string

      add :gl_apvrx_sub, :string

      add :gl_apvr_sub, :string

      add :gl_apvux_sub, :string

      add :gl_apvu_sub, :string

      add :gl_ap_sub, :string

      add :gl_ar_sub, :string

      add :gl_bdn_sub, :string

      add :gl_bvar_sub, :string

      add :gl_bvrr_sub, :string

      add :gl_cbdn_sub, :string

      add :gl_cchg_sub, :string

      add :gl_clbr_sub, :string

      add :gl_cmtl_sub, :string

      add :gl_cog_sub, :string

      add :gl_cop_sub, :string

      add :gl_covh_sub, :string

      add :gl_crterms_sub, :string

      add :gl_csub_sub, :string

      add :gl_cs_sub, :string

      add :gl_disc_sub, :string

      add :gl_dscr_sub, :string

      add :gl_ex_rnd_sub, :string

      add :gl_fin_sub, :string

      add :gl_flr_sub, :string

      add :gl_frtacc_sub, :string

      add :gl_frtapp_sub, :string

      add :gl_fsbdn_sub, :string

      add :gl_fscm_inv_sub, :string

      add :gl_fsexd_sub, :string

      add :gl_fsexp_sub, :string

      add :gl_fslbr_sub, :string

      add :gl_fsrc_inv_sub, :string

      add :gl_inv_sub, :string

      add :gl_late_sub, :string

      add :gl_lbr_sub, :string

      add :gl_lvar_sub, :string

      add :gl_lvrr_sub, :string

      add :gl_mvar_sub, :string

      add :gl_mvrr_sub, :string

      add :gl_ot_sub, :string

      add :gl_ovh_sub, :string

      add :gl_ppv_sub, :string

      add :gl_pur_sub, :string

      add :gl_rcptx_sub, :string

      add :gl_rcpt_sub, :string

      add :gl_rgain_sub, :string

      add :gl_rloss_sub, :string

      add :gl_rmar_sub, :string

      add :gl_rtns_sub, :string

      add :gl_scrp_sub, :string

      add :gl_sls_sub, :string

      add :gl_svar_sub, :string

      add :gl_svrr_sub, :string

      add :gl_term_sub, :string

      add :gl_txap_acct, :string

      add :gl_txap_sub, :string

      add :gl_txap_cc, :string

      add :gl_txapr_acct, :string

      add :gl_txapr_sub, :string

      add :gl_txapr_cc, :string

      add :gl_txar_acct, :string

      add :gl_txar_sub, :string

      add :gl_txar_cc, :string

      add :gl_txara_acct, :string

      add :gl_txara_sub, :string

      add :gl_txara_cc, :string

      add :gl_ugain_sub, :string

      add :gl_uloss_sub, :string

      add :gl_user_sub, :string

      add :gl_wip_sub, :string

      add :gl_wvar_sub, :string

      add :gl_xfer_sub, :string

      add :gl_xvar_sub, :string

      add :gl_fsdef_acct, :string

      add :gl_fsdef_sub, :string

      add :gl_fsdef_cc, :string

      add :gl_fsaccr_acct, :string

      add :gl_fsaccr_sub, :string

      add :gl_fsaccr_cc, :string

      add :gl_timezone, :string

      add :gl_domain, :string

      add :oid_gl_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLEC_DET") do
      add :glec_domain, :string

      add :glec_cons_ref, :string

      add :glec_cons_rflag, :boolean

      add :glec_cons_line, :integer

      add :glec_sub_domain, :string

      add :glec_sub_ref, :string

      add :glec_sub_rflag, :boolean

      add :glec_sub_line, :integer

      add :glec_mod_userid, :string

      add :glec_mod_date, :naive_datetime

      add :glec_user1, :string

      add :glec_user2, :string

      add :glec__qadc01, :string

      add :glec__qadc02, :string

      add :glec_cons_entity, :string

      add :glec_sub_entity, :string

      add :oid_glec_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FTCH_HIST") do
      add :ftch_desc, :string

      add :ftch_eff_date, :naive_datetime

      add :ftch_eng_code, :string

      add :ftch_ent_date, :naive_datetime

      add :ftch_model, :string

      add :ftch_nbr, :string

      add :ftch_part, :string

      add :ftch_serial, :string

      add :ftch_swapped, :boolean

      add :ftch_trans, :string

      add :ftch_trnbr, :integer

      add :ftch__chr01, :string

      add :ftch__dte01, :naive_datetime

      add :ftch__log01, :boolean

      add :ftch_prior_value, :string

      add :ftch__qadt01, :naive_datetime

      add :ftch__qadl01, :boolean

      add :ftch_mod_date, :naive_datetime

      add :ftch_mod_userid, :string

      add :ftch_user1, :string

      add :ftch_user2, :string

      add :ftch__qadc02, :string

      add :ftch__qadd01, :decimal

      add :ftch_domain, :string

      add :oid_ftch_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GR_CTRL") do
      add :gr_index1, :integer

      add :gr_format, :string

      add :gr_qtr_lbl, :string

      add :gr_ac_cmmts, :boolean

      add :gr_rg_cmmts, :boolean

      add :gr_cg_cmmts, :boolean

      add :gr_rp_cmmts, :boolean

      add :gr_round, :string

      add :gr_rg_width, :integer

      add :gr_run_id, :integer

      add :gr_col_width, :integer

      add :gr_precedence, :boolean

      add :gr_per, :integer

      add :gr_year, :integer

      add :gr_cyre, :string

      add :gr_cyis, :string

      add :gr_txt_ix, :integer

      add :gr_user1, :string

      add :gr_user2, :string

      add :gr__qadc01, :string

      add :gr_domain, :string

      add :oid_gr_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRI_MSTR") do
      add :gri_run_id, :integer

      add :gri_report, :string

      add :gri_date, :naive_datetime

      add :gri_userid, :string

      add :gri_time, :string

      add :gri_lab_bc, :integer

      add :gri_format, :string

      add :gri_round, :string

      add :gri_status, :boolean

      add :gri_prt_wrk, :boolean

      add :gri_per, :integer

      add :gri_year, :integer

      add :gri_text_ix, :integer

      add :gri_defprt, :string

      add :gri_mrg_top, :integer

      add :gri_mrg_bot, :integer

      add :gri_mrg_left, :integer

      add :gri_mrg_right, :integer

      add :gri_ovr_code, :string

      add :gri_ovr_type, :string

      add :gri_lab_width, :integer

      add :gri_cont_pg, :boolean

      add :gri_filtered, :boolean

      add :gri_paginated, :boolean

      add :gri_zero_suppress, :string

      add :gri_desc, :string

      add :gri_user1, :string

      add :gri_user2, :string

      add :gri__qadc01, :string

      add :gri_domain, :string

      add :oid_gri_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRBG_DET") do
      add :grbg_acc, :string

      add :grbg_cc, :string

      add :grbg_project, :string

      add :grbg_year, :integer

      add :grbg_per, :integer

      add :grbg_amt, :decimal

      add :grbg_entity, :string

      add :grbg_code, :string

      add :grbg_user1, :string

      add :grbg_user2, :string

      add :grbg_sub, :string

      add :grbg_beg_bal, :decimal

      add :grbg_ytd_bal, :decimal

      add :grbg_per_bal, :decimal

      add :grbg__qadc01, :string

      add :grbg_domain, :string

      add :oid_grbg_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLTM_MSTR") do
      add :gltm_entity, :string

      add :gltm_acct, :string

      add :gltm_match_nbr, :integer

      add :gltm_eff_dt, :naive_datetime

      add :gltm_ref, :string

      add :gltm_rflag, :boolean

      add :gltm_line, :integer

      add :gltm_mod_userid, :string

      add :gltm_mod_date, :naive_datetime

      add :gltm_user1, :string

      add :gltm_user2, :string

      add :gltm_userd01, :decimal

      add :gltm_useri01, :integer

      add :gltm_userl01, :boolean

      add :gltm_usert01, :naive_datetime

      add :gltm__qadc01, :string

      add :gltm__qadc02, :string

      add :gltm__qadd01, :decimal

      add :gltm__qadi01, :integer

      add :gltm__qadl01, :boolean

      add :gltm__qadt01, :naive_datetime

      add :gltm_domain, :string

      add :oid_gltm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRV_DET") do
      add :grv_acc, :string

      add :grv_cc, :string

      add :grv_entity, :string

      add :grv_project, :string

      add :grv_sub, :string

      add :grv_user1, :string

      add :grv_user2, :string

      add :grv__qadc01, :string

      add :grv_domain, :string

      add :oid_grv_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRAC_DET") do
      add :grac_acc, :string

      add :grac_cc, :string

      add :grac_entity, :string

      add :grac_project, :string

      add :grac_year, :integer

      add :grac_per, :integer

      add :grac_amt, :decimal

      add :grac_curr_amt, :decimal

      add :grac_user1, :string

      add :grac_user2, :string

      add :grac_sub, :string

      add :grac_beg_bal, :decimal

      add :grac_beg_cbal, :decimal

      add :grac_ytd_bal, :decimal

      add :grac_ytd_cbal, :decimal

      add :grac_per_bal, :decimal

      add :grac_per_cbal, :decimal

      add :grac__qadc01, :string

      add :grac_dr_amt, :decimal

      add :grac_cr_amt, :decimal

      add :grac_cr_curr_amt, :decimal

      add :grac_dr_curr_amt, :decimal

      add :grac_ytd_cr_amt, :decimal

      add :grac_ytd_dr_amt, :decimal

      add :grac_ytd_cr_curr_amt, :decimal

      add :grac_ytd_dr_curr_amt, :decimal

      add :grac_beg_dr_bal, :decimal

      add :grac_beg_dr_cbal, :decimal

      add :grac_beg_cr_bal, :decimal

      add :grac_beg_cr_cbal, :decimal

      add :grac_domain, :string

      add :oid_grac_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLPTR_HIST") do
      add :glptr_eff_date, :naive_datetime

      add :glptr_prt_date, :naive_datetime

      add :glptr_prot_nbr, :integer

      add :glptr_entity, :string

      add :glptr_ref, :string

      add :glptr_user1, :string

      add :glptr_user2, :string

      add :glptr_mod_userid, :string

      add :glptr_mod_date, :naive_datetime

      add :glptr__qadc01, :string

      add :glptr__qadc02, :string

      add :glptr_domain, :string

      add :oid_glptr_hist, :decimal

      add :glptr_rflag, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FT_MSTR") do
      add :ft_terms, :string

      add :ft_type, :string

      add :ft_desc, :string

      add :ft_user1, :string

      add :ft_user2, :string

      add :ft__chr01, :string

      add :ft__chr02, :string

      add :ft__chr03, :string

      add :ft__chr04, :string

      add :ft__chr05, :string

      add :ft__chr06, :string

      add :ft__chr07, :string

      add :ft__chr08, :string

      add :ft__dec01, :decimal

      add :ft__dec02, :decimal

      add :ft__dte01, :naive_datetime

      add :ft__dte02, :naive_datetime

      add :ft__log01, :boolean

      add :ft__log02, :boolean

      add :ft_accrual_level, :string

      add :ft_lc_charge, :string

      add :ft_domain, :string

      add :oid_ft_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRAS_DET") do
      add :gras_an_code, :string

      add :gras_sel_low, :string

      add :gras_sel_high, :string

      add :gras_include, :boolean

      add :gras_gl_type, :string

      add :gras_user1, :string

      add :gras_user2, :string

      add :gras__qadc01, :string

      add :gras_domain, :string

      add :oid_gras_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GIMD_MSTR") do
      add :gimd_app_code, :string

      add :gimd_model_name, :string

      add :gimd_ref_key, :integer

      add :gimd_mod_date, :naive_datetime

      add :gimd_mod_userid, :string

      add :gimd_model_desc, :string

      add :gimd_user1, :string

      add :gimd_user2, :string

      add :gimd__qadc01, :string

      add :gimd__qadc02, :string

      add :gimd_domain, :string

      add :oid_gimd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FPD_COST") do
      add :fpd_part, :string

      add :fpd_site, :string

      add :fpd_price, :decimal

      add :fpd_rate1, :decimal

      add :fpd_cost1, :decimal

      add :fpd_user1, :string

      add :fpd_user2, :string

      add :fpd__chr01, :string

      add :fpd__chr02, :string

      add :fpd__chr03, :string

      add :fpd__chr04, :string

      add :fpd__chr05, :string

      add :fpd__dec01, :decimal

      add :fpd__dec02, :decimal

      add :fpd__dec03, :decimal

      add :fpd__dec04, :decimal

      add :fpd__dec05, :decimal

      add :fpd_sim, :string

      add :fpd_rate2, :decimal

      add :fpd_cost2, :decimal

      add :fpd_rate3, :decimal

      add :fpd_cost3, :decimal

      add :fpd_rate4, :decimal

      add :fpd_cost4, :decimal

      add :fpd_rate5, :decimal

      add :fpd_cost5, :decimal

      add :fpd_domain, :string

      add :oid_fpd_cost, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLSD_DET") do
      add :flsd_site, :string

      add :flsd_production_line, :string

      add :flsd_due_date, :naive_datetime

      add :flsd_seq, :integer

      add :flsd_due_time, :integer

      add :flsd_part, :string

      add :flsd_flow_wo_nbr, :string

      add :flsd_flow_wo_lot, :string

      add :flsd_wo_nbr, :string

      add :flsd_wo_lot, :string

      add :flsd_so_nbr, :string

      add :flsd_sod_line, :integer

      add :flsd_note, :string

      add :flsd_posted_to_rep, :boolean

      add :flsd_closed, :boolean

      add :flsd_qty_ord, :decimal

      add :flsd_qty_comp, :decimal

      add :flsd_cmtindx, :integer

      add :flsd_mod_userid, :string

      add :flsd_mod_date, :naive_datetime

      add :flsd_user1, :string

      add :flsd_user2, :string

      add :flsd_userc03, :string

      add :flsd_userd01, :decimal

      add :flsd_useri01, :integer

      add :flsd_userl01, :boolean

      add :flsd_usert01, :naive_datetime

      add :flsd__qadc01, :string

      add :flsd__qadc02, :string

      add :flsd__qadc03, :string

      add :flsd__qadc04, :string

      add :flsd__qadc05, :string

      add :flsd__qadc06, :string

      add :flsd__qadd01, :decimal

      add :flsd__qadd02, :decimal

      add :flsd__qadi01, :integer

      add :flsd__qadi02, :integer

      add :flsd__qadl01, :boolean

      add :flsd__qadl02, :boolean

      add :flsd__qadt01, :naive_datetime

      add :flsd__qadt02, :naive_datetime

      add :flsd_shift, :integer

      add :flsd_knpd_keyid, :decimal

      add :flsd_domain, :string

      add :oid_flsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRAD_DET") do
      add :grad_an_code, :string

      add :grad_gl_type, :string

      add :grad_gl_code, :string

      add :grad_user1, :string

      add :grad_user2, :string

      add :grad__qadc01, :string

      add :grad_domain, :string

      add :oid_grad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FWK_MSTR") do
      add :fwk_ca_int_type, :string

      add :fwk_desc, :string

      add :fwk_egs_type, :string

      add :fwk_fcg_code, :string

      add :fwk_fixed_labor, :boolean

      add :fwk_fixed_price, :boolean

      add :fwk_repair_ctr, :boolean

      add :fwk__chr01, :string

      add :fwk__chr02, :string

      add :fwk__chr03, :string

      add :fwk__chr04, :string

      add :fwk__dec01, :decimal

      add :fwk__dec02, :decimal

      add :fwk__dec03, :decimal

      add :fwk__dte01, :naive_datetime

      add :fwk__dte02, :naive_datetime

      add :fwk__dte03, :naive_datetime

      add :fwk__log01, :boolean

      add :fwk__log02, :boolean

      add :fwk__log03, :boolean

      add :fwk__qadc01, :string

      add :fwk__qadc02, :string

      add :fwk__qadc03, :string

      add :fwk__qadc04, :string

      add :fwk__qadd01, :naive_datetime

      add :fwk__qadd02, :naive_datetime

      add :fwk__qadd03, :naive_datetime

      add :fwk__qadde01, :decimal

      add :fwk__qadde02, :decimal

      add :fwk__qadde03, :decimal

      add :fwk__qadl01, :boolean

      add :fwk__qadl02, :boolean

      add :fwk__qadl03, :boolean

      add :fwk_user1, :string

      add :fwk_user2, :string

      add :fwk_mod_userid, :string

      add :fwk_mod_date, :string

      add :fwk_domain, :string

      add :oid_fwk_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSD_DET") do
      add :fsd_loc, :string

      add :fsd_lotser, :string

      add :fsd_qty_tran, :decimal

      add :fsd_site, :string

      add :fsd_user1, :string

      add :fsd_user2, :string

      add :fsd_ref, :string

      add :fsd_rev, :string

      add :fsd_nbr, :string

      add :fsd_line, :integer

      add :fsd_status, :string

      add :fsd_qty_post, :decimal

      add :fsd_file, :string

      add :fsd_part, :string

      add :fsd_file_line, :integer

      add :fsd_ret_loc, :string

      add :fsd_ret_site, :string

      add :fsd__chr01, :string

      add :fsd__chr02, :string

      add :fsd__int01, :integer

      add :fsd__dec01, :decimal

      add :fsd__log01, :boolean

      add :fsd__qadc01, :string

      add :fsd__qadc02, :string

      add :fsd__qadi01, :integer

      add :fsd__qadd01, :decimal

      add :fsd__qadl01, :boolean

      add :fsd_inv_ref, :string

      add :fsd_isb_ref, :integer

      add :fsd__qadc03, :string

      add :fsd__qadi02, :integer

      add :fsd__qadd02, :decimal

      add :fsd__qadl02, :boolean

      add :fsd_domain, :string

      add :oid_fsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FPCI_MSTR") do
      add :fpci_index, :string

      add :fpci_mod_date, :naive_datetime

      add :fpci_reval_link, :decimal

      add :fpci_userid, :string

      add :fpci_values, :decimal

      add :fpci_year, :integer

      add :fpci__chr01, :string

      add :fpci__chr02, :string

      add :fpci__chr03, :string

      add :fpci__chr04, :string

      add :fpci__dec01, :decimal

      add :fpci__dec02, :decimal

      add :fpci__dec03, :decimal

      add :fpci__dte01, :naive_datetime

      add :fpci__dte02, :naive_datetime

      add :fpci__dte03, :naive_datetime

      add :fpci__log01, :boolean

      add :fpci__log02, :boolean

      add :fpci__log03, :boolean

      add :fpci__qadc01, :string

      add :fpci__qadc02, :string

      add :fpci__qadc03, :string

      add :fpci__qadc04, :string

      add :fpci__qadd01, :naive_datetime

      add :fpci__qadd02, :naive_datetime

      add :fpci__qadd03, :naive_datetime

      add :fpci__qadde01, :decimal

      add :fpci__qadde02, :decimal

      add :fpci__qadde03, :decimal

      add :fpci__qadl01, :boolean

      add :fpci__qadl02, :boolean

      add :fpci__qadl03, :boolean

      add :fpci_user1, :string

      add :fpci_user2, :string

      add :fpci_domain, :string

      add :oid_fpci_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FCT_MSTR") do
      add :fct_type, :string

      add :fct_desc, :string

      add :fct_sched_type, :integer

      add :fct_user1, :string

      add :fct_user2, :string

      add :fct__chr01, :string

      add :fct__chr02, :string

      add :fct__int01, :integer

      add :fct__int02, :integer

      add :fct__log01, :boolean

      add :fct__log02, :boolean

      add :fct__qadc01, :string

      add :fct__qadc02, :string

      add :fct__qadi01, :integer

      add :fct__qadi02, :integer

      add :fct__qadl01, :boolean

      add :fct__qadl02, :boolean

      add :fct_mod_userid, :string

      add :fct_mod_date, :naive_datetime

      add :fct_domain, :string

      add :oid_fct_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLTMD_DET") do
      add :gltmd_acct, :string

      add :gltmd_entity, :string

      add :gltmd_line, :integer

      add :gltmd_match_nbr, :integer

      add :gltmd_mod_date, :naive_datetime

      add :gltmd_mod_userid, :string

      add :gltmd_ref, :string

      add :gltmd_rflag, :boolean

      add :gltmd_user1, :string

      add :gltmd_user2, :string

      add :gltmd_userd01, :decimal

      add :gltmd_useri01, :integer

      add :gltmd_userl01, :boolean

      add :gltmd_usert01, :naive_datetime

      add :gltmd__qadc01, :string

      add :gltmd__qadc02, :string

      add :gltmd__qadd01, :decimal

      add :gltmd__qadi01, :integer

      add :gltmd__qadl01, :boolean

      add :gltmd__qadt01, :naive_datetime

      add :gltmd_cons_trans, :boolean

      add :gltmd_cons_amt, :decimal

      add :gltmd_domain, :string

      add :oid_gltmd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GIP_DET") do
      add :gip_ref_key, :integer

      add :gip_attribute, :string

      add :gip_app_code, :string

      add :gip_logical, :boolean

      add :gip_integer, :integer

      add :gip_char, :string

      add :gip_decimal, :decimal

      add :gip_table_name, :string

      add :gip_date, :naive_datetime

      add :gip_mod_date, :naive_datetime

      add :gip_mod_userid, :string

      add :gip_user1, :string

      add :gip_user2, :string

      add :gip__qadc01, :string

      add :gip__qadc02, :string

      add :gip_domain, :string

      add :oid_gip_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSP1_PLN") do
      add :fsp1_beg_inv, :decimal

      add :fsp1_bklg_act, :decimal

      add :fsp1_bklg_fcst, :decimal

      add :fsp1_cost_act, :decimal

      add :fsp1_cost_fcst, :decimal

      add :fsp1_part, :string

      add :fsp1_percent, :decimal

      add :fsp1_plan_id, :string

      add :fsp1_prod_rate, :decimal

      add :fsp1_sim_rate, :decimal

      add :fsp1_site, :string

      add :fsp1_src_pct, :decimal

      add :fsp1_target, :decimal

      add :fsp1_user1, :string

      add :fsp1_user2, :string

      add :fsp1_year, :integer

      add :fsp1_mod_userid, :string

      add :fsp1_mod_date, :naive_datetime

      add :fsp1__qadc01, :string

      add :fsp1_domain, :string

      add :oid_fsp1_pln, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FPST_MSTR") do
      add :fpst_desc, :string

      add :fpst_good, :boolean

      add :fpst_scrap, :boolean

      add :fpst_status, :string

      add :fpst_return, :boolean

      add :fpst_exchange, :boolean

      add :fpst_pending, :boolean

      add :fpst_mod_date, :naive_datetime

      add :fpst_mod_userid, :string

      add :fpst_user1, :string

      add :fpst_user2, :string

      add :fpst__chr01, :string

      add :fpst__chr02, :string

      add :fpst__log01, :boolean

      add :fpst__log02, :boolean

      add :fpst__dte01, :naive_datetime

      add :fpst__dec01, :decimal

      add :fpst__qadc01, :string

      add :fpst__qadc02, :string

      add :fpst__qadl01, :boolean

      add :fpst__qadl02, :boolean

      add :fpst__qadt01, :naive_datetime

      add :fpst__qade01, :decimal

      add :fpst_domain, :string

      add :oid_fpst_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FM_MSTR") do
      add :fm_fpos, :integer

      add :fm_desc, :string

      add :fm_sums_into, :integer

      add :fm_type, :string

      add :fm_dr_cr, :boolean

      add :fm_page_brk, :boolean

      add :fm_header, :boolean

      add :fm_total, :boolean

      add :fm_skip, :boolean

      add :fm_underln, :boolean

      add :fm_user1, :string

      add :fm_user2, :string

      add :fm_cc_sort, :boolean

      add :fm_sub_sort, :boolean

      add :fm__qadc01, :string

      add :fm_domain, :string

      add :oid_fm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FABCHD_DET") do
      add :fabchd_fabch_id, :string

      add :fabchd_desc, :string

      add :fabchd_fa_id, :string

      add :fabchd_facls_id, :string

      add :fabchd_faloc_id, :string

      add :fabchd_puramt, :decimal

      add :fabchd_startdt, :naive_datetime

      add :fabchd_ins_co, :string

      add :fabchd_ins_date, :naive_datetime

      add :fabchd_salvamt, :decimal

      add :fabchd_ins_nbr, :string

      add :fabchd_insamt, :decimal

      add :fabchd_uplife, :integer

      add :fabchd_upper, :integer

      add :fabchd_um, :string

      add :fabchd_qty, :integer

      add :fabchd_user1, :string

      add :fabchd_user2, :string

      add :fabchd_mod_user, :string

      add :fabchd_mod_date, :naive_datetime

      add :fabchd__chr01, :string

      add :fabchd__dec01, :decimal

      add :fabchd__log01, :boolean

      add :fabchd__dte01, :naive_datetime

      add :fabchd__int01, :integer

      add :fabchd__qadc01, :string

      add :fabchd__qadd01, :decimal

      add :fabchd__qadl01, :boolean

      add :fabchd__qadi01, :integer

      add :fabchd__qadt01, :naive_datetime

      add :fabchd_domain, :string

      add :oid_fabchd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSU_MSTR") do
      add :fsu_userid, :string

      add :fsu_ca_time_wnd, :boolean

      add :fsu_ca_wo_wnd, :boolean

      add :fsu_dflt_pri, :integer

      add :fsu_dflt_que, :string

      add :fsu_esc_dflt, :string

      add :fsu_que_prog, :integer

      add :fsu_quote_que, :string

      add :fsu_timezone, :string

      add :fsu__qadc02, :string

      add :fsu__qadc03, :string

      add :fsu__qadc04, :string

      add :fsu__qadc05, :string

      add :fsu__qadl01, :boolean

      add :fsu__qadl02, :boolean

      add :fsu__qadl03, :boolean

      add :fsu__qadl04, :boolean

      add :fsu__qadl05, :boolean

      add :fsu__qadi01, :integer

      add :fsu__qadi02, :integer

      add :fsu__qadi03, :integer

      add :fsu__qadi04, :integer

      add :fsu__qadi05, :integer

      add :fsu_user1, :string

      add :fsu_user2, :string

      add :fsu__qadc06, :string

      add :fsu__qadt01, :naive_datetime

      add :fsu__qadt02, :naive_datetime

      add :fsu_domain, :string

      add :oid_fsu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FRZD_DET") do
      add :frzd_fr_list, :string

      add :frzd_site, :string

      add :frzd_zone, :string

      add :frzd_post_st, :string

      add :frzd_post_en, :string

      add :frzd_start, :naive_datetime

      add :frzd_end, :naive_datetime

      add :frzd_user1, :string

      add :frzd_user2, :string

      add :frzd__chr01, :string

      add :frzd__chr02, :string

      add :frzd__chr03, :string

      add :frzd__chr04, :string

      add :frzd__chr05, :string

      add :frzd__chr06, :string

      add :frzd__chr07, :string

      add :frzd__chr08, :string

      add :frzd__dec01, :decimal

      add :frzd__dec02, :decimal

      add :frzd__dte01, :naive_datetime

      add :frzd__dte02, :naive_datetime

      add :frzd__log01, :boolean

      add :frzd__log02, :boolean

      add :frzd_domain, :string

      add :oid_frzd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FP1_PLAN") do
      add :fp1_beg_inv, :decimal

      add :fp1_bklg_act, :decimal

      add :fp1_bklg_fcst, :decimal

      add :fp1_cost_act, :decimal

      add :fp1_cost_fcst, :decimal

      add :fp1_part, :string

      add :fp1_site, :string

      add :fp1_target, :decimal

      add :fp1_user1, :string

      add :fp1_user2, :string

      add :fp1_year, :integer

      add :fp1_mod_userid, :string

      add :fp1_mod_date, :naive_datetime

      add :fp1__chr01, :string

      add :fp1__chr02, :string

      add :fp1__chr03, :string

      add :fp1__chr04, :string

      add :fp1__chr05, :string

      add :fp1__dec01, :decimal

      add :fp1__dec02, :decimal

      add :fp1__log01, :boolean

      add :fp1__log02, :boolean

      add :fp1__qadc01, :string

      add :fp1_domain, :string

      add :oid_fp1_plan, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLH_MSTR") do
      add :flh_field, :string

      add :flh_desc, :string

      add :flh_exec, :string

      add :flh_x, :integer

      add :flh_y, :integer

      add :flh_down, :integer

      add :flh_call_pgm, :string

      add :flh_user1, :string

      add :flh_user2, :string

      add :flh__qadc01, :string

      add :flh_mod_userid, :string

      add :flh_mod_date, :naive_datetime

      add :oid_flh_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPFIL_DET") do
      add :oid_eswpfil_det, :decimal

      add :oid_eswp_mstr, :decimal

      add :oid_esfil_mstr, :decimal

      add :eswpfil_mod_date, :naive_datetime

      add :eswpfil_mod_userid, :string

      add :eswpfil_user1, :string

      add :eswpfil_user2, :string

      add :eswpfil__qadc01, :string

      add :eswpfil__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLCT_DET") do
      add :glct_domain, :string

      add :glct_source_curr, :string

      add :glct_acc, :string

      add :glct_sub, :string

      add :glct_cc, :string

      add :glct_entity, :string

      add :glct_year, :integer

      add :glct_per, :integer

      add :glct_base_amt, :decimal

      add :glct_curr_amt, :decimal

      add :glct_mod_date, :naive_datetime

      add :glct_mod_userid, :string

      add :glct_user1, :string

      add :glct_user2, :string

      add :glct__qadc01, :string

      add :glct__qadc02, :string

      add :oid_glct_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FRM_MSTR") do
      add :frm_code, :string

      add :frm_desc, :string

      add :frm_curr, :string

      add :frm_um, :string

      add :frm_rate_qty, :decimal

      add :frm_user1, :string

      add :frm_user2, :string

      add :frm__qadc01, :string

      add :frm_domain, :string

      add :oid_frm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FN_MSTR") do
      add :fn_account_eng, :boolean

      add :fn_ca_desc, :string

      add :fn_ca_int_type, :string

      add :fn_ca_pri, :integer

      add :fn_ca_problem, :string

      add :fn_ca_que, :string

      add :fn_ca_severity, :string

      add :fn_ca_status, :string

      add :fn_ca_type, :string

      add :fn_cmtindx, :integer

      add :fn_combine, :boolean

      add :fn_comb_date, :naive_datetime

      add :fn_complete, :boolean

      add :fn_comp_date, :naive_datetime

      add :fn_copy_eco_cmt, :boolean

      add :fn_desc, :string

      add :fn_eff_date, :naive_datetime

      add :fn_ent_date, :naive_datetime

      add :fn_es_nbr, :string

      add :fn_from_eu_nbr, :string

      add :fn_from_part, :string

      add :fn_from_serial, :string

      add :fn_fr_ship_date, :naive_datetime

      add :fn_generated, :boolean

      add :fn_mod_date, :naive_datetime

      add :fn_nbr, :string

      add :fn_to_eu_nbr, :string

      add :fn_to_part, :string

      add :fn_to_serial, :string

      add :fn_to_ship_date, :naive_datetime

      add :fn_mod_userid, :string

      add :fn_ent_userid, :string

      add :fn_document, :string

      add :fn_model, :string

      add :fn_user1, :string

      add :fn_user2, :string

      add :fn__chr01, :string

      add :fn__chr02, :string

      add :fn__chr03, :string

      add :fn__chr04, :string

      add :fn__dec01, :decimal

      add :fn__dec02, :decimal

      add :fn__dec03, :decimal

      add :fn__dte01, :naive_datetime

      add :fn__dte02, :naive_datetime

      add :fn__dte03, :naive_datetime

      add :fn__log01, :boolean

      add :fn__log02, :boolean

      add :fn__log03, :boolean

      add :fn__qadc01, :string

      add :fn__qadc02, :string

      add :fn__qadc03, :string

      add :fn__qadc04, :string

      add :fn__qadt01, :naive_datetime

      add :fn__qadt02, :naive_datetime

      add :fn__qadt03, :naive_datetime

      add :fn__qade01, :decimal

      add :fn__qade02, :decimal

      add :fn__qade03, :decimal

      add :fn__qadl01, :boolean

      add :fn_top_level, :boolean

      add :fn__qadl03, :boolean

      add :fn_ca_opn_date, :naive_datetime

      add :fn_copy_cmmts, :boolean

      add :fn__qadl04, :boolean

      add :fn_domain, :string

      add :oid_fn_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLFF_MSTR") do
      add :flff_site, :string

      add :flff_production_line, :string

      add :flff_schedule_code, :string

      add :flff_period_number, :integer

      add :flff_pct, :decimal

      add :flff_mod_date, :naive_datetime

      add :flff_user1, :string

      add :flff_user2, :string

      add :flff_userc03, :string

      add :flff_userd01, :decimal

      add :flff_useri01, :integer

      add :flff_mod_userid, :string

      add :flff_userl01, :boolean

      add :flff_usert01, :naive_datetime

      add :flff__qadc01, :string

      add :flff__qadc02, :string

      add :flff__qadc03, :string

      add :flff__qadd01, :decimal

      add :flff__qadi01, :integer

      add :flff__qadl01, :boolean

      add :flff__qadt01, :naive_datetime

      add :flff_domain, :string

      add :oid_flff_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSP3_PLN") do
      add :fsp3_beg_inv, :decimal

      add :fsp3_prod_act, :decimal

      add :fsp3_prod_fcst, :decimal

      add :fsp3_ship_act, :decimal

      add :fsp3_ship_fcst, :decimal

      add :fsp3_part, :string

      add :fsp3_percent, :decimal

      add :fsp3_plan_id, :string

      add :fsp3_prod_rate, :decimal

      add :fsp3_sim_rate, :decimal

      add :fsp3_site, :string

      add :fsp3_src_pct, :decimal

      add :fsp3_target, :decimal

      add :fsp3_user1, :string

      add :fsp3_user2, :string

      add :fsp3_year, :integer

      add :fsp3_mod_userid, :string

      add :fsp3_mod_date, :naive_datetime

      add :fsp3__qadc01, :string

      add :fsp3_domain, :string

      add :oid_fsp3_pln, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FRD_DET") do
      add :frd_code, :string

      add :frd_weight, :decimal

      add :frd_rate, :decimal

      add :frd_user1, :string

      add :frd_user2, :string

      add :frd__qadc01, :string

      add :frd_domain, :string

      add :oid_frd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FNH_HIST") do
      add :fnh_account_eng, :boolean

      add :fnh_ca_desc, :string

      add :fnh_ca_int_type, :string

      add :fnh_ca_pri, :integer

      add :fnh_ca_problem, :string

      add :fnh_ca_que, :string

      add :fnh_ca_severity, :string

      add :fnh_ca_status, :string

      add :fnh_ca_type, :string

      add :fnh_cmtindx, :integer

      add :fnh_combine, :boolean

      add :fnh_complete, :boolean

      add :fnh_comp_date, :naive_datetime

      add :fnh_copy_eco_cmt, :boolean

      add :fnh_desc, :string

      add :fnh_eff_date, :naive_datetime

      add :fnh_ent_date, :naive_datetime

      add :fnh_esc_nbr, :string

      add :fnh_from_eu_nbr, :string

      add :fnh_from_part, :string

      add :fnh_from_serial, :string

      add :fnh_fr_ship_date, :naive_datetime

      add :fnh_generated, :boolean

      add :fnh_mod_date, :naive_datetime

      add :fnh_nbr, :string

      add :fnh_to_eu_nbr, :string

      add :fnh_to_part, :string

      add :fnh_to_serial, :string

      add :fnh_to_ship_date, :naive_datetime

      add :fnh__chr01, :string

      add :fnh__chr02, :string

      add :fnh__chr03, :string

      add :fnh__chr04, :string

      add :fnh__dec01, :decimal

      add :fnh__dec02, :decimal

      add :fnh__dec03, :decimal

      add :fnh__dte01, :naive_datetime

      add :fnh__dte02, :naive_datetime

      add :fnh__dte03, :naive_datetime

      add :fnh__log01, :boolean

      add :fnh__log02, :boolean

      add :fnh__log03, :boolean

      add :fnh__qadc01, :string

      add :fnh__qadc02, :string

      add :fnh__qadc03, :string

      add :fnh__qadc04, :string

      add :fnh__qadt01, :naive_datetime

      add :fnh__qadt02, :naive_datetime

      add :fnh__qadt03, :naive_datetime

      add :fnh__qade01, :decimal

      add :fnh__qade02, :decimal

      add :fnh__qade03, :decimal

      add :fnh__qadl01, :boolean

      add :fnh_top_level, :boolean

      add :fnh__qadl03, :boolean

      add :fnh_from_ca_nbr, :string

      add :fnh_to_ca_nbr, :string

      add :fnh_model, :string

      add :fnh_document, :string

      add :fnh_user1, :string

      add :fnh_user2, :string

      add :fnh_sequence, :integer

      add :fnh_mod_userid, :string

      add :fnh_ent_userid, :string

      add :fnh_ca_opn_date, :naive_datetime

      add :fnh_copy_cmmts, :boolean

      add :fnh__qadl04, :boolean

      add :fnh_domain, :string

      add :oid_fnh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FCG_MSTR") do
      add :fcg_billable, :boolean

      add :fcg_code, :string

      add :fcg_contract, :boolean

      add :fcg_desc, :string

      add :fcg_fix_billable, :boolean

      add :fcg_giveaway, :boolean

      add :fcg_index, :integer

      add :fcg_project, :boolean

      add :fcg_warranty, :boolean

      add :fcg__chr01, :string

      add :fcg__chr02, :string

      add :fcg__chr03, :string

      add :fcg__chr04, :string

      add :fcg__dec01, :decimal

      add :fcg__dec02, :decimal

      add :fcg__dec03, :decimal

      add :fcg__dte01, :naive_datetime

      add :fcg__dte02, :naive_datetime

      add :fcg__dte03, :naive_datetime

      add :fcg__log01, :boolean

      add :fcg__log02, :boolean

      add :fcg__log03, :boolean

      add :fcg__qadc01, :string

      add :fcg__qadc02, :string

      add :fcg__qadc03, :string

      add :fcg__qadc04, :string

      add :fcg__qadd01, :naive_datetime

      add :fcg__qadd02, :naive_datetime

      add :fcg__qadd03, :naive_datetime

      add :fcg__qadde01, :decimal

      add :fcg__qadde02, :decimal

      add :fcg__qadde03, :decimal

      add :fcg__qadl01, :boolean

      add :fcg__qadl02, :boolean

      add :fcg__qadl03, :boolean

      add :fcg_fix_index, :boolean

      add :fcg_covered, :boolean

      add :fcg_user1, :string

      add :fcg_user2, :string

      add :fcg_mod_userid, :string

      add :fcg_mod_date, :naive_datetime

      add :fcg_domain, :string

      add :oid_fcg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAL_MSTR") do
      add :fal_loc, :string

      add :fal_desc, :string

      add :fal_bldg, :string

      add :fal_dept, :string

      add :fal_cc, :string

      add :fal_ac_cc, :string

      add :fal_exp_cc, :string

      add :fal_sub, :string

      add :fal_ac_sub, :string

      add :fal_exp_sub, :string

      add :fal_userid, :string

      add :fal_mod_date, :naive_datetime

      add :fal_fa_loc, :string

      add :fal__qad01, :boolean

      add :fal__qad02, :string

      add :fal__qad03, :string

      add :fal_user1, :string

      add :fal_user2, :string

      add :oid_fal_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSP2_PLN") do
      add :fsp2_beg_inv, :decimal

      add :fsp2_inv_act, :decimal

      add :fsp2_inv_fcst, :decimal

      add :fsp2_ord_act, :decimal

      add :fsp2_ord_fcst, :decimal

      add :fsp2_part, :string

      add :fsp2_percent, :decimal

      add :fsp2_plan_id, :string

      add :fsp2_prod_rate, :decimal

      add :fsp2_sim_rate, :decimal

      add :fsp2_site, :string

      add :fsp2_src_pct, :decimal

      add :fsp2_target, :decimal

      add :fsp2_user1, :string

      add :fsp2_user2, :string

      add :fsp2_year, :integer

      add :fsp2_mod_userid, :string

      add :fsp2_mod_date, :naive_datetime

      add :fsp2__qadc01, :string

      add :fsp2_domain, :string

      add :oid_fsp2_pln, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FND_DET") do
      add :fnd_ca_nbr, :string

      add :fnd_comp_date, :naive_datetime

      add :fnd_ecm_nbr, :string

      add :fnd_nbr, :string

      add :fnd__chr01, :string

      add :fnd__chr02, :string

      add :fnd__chr03, :string

      add :fnd__chr04, :string

      add :fnd__dec01, :decimal

      add :fnd__dec02, :decimal

      add :fnd__dec03, :decimal

      add :fnd__dte01, :naive_datetime

      add :fnd__dte02, :naive_datetime

      add :fnd__dte03, :naive_datetime

      add :fnd__log01, :boolean

      add :fnd__log02, :boolean

      add :fnd__log03, :boolean

      add :fnd__qadc01, :string

      add :fnd__qadc02, :string

      add :fnd__qadc03, :string

      add :fnd__qadc04, :string

      add :fnd__qadt01, :naive_datetime

      add :fnd__qadt02, :naive_datetime

      add :fnd__qadt03, :naive_datetime

      add :fnd__qade01, :decimal

      add :fnd__qade02, :decimal

      add :fnd__qade03, :decimal

      add :fnd__qadl01, :boolean

      add :fnd__qadl02, :boolean

      add :fnd__qadl03, :boolean

      add :fnd_mod_userid, :string

      add :fnd_mod_date, :naive_datetime

      add :fnd_user1, :string

      add :fnd_user2, :string

      add :fnd_domain, :string

      add :oid_fnd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FCD_MSTR") do
      add :fcd_sv_code, :string

      add :fcd_ca_int_type, :string

      add :fcd_eu_type, :string

      add :fcd_fsc_code, :string

      add :fcd_fcg_covered, :string

      add :fcd_fcg_billable, :string

      add :fcd_fcg_fixed, :string

      add :fcd_user1, :string

      add :fcd_user2, :string

      add :fcd_mod_date, :naive_datetime

      add :fcd_mod_userid, :string

      add :fcd__chr01, :string

      add :fcd__chr02, :string

      add :fcd__int01, :integer

      add :fcd__dec01, :decimal

      add :fcd__dte01, :naive_datetime

      add :fcd__qadc01, :string

      add :fcd__qadc02, :string

      add :fcd__qadt01, :naive_datetime

      add :fcd__qadd01, :decimal

      add :fcd__qadi01, :integer

      add :fcd__log01, :boolean

      add :fcd__qadl01, :boolean

      add :fcd_fcg_contract, :string

      add :fcd_fcg_warranty, :string

      add :fcd_domain, :string

      add :oid_fcd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FALOC_MSTR") do
      add :faloc_id, :string

      add :faloc_desc, :string

      add :faloc_cc, :string

      add :faloc_sub, :string

      add :faloc_entity, :string

      add :faloc_mod_userid, :string

      add :faloc_mod_date, :naive_datetime

      add :faloc_user1, :string

      add :faloc_user2, :string

      add :faloc__chr01, :string

      add :faloc__dec01, :decimal

      add :faloc__log01, :boolean

      add :faloc__dte01, :naive_datetime

      add :faloc__int01, :integer

      add :faloc__qadc01, :string

      add :faloc__qadd01, :decimal

      add :faloc__qadi01, :integer

      add :faloc__qadt01, :naive_datetime

      add :faloc__qadl01, :boolean

      add :faloc__qadc02, :string

      add :faloc_domain, :string

      add :oid_faloc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSH_MSTR") do
      add :fsh_desc, :string

      add :fsh_code, :string

      add :fsh_covered, :boolean

      add :fsh_code_field, :string

      add :fsh_date, :naive_datetime

      add :fsh_user1, :string

      add :fsh_user2, :string

      add :fsh__qadc01, :string

      add :fsh_domain, :string

      add :oid_fsh_mstr, :decimal

      add :fsh_start_time, :string

      add :fsh_end_time, :string

      add :fsh_rsn_code, :string

      add :fsh_full_day, :boolean

      add :fsh_addr_line1, :string

      add :fsh_addr_line2, :string

      add :fsh_addr_line3, :string

      add :fsh_country, :string

      add :fsh_state, :string

      add :fsh_city, :string

      add :fsh_county, :string

      add :fsh_zip, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLSC_MSTR") do
      add :flsc_schedule_code, :string

      add :flsc_start_date, :naive_datetime

      add :flsc_period_code, :string

      add :flsc_sch_um, :string

      add :flsc_desc, :string

      add :flsc_flex_fences, :boolean

      add :flsc_physical_usage, :boolean

      add :flsc_time_usage, :boolean

      add :flsc_daily_time_usage, :boolean

      add :flsc_entry_mode, :boolean

      add :flsc_mod_date, :naive_datetime

      add :flsc_user1, :string

      add :flsc_user2, :string

      add :flsc_userc03, :string

      add :flsc_userd01, :decimal

      add :flsc_useri01, :integer

      add :flsc_mod_userid, :string

      add :flsc_userl01, :boolean

      add :flsc_usert01, :naive_datetime

      add :flsc__qadc01, :string

      add :flsc__qadc02, :string

      add :flsc__qadc03, :string

      add :flsc__qadd01, :decimal

      add :flsc__qadi01, :integer

      add :flsc__qadl01, :boolean

      add :flsc__qadt01, :naive_datetime

      add :flsc_sch_measurement, :string

      add :flsc_rate_expression, :string

      add :flsc__qadc04, :string

      add :flsc__qadc05, :string

      add :flsc__qadc06, :string

      add :flsc__qadd02, :decimal

      add :flsc__qadi02, :integer

      add :flsc__qadl02, :boolean

      add :flsc__qadt02, :naive_datetime

      add :flsc_domain, :string

      add :oid_flsc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FIS_MSTR") do
      add :fis_column, :integer

      add :fis_desc, :string

      add :fis_detail, :boolean

      add :fis_label, :string

      add :fis_order, :integer

      add :fis_row_type, :string

      add :fis_sort, :string

      add :fis_total, :boolean

      add :fis_include_fix, :boolean

      add :fis_mod_userid, :string

      add :fis_mod_date, :naive_datetime

      add :fis_user1, :string

      add :fis_user2, :string

      add :fis__chr01, :string

      add :fis__chr02, :string

      add :fis__dte01, :naive_datetime

      add :fis__dec01, :decimal

      add :fis__int01, :integer

      add :fis__log01, :boolean

      add :fis__qadc01, :string

      add :fis__qadc02, :string

      add :fis__qadt01, :naive_datetime

      add :fis__qade01, :decimal

      add :fis__qadi01, :integer

      add :fis__qadl01, :boolean

      add :fis_domain, :string

      add :oid_fis_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAUOP_DET") do
      add :fauop_fa_id, :string

      add :fauop_fabk_id, :string

      add :fauop_yrper, :string

      add :fauop_upper, :integer

      add :fauop_accup, :integer

      add :fauop_mod_userid, :string

      add :fauop_mod_date, :naive_datetime

      add :fauop_user1, :string

      add :fauop_user2, :string

      add :fauop__chr01, :string

      add :fauop__dec01, :decimal

      add :fauop__log01, :boolean

      add :fauop__dte01, :naive_datetime

      add :fauop__int01, :integer

      add :fauop__qadc01, :string

      add :fauop__qadd01, :decimal

      add :fauop__qadl01, :boolean

      add :fauop__qadi01, :integer

      add :fauop__qadt01, :naive_datetime

      add :fauop_domain, :string

      add :oid_fauop_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAC_CTRL") do
      add :fac__qadi01, :integer

      add :fac_so_rec, :boolean

      add :fac_wo_rec, :boolean

      add :fac_unit_qty, :boolean

      add :fac_user1, :string

      add :fac_user2, :string

      add :fac__qadc01, :string

      add :fac_domain, :string

      add :oid_fac_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FP3_PLAN") do
      add :fp3_beg_inv, :decimal

      add :fp3_prod_act, :decimal

      add :fp3_prod_fcst, :decimal

      add :fp3_ship_act, :decimal

      add :fp3_ship_fcst, :decimal

      add :fp3_part, :string

      add :fp3_site, :string

      add :fp3_target, :decimal

      add :fp3_apprv_list, :string

      add :fp3_wo_list, :string

      add :fp3_user1, :string

      add :fp3_user2, :string

      add :fp3_year, :integer

      add :fp3_mod_userid, :string

      add :fp3_mod_date, :naive_datetime

      add :fp3__chr01, :string

      add :fp3__chr02, :string

      add :fp3__chr03, :string

      add :fp3__chr04, :string

      add :fp3__chr05, :string

      add :fp3__dec01, :decimal

      add :fp3__dec02, :decimal

      add :fp3__log01, :boolean

      add :fp3__log02, :boolean

      add :fp3__qadc01, :string

      add :fp3_domain, :string

      add :oid_fp3_plan, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FF_MSTR") do
      add :ff_id, :string

      add :ff_user, :string

      add :ff_year, :integer

      add :ff_method, :integer

      add :ff_part, :string

      add :ff_cust, :string

      add :ff_date, :naive_datetime

      add :ff_time, :integer

      add :ff_his_yr, :integer

      add :ff_orig_fc, :decimal

      add :ff_adj_fc, :decimal

      add :ff_site, :string

      add :ff_user1, :string

      add :ff_user2, :string

      add :ff__qadc01, :string

      add :ff_domain, :string

      add :oid_ff_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAMT_MSTR") do
      add :famt_id, :string

      add :famt_type, :string

      add :famt_switchsl, :boolean

      add :famt_desc, :string

      add :famt_elife, :decimal

      add :famt_active, :boolean

      add :famt_perc, :decimal

      add :famt_salv, :boolean

      add :famt_conv, :string

      add :famt_actualdays, :boolean

      add :famt_mod_userid, :string

      add :famt_mod_date, :naive_datetime

      add :famt_user1, :string

      add :famt_user2, :string

      add :famt__chr01, :string

      add :famt__dec01, :decimal

      add :famt__log01, :boolean

      add :famt__dte01, :naive_datetime

      add :famt__int01, :integer

      add :famt__qadc01, :string

      add :famt__qadd01, :decimal

      add :famt__qadl01, :boolean

      add :famt__qadi01, :integer

      add :famt__qadt01, :naive_datetime

      add :famt__qadc02, :string

      add :famt_domain, :string

      add :oid_famt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FACL_CAL") do
      add :facl_id, :string

      add :facl_year, :integer

      add :facl_mod_userid, :string

      add :facl_mod_date, :naive_datetime

      add :facl_user1, :string

      add :facl_user2, :string

      add :facl__chr01, :string

      add :facl__dec01, :decimal

      add :facl__log01, :boolean

      add :facl__dte01, :naive_datetime

      add :facl__int01, :integer

      add :facl__qadc01, :string

      add :facl__qadd01, :decimal

      add :facl__qadl01, :boolean

      add :facl__qadi01, :integer

      add :facl__qadt01, :naive_datetime

      add :facl_domain, :string

      add :oid_facl_cal, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAADJ_MSTR") do
      add :faadj_fa_id, :string

      add :faadj_type, :string

      add :faadj_amt, :decimal

      add :faadj_yrper, :string

      add :faadj_life, :decimal

      add :faadj_resrv, :integer

      add :faadj_famt_id, :string

      add :faadj_fabk_id, :string

      add :faadj_migrate, :boolean

      add :faadj_mod_userid, :string

      add :faadj_mod_date, :naive_datetime

      add :faadj_user1, :string

      add :faadj_user2, :string

      add :faadj__chr01, :string

      add :faadj__dec01, :decimal

      add :faadj__log01, :boolean

      add :faadj__dte01, :naive_datetime

      add :faadj__int01, :integer

      add :faadj__qadc01, :string

      add :faadj__qadd01, :decimal

      add :faadj__qadl01, :boolean

      add :faadj__qadi01, :integer

      add :faadj__qadt01, :naive_datetime

      add :faadj_domain, :string

      add :oid_faadj_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FP2_PLAN") do
      add :fp2_beg_inv, :decimal

      add :fp2_inv_act, :decimal

      add :fp2_inv_fcst, :decimal

      add :fp2_ord_act, :decimal

      add :fp2_ord_fcst, :decimal

      add :fp2_part, :string

      add :fp2_site, :string

      add :fp2_target, :decimal

      add :fp2_user1, :string

      add :fp2_user2, :string

      add :fp2_year, :integer

      add :fp2_mod_userid, :string

      add :fp2_mod_date, :naive_datetime

      add :fp2__chr01, :string

      add :fp2__chr02, :string

      add :fp2__chr03, :string

      add :fp2__chr04, :string

      add :fp2__chr05, :string

      add :fp2__dec01, :decimal

      add :fp2__dec02, :decimal

      add :fp2__log01, :boolean

      add :fp2__log02, :boolean

      add :fp2__qadc01, :string

      add :fp2_domain, :string

      add :oid_fp2_plan, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FC_DET") do
      add :fc_part, :string

      add :fc_ref, :string

      add :fc_qty, :decimal

      add :fc_start, :naive_datetime

      add :fc_end, :naive_datetime

      add :fc_site, :string

      add :fc_user1, :string

      add :fc_user2, :string

      add :fc__qadc01, :string

      add :fc_domain, :string

      add :oid_fc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAMTR_MSTR") do
      add :famtr_id, :string

      add :famtr_desc, :string

      add :famtr_init, :integer

      add :famtr_initdt, :naive_datetime

      add :famtr_rollover, :integer

      add :famtr_mod_userid, :string

      add :famtr_mod_date, :naive_datetime

      add :famtr_user1, :string

      add :famtr_user2, :string

      add :famtr__chr01, :string

      add :famtr__dec01, :decimal

      add :famtr__log01, :boolean

      add :famtr__dte01, :naive_datetime

      add :famtr__int01, :integer

      add :famtr__qadc01, :string

      add :famtr__qadd01, :decimal

      add :famtr__qadl01, :boolean

      add :famtr__qadi01, :integer

      add :famtr__qadt01, :naive_datetime

      add :famtr_domain, :string

      add :oid_famtr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FACLS_MSTR") do
      add :facls_id, :string

      add :facls_dep, :boolean

      add :facls_desc, :string

      add :facls_mod_userid, :string

      add :facls_mod_date, :naive_datetime

      add :facls_user1, :string

      add :facls_user2, :string

      add :facls__chr01, :string

      add :facls__dec01, :decimal

      add :facls__log01, :boolean

      add :facls__int01, :integer

      add :facls__dte01, :naive_datetime

      add :facls__qadc01, :string

      add :facls__qadd01, :decimal

      add :facls__qadl01, :boolean

      add :facls__qadi01, :integer

      add :facls__qadt01, :naive_datetime

      add :facls__qadc02, :string

      add :facls_domain, :string

      add :oid_facls_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EXR_RATE") do
      add :exr_curr1, :string

      add :exr_curr2, :string

      add :exr_start_date, :naive_datetime

      add :exr_end_date, :naive_datetime

      add :exr_rate, :decimal

      add :exr_rate2, :decimal

      add :exr_ratetype, :string

      add :exr_mod_userid, :string

      add :exr_mod_date, :naive_datetime

      add :exr_user1, :string

      add :exr_user2, :string

      add :exr__qadc01, :string

      add :exr__qadd01, :decimal

      add :exr__qadl01, :boolean

      add :exr__qadt01, :naive_datetime

      add :exr_domain, :string

      add :oid_exr_rate, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESCX_DET") do
      add :oid_escx_det, :decimal

      add :escx_xml_stamp, :string

      add :escx_record_order, :integer

      add :oid_escd_det, :decimal

      add :escx_mod_date, :naive_datetime

      add :escx_mod_userid, :string

      add :escx_user1, :string

      add :escx_user2, :string

      add :escx__qadc01, :string

      add :escx__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FH_MSTR") do
      add :fh_parent, :string

      add :fh_comp, :string

      add :fh_fcst_pct, :decimal

      add :fh_rlup_pct, :decimal

      add :fh_site, :string

      add :fh_mod_date, :naive_datetime

      add :fh_mod_userid, :string

      add :fh_user1, :string

      add :fh_user2, :string

      add :fh_rmks, :string

      add :fh_year, :integer

      add :fh__qadc01, :string

      add :fh_domain, :string

      add :oid_fh_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAS_CTRL") do
      add :fas_gain_acct, :string

      add :fas_gain_cc, :string

      add :fas_gain_sub, :string

      add :fas_loss_acct, :string

      add :fas_loss_sub, :string

      add :fas_loss_cc, :string

      add :fas_minimum, :decimal

      add :fas_short_year, :boolean

      add :fas_index1, :integer

      add :fas_userid, :string

      add :fas_mod_date, :naive_datetime

      add :fas_next_asset, :integer

      add :fas_short_end, :naive_datetime

      add :fas_detail, :boolean

      add :fas__qad01, :boolean

      add :fas__qad02, :string

      add :fas__qad03, :string

      add :fas_user1, :string

      add :fas_user2, :string

      add :oid_fas_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FACT_CTRL") do
      add :fact_auto, :boolean

      add :fact_gl_sum, :boolean

      add :fact_index1, :integer

      add :fact_seq_id, :string

      add :fact__qadc03, :string

      add :fact__qadc05, :string

      add :fact__qadc04, :string

      add :fact_mod_userid, :string

      add :fact_mod_date, :naive_datetime

      add :fact_user1, :string

      add :fact_user2, :string

      add :fact__chr01, :string

      add :fact__dec01, :decimal

      add :fact__log01, :boolean

      add :fact__dte01, :naive_datetime

      add :fact__int01, :integer

      add :fact__qadc01, :string

      add :fact__qadd01, :decimal

      add :fact__qadl01, :boolean

      add :fact__qadi01, :integer

      add :fact__qadt01, :naive_datetime

      add :fact__qadc02, :string

      add :fact_domain, :string

      add :oid_fact_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FABA_DET") do
      add :faba_fa_id, :string

      add :faba_acctype, :string

      add :faba_acct, :string

      add :faba_sub, :string

      add :faba_cc, :string

      add :faba_proj, :string

      add :faba_glseq, :integer

      add :faba_mod_userid, :string

      add :faba_mod_date, :naive_datetime

      add :faba_user1, :string

      add :faba_user2, :string

      add :faba__chr01, :string

      add :faba__dec01, :decimal

      add :faba__log01, :boolean

      add :faba__dte01, :naive_datetime

      add :faba__int01, :integer

      add :faba__qadc01, :string

      add :faba__qadd01, :decimal

      add :faba__qadi01, :integer

      add :faba__qadl01, :boolean

      add :faba__qadt01, :naive_datetime

      add :faba_domain, :string

      add :oid_faba_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ET_CTRL") do
      add :et_base_curr, :string

      add :et_conv_acct, :string

      add :et_conv_cc, :string

      add :et__qadc05, :string

      add :et_gl_eff_dt, :naive_datetime

      add :et__qadt04, :naive_datetime

      add :et__qadl04, :boolean

      add :et_print_dc, :boolean

      add :et_show_diff, :boolean

      add :et_start_conv, :boolean

      add :et__qadl05, :boolean

      add :et_rate_active, :boolean

      add :et__qadi04, :integer

      add :et_user1, :string

      add :et_user2, :string

      add :et__qadd01, :decimal

      add :et__qadd02, :decimal

      add :et__qadd03, :decimal

      add :et__qadi01, :integer

      add :et__qadi02, :integer

      add :et__qadi03, :integer

      add :et__qadl01, :boolean

      add :et__qadl02, :boolean

      add :et__qadl03, :boolean

      add :et__qadc01, :string

      add :et__qadc02, :string

      add :et__qadc03, :string

      add :et__qadt01, :naive_datetime

      add :et__qadt02, :naive_datetime

      add :et__qadt03, :naive_datetime

      add :et_conv_sub, :string

      add :et_domain, :string

      add :oid_et_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FCC_MSTR") do
      add :fcc_ca_int_type, :string

      add :fcc_fcg_code, :string

      add :fcc_fsc_code, :string

      add :fcc_prod_line, :string

      add :fcc_pt_prod_line, :string

      add :fcc_pt_svc_group, :string

      add :fcc_sv_code, :string

      add :fcc__chr01, :string

      add :fcc__chr02, :string

      add :fcc__chr03, :string

      add :fcc__chr04, :string

      add :fcc__dec01, :decimal

      add :fcc__dec02, :decimal

      add :fcc__dec03, :decimal

      add :fcc__dte01, :naive_datetime

      add :fcc__dte02, :naive_datetime

      add :fcc__dte03, :naive_datetime

      add :fcc__log01, :boolean

      add :fcc__log02, :boolean

      add :fcc__log03, :boolean

      add :fcc__qadc01, :string

      add :fcc__qadc02, :string

      add :fcc__qadc03, :string

      add :fcc__qadc04, :string

      add :fcc__qadt01, :naive_datetime

      add :fcc__qadt02, :naive_datetime

      add :fcc__qadt03, :naive_datetime

      add :fcc__qadd01, :decimal

      add :fcc__qadd02, :decimal

      add :fcc__qadd03, :decimal

      add :fcc__qadl01, :boolean

      add :fcc__qadl02, :boolean

      add :fcc__qadl03, :boolean

      add :fcc_type, :string

      add :fcc_mod_date, :naive_datetime

      add :fcc_mod_userid, :string

      add :fcc_user1, :string

      add :fcc_user2, :string

      add :fcc_domain, :string

      add :oid_fcc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAD_DET") do
      add :fad_fa_id, :string

      add :fad_desc, :string

      add :fad_tag, :string

      add :fad_serial, :string

      add :fad_puramt, :decimal

      add :fad_mod_userid, :string

      add :fad_mod_date, :naive_datetime

      add :fad_user1, :string

      add :fad_user2, :string

      add :fad__chr01, :string

      add :fad__dec01, :decimal

      add :fad__log01, :boolean

      add :fad__int01, :integer

      add :fad__dte01, :naive_datetime

      add :fad__qadc01, :string

      add :fad__qadd01, :decimal

      add :fad__qadl01, :boolean

      add :fad__qadi01, :integer

      add :fad__qadt01, :naive_datetime

      add :fad_domain, :string

      add :oid_fad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EUS_MSTR") do
      add :eus_schedule, :string

      add :eus_etime, :string

      add :eus_stime, :string

      add :eus_mid_etime, :string

      add :eus_mid_stime, :string

      add :eus_days, :boolean

      add :eus_mod_date, :naive_datetime

      add :eus_mod_userid, :string

      add :eus_user1, :string

      add :eus_user2, :string

      add :eus__qadc01, :string

      add :eus__qadc02, :string

      add :eus_domain, :string

      add :oid_eus_mstr, :decimal

      add :eus_eu_nbr, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EMSG_MSTR") do
      add :emsg_desc, :string

      add :emsg_cmtindx, :integer

      add :emsg_date, :naive_datetime

      add :emsg_time, :string

      add :emsg_entered, :string

      add :emsg_user1, :string

      add :emsg_user2, :string

      add :emsg_act_date, :naive_datetime

      add :emsg_act_time, :string

      add :emsg_trnbr, :integer

      add :emsg_userid, :string

      add :emsg_read, :boolean

      add :emsg_name_nbr4, :string

      add :emsg_name_nbr3, :string

      add :emsg_name_nbr2, :string

      add :emsg_name_nbr1, :string

      add :emsg_name_date2, :string

      add :emsg_name_date1, :string

      add :emsg_msg_type, :string

      add :emsg_file_trnbr, :integer

      add :emsg_file_nbr4, :string

      add :emsg_file_nbr3, :string

      add :emsg_file_nbr2, :string

      add :emsg_file_nbr1, :string

      add :emsg_file_name, :string

      add :emsg_file_date2, :naive_datetime

      add :emsg_file_date1, :naive_datetime

      add :emsg_eng_code, :string

      add :emsg_complete, :boolean

      add :emsg_action, :string

      add :emsg__qadc01, :string

      add :emsg_domain, :string

      add :oid_emsg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAMTD_DET") do
      add :famtd_famt_id, :string

      add :famtd_year, :integer

      add :famtd_period, :integer

      add :famtd_percent, :decimal

      add :famtd_mod_userid, :string

      add :famtd_mod_date, :naive_datetime

      add :famtd_user1, :string

      add :famtd_user2, :string

      add :famtd__chr01, :string

      add :famtd__dec01, :decimal

      add :famtd__log01, :boolean

      add :famtd__dte01, :naive_datetime

      add :famtd_int01, :integer

      add :famtd__qadc01, :string

      add :famtd__qadd01, :decimal

      add :famtd__qadl01, :boolean

      add :famtd__qadi01, :integer

      add :famtd__qadt01, :naive_datetime

      add :famtd_domain, :string

      add :oid_famtd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FACD_DET") do
      add :facd_facls_id, :string

      add :facd_fabk_id, :string

      add :facd_acctype, :string

      add :facd_acct, :string

      add :facd_mod_userid, :string

      add :facd_mod_date, :naive_datetime

      add :facd_user1, :string

      add :facd_user2, :string

      add :facd__chr01, :string

      add :facd__dec01, :decimal

      add :facd__log01, :boolean

      add :facd__dte01, :naive_datetime

      add :facd__int01, :integer

      add :facd__qadc01, :string

      add :facd__qadd01, :decimal

      add :facd__qadi01, :integer

      add :facd__qadl01, :boolean

      add :facd__qadt01, :naive_datetime

      add :facd_domain, :string

      add :oid_facd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPMP_REF") do
      add :oid_eswpmp_ref, :decimal

      add :oid_eswp_mstr, :decimal

      add :eswpmp_exec, :string

      add :eswpmp_esig_active, :boolean

      add :eswpmp_mod_date, :naive_datetime

      add :eswpmp_mod_userid, :string

      add :eswpmp_user1, :string

      add :eswpmp_user2, :string

      add :eswpmp__qadc01, :string

      add :eswpmp__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESGC_REF") do
      add :oid_esgc_ref, :decimal

      add :oid_escat_mstr, :decimal

      add :oid_atg_mstr, :decimal

      add :esgc_mod_date, :naive_datetime

      add :esgc_mod_userid, :string

      add :esgc_user1, :string

      add :esgc_user2, :string

      add :esgc__qadc01, :string

      add :esgc__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPF_DET") do
      add :oid_esapf_det, :decimal

      add :oid_esaps_det, :decimal

      add :esapf_field_order, :integer

      add :esapf_field_name, :string

      add :esapf_include, :boolean

      add :esapf_label_inline, :boolean

      add :esapf_code, :string

      add :esapf_mod_date, :naive_datetime

      add :esapf_mod_userid, :string

      add :esapf_user1, :string

      add :esapf_user2, :string

      add :esapf__qadc01, :string

      add :esapf__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FADF_MSTR") do
      add :fadf_facls_id, :string

      add :fadf_fabk_id, :string

      add :fadf_famt_id, :string

      add :fadf_famt_elife, :decimal

      add :fadf_mod_userid, :string

      add :fadf_mod_date, :naive_datetime

      add :fadf_user1, :string

      add :fadf_user2, :string

      add :fadf__chr01, :string

      add :fadf__dec01, :decimal

      add :fadf__log01, :boolean

      add :fadf__dte01, :naive_datetime

      add :fadf__int01, :integer

      add :fadf__qadc01, :string

      add :fadf__qadd01, :decimal

      add :fadf__qadl01, :boolean

      add :fadf__qadi01, :integer

      add :fadf__qadt01, :naive_datetime

      add :fadf_domain, :string

      add :oid_fadf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FABCH_MSTR") do
      add :fabch_id, :string

      add :fabch_ctrl, :decimal

      add :fabch_createdt, :naive_datetime

      add :fabch_mod_userid, :string

      add :fabch_mod_date, :naive_datetime

      add :fabch_user1, :string

      add :fabch_user2, :string

      add :fabch__chr01, :string

      add :fabch__dec01, :decimal

      add :fabch__log01, :boolean

      add :fabch__dte01, :naive_datetime

      add :fabch__int01, :integer

      add :fabch__qadc01, :string

      add :fabch__qadd01, :decimal

      add :fabch__qadl01, :boolean

      add :fabch__qadi01, :integer

      add :fabch__qadt01, :naive_datetime

      add :fabch_domain, :string

      add :oid_fabch_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EUD_DET") do
      add :eud_addr, :string

      add :eud_ls_type, :string

      add :eud_sort, :string

      add :eud_phone, :string

      add :eud_fax, :string

      add :eud_title, :string

      add :eud_type, :string

      add :eud_updt, :naive_datetime

      add :eud_nametype, :string

      add :eud_user1, :string

      add :eud_user2, :string

      add :eud_mail_addr, :string

      add :eud_trnbr, :integer

      add :eud_mod_userid, :string

      add :eud_mod_date, :naive_datetime

      add :eud__chr01, :string

      add :eud__chr02, :string

      add :eud__chr03, :string

      add :eud__int01, :integer

      add :eud__dte01, :naive_datetime

      add :eud__log01, :boolean

      add :eud__qadc01, :string

      add :eud__qadc02, :string

      add :eud__qadc03, :string

      add :eud__qadi01, :integer

      add :eud__qadt01, :naive_datetime

      add :eud__qadl01, :boolean

      add :eud_domain, :string

      add :oid_eud_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPFC_DET") do
      add :oid_eswpfc_det, :decimal

      add :oid_eswpfil_det, :decimal

      add :eswpfc_value, :string

      add :oid_eswpfs_det, :decimal

      add :eswpfc_mod_date, :naive_datetime

      add :eswpfc_mod_userid, :string

      add :eswpfc_user1, :string

      add :eswpfc_user2, :string

      add :eswpfc__qadc01, :string

      add :eswpfc__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESCF_REF") do
      add :oid_escf_ref, :decimal

      add :oid_escat_mstr, :decimal

      add :oid_esfil_mstr, :decimal

      add :escf_mod_date, :naive_datetime

      add :escf_mod_userid, :string

      add :escf_user1, :string

      add :escf_user2, :string

      add :escf__qadc01, :string

      add :escf__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGA_MSTR") do
      add :ega_week, :naive_datetime

      add :ega_eng_code, :string

      add :ega_esh_schedule, :string

      add :ega_calls, :integer

      add :ega_hours, :decimal

      add :ega_avail_hours, :decimal

      add :ega_user1, :string

      add :ega_user2, :string

      add :ega__int01, :integer

      add :ega__qadi01, :integer

      add :ega__dec01, :decimal

      add :ega__qade01, :decimal

      add :ega__log01, :boolean

      add :ega__qadl01, :boolean

      add :ega_domain, :string

      add :oid_ega_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FACLD_DET") do
      add :facld_year, :integer

      add :facld_per, :integer

      add :facld_start, :naive_datetime

      add :facld_end, :naive_datetime

      add :facld_facl_id, :string

      add :facld_mod_userid, :string

      add :facld_mod_date, :naive_datetime

      add :facld_user1, :string

      add :facld_user2, :string

      add :facld__chr01, :string

      add :facld__dec01, :decimal

      add :facld__log01, :boolean

      add :facld__dte01, :naive_datetime

      add :facld__int01, :integer

      add :facld__qadc01, :string

      add :facld__qadd01, :decimal

      add :facld__qadl01, :boolean

      add :facld__qadi01, :integer

      add :facld__qadt01, :naive_datetime

      add :facld_domain, :string

      add :oid_facld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPS_DET") do
      add :oid_eswps_det, :decimal

      add :oid_eswp_mstr, :decimal

      add :oid_eswps_det_parent, :decimal

      add :eswps_order, :integer

      add :eswps_include, :boolean

      add :eswps_table_name, :string

      add :eswps_code, :string

      add :eswps_multiple, :boolean

      add :eswps_mod_date, :naive_datetime

      add :eswps_mod_userid, :string

      add :eswps_user1, :string

      add :eswps_user2, :string

      add :eswps__qadc01, :string

      add :eswps__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESH_MSTR") do
      add :esh_status, :string

      add :esh_end_time, :string

      add :esh_start_time, :string

      add :esh_days, :boolean

      add :esh_sched_type, :string

      add :esh_schedule, :string

      add :esh_end_eff, :naive_datetime

      add :esh_start_eff, :naive_datetime

      add :esh_reg_code, :string

      add :esh_holidays, :boolean

      add :esh_oncall, :boolean

      add :esh_shift_code, :string

      add :esh_user1, :string

      add :esh_user2, :string

      add :esh_mod_date, :naive_datetime

      add :esh_mod_userid, :string

      add :esh__chr01, :string

      add :esh__chr02, :string

      add :esh__log01, :boolean

      add :esh__log02, :boolean

      add :esh__dte01, :naive_datetime

      add :esh__dte02, :naive_datetime

      add :esh__qadc01, :string

      add :esh__qadc02, :string

      add :esh__qadl01, :boolean

      add :esh__qadl02, :boolean

      add :esh__qadt01, :naive_datetime

      add :esh__qadt02, :naive_datetime

      add :esh__qadi01, :integer

      add :esh__qadi02, :string

      add :esh_domain, :string

      add :oid_esh_mstr, :decimal

      add :esh_mid_etime, :string

      add :esh_mid_stime, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EM_MSTR") do
      add :em_system_id, :string

      add :em_desc, :string

      add :em_opsys, :string

      add :em_program, :string

      add :em_sender_parm, :string

      add :em_sender_seq, :integer

      add :em_pswd_parm, :string

      add :em_pswd_seq, :integer

      add :em_recip_parm, :string

      add :em_recip_seq, :integer

      add :em_cc_parm, :string

      add :em_cc_seq, :integer

      add :em_subject_parm, :string

      add :em_subject_seq, :integer

      add :em_msg_parm, :string

      add :em_msg_seq, :integer

      add :em_attach_parm, :string

      add :em_attach_seq, :integer

      add :em_other_parm, :string

      add :em_other_seq, :integer

      add :em_start, :naive_datetime

      add :em_end, :naive_datetime

      add :em__chr01, :string

      add :em__chr02, :string

      add :em__chr03, :string

      add :em__chr04, :string

      add :em__qadc01, :string

      add :em__qadc02, :string

      add :em__qadc03, :string

      add :em__qadc04, :string

      add :oid_em_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD3_DET") do
      add :ecd3_nbr, :string

      add :ecd3_order, :integer

      add :ecd3_cmtindx, :integer

      add :ecd3_process, :string

      add :ecd3__qad01, :boolean

      add :ecd3__qad02, :naive_datetime

      add :ecd3__qad03, :string

      add :ecd3__qad04, :string

      add :ecd3__qad05, :string

      add :ecd3_mod_date, :naive_datetime

      add :ecd3_userid, :string

      add :ecd3_user1, :string

      add :ecd3_user2, :string

      add :ecd3_domain, :string

      add :oid_ecd3_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EXCD_DET") do
      add :excd_curr, :string

      add :excd_acc, :string

      add :excd_xcc, :string

      add :excd_xac_type, :string

      add :excd_year, :integer

      add :excd_per, :integer

      add :excd_rate, :decimal

      add :excd_user1, :string

      add :excd_user2, :string

      add :excd_en_rate, :decimal

      add :excd__qadc01, :string

      add :excd_ex_rate2, :decimal

      add :excd_ex_ratetype, :string

      add :excd_exru_seq, :integer

      add :excd_curr2, :string

      add :excd_domain, :string

      add :oid_excd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPF_DET") do
      add :oid_eswpf_det, :decimal

      add :oid_eswps_det, :decimal

      add :eswpf_field_name, :string

      add :eswpf_field_order, :integer

      add :eswpf_include, :boolean

      add :eswpf_label_inline, :boolean

      add :eswpf_code, :string

      add :eswpf_mod_date, :naive_datetime

      add :eswpf_mod_userid, :string

      add :eswpf_user1, :string

      add :eswpf_user2, :string

      add :eswpf__qadc01, :string

      add :eswpf__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESFIL_MSTR") do
      add :oid_esfil_mstr, :decimal

      add :esfil_table_name, :string

      add :esfil_field_name, :string

      add :esfil_mod_date, :naive_datetime

      add :esfil_mod_userid, :string

      add :esfil_user1, :string

      add :esfil_user2, :string

      add :esfil__qadc01, :string

      add :esfil__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPFS_DET") do
      add :oid_esapfs_det, :decimal

      add :oid_esap_mstr, :decimal

      add :esapfs_set_name, :string

      add :esapfs_set_desc, :string

      add :esapfs_mod_date, :naive_datetime

      add :esapfs_mod_userid, :string

      add :esapfs_user1, :string

      add :esapfs_user2, :string

      add :esapfs__qadc01, :string

      add :esapfs__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EMP_MSTR") do
      add :emp_addr, :string

      add :emp_lname, :string

      add :emp_fname, :string

      add :emp_line1, :string

      add :emp_line2, :string

      add :emp_city, :string

      add :emp_state, :string

      add :emp_zip, :string

      add :emp_country, :string

      add :emp_phone, :string

      add :emp_bs_phone, :string

      add :emp_ext, :string

      add :emp_ssn, :string

      add :emp_birthday, :naive_datetime

      add :emp_emp_date, :naive_datetime

      add :emp_trm_date, :naive_datetime

      add :emp_status, :string

      add :emp_freq, :string

      add :emp_pay_type, :string

      add :emp_pay_rate, :decimal

      add :emp_marital, :string

      add :emp_exempt, :integer

      add :emp_wk_loc, :string

      add :emp__qad01, :string

      add :emp__qad02, :string

      add :emp_project, :string

      add :emp_dept, :string

      add :emp_units, :decimal

      add :emp_sick_hrs, :decimal

      add :emp_vac_hrs, :decimal

      add :emp_title, :string

      add :emp_wc_class, :string

      add :emp_last_pay, :decimal

      add :emp_last_dt, :naive_datetime

      add :emp_line3, :string

      add :emp_user1, :string

      add :emp_user2, :string

      add :emp_user3, :string

      add :emp_user4, :decimal

      add :emp_user5, :decimal

      add :emp_user6, :naive_datetime

      add :emp_bank, :string

      add :emp_ad_bank, :string

      add :emp_ad_acc1, :string

      add :emp_ad_amt1, :decimal

      add :emp_ad_pct1, :decimal

      add :emp_ad_acc2, :string

      add :emp_ad_amt2, :decimal

      add :emp_ad_pct2, :decimal

      add :emp__chr01, :string

      add :emp__chr02, :string

      add :emp__chr03, :string

      add :emp__chr04, :string

      add :emp__chr05, :string

      add :emp__dte01, :naive_datetime

      add :emp__dte02, :naive_datetime

      add :emp__dte03, :naive_datetime

      add :emp__dte04, :naive_datetime

      add :emp__dte05, :naive_datetime

      add :emp__dec01, :decimal

      add :emp__dec02, :decimal

      add :emp__log01, :boolean

      add :emp__log02, :boolean

      add :emp_mod_date, :naive_datetime

      add :emp_userid, :string

      add :emp_ad_bank2, :string

      add :emp_transit1, :string

      add :emp_transit2, :string

      add :emp_ad_type1, :string

      add :emp_ad_type2, :string

      add :emp_shift, :string

      add :emp_ctry, :string

      add :emp_domain, :string

      add :oid_emp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EU_MSTR") do
      add :eu_addr, :string

      add :eu_rsb, :string

      add :eu_phone, :string

      add :eu_modem, :string

      add :eu_login, :string

      add :eu_cm_nbr, :string

      add :eu_sort, :string

      add :eu_channel, :string

      add :eu_office, :string

      add :eu_msg, :string

      add :eu_status, :string

      add :eu_msg_end, :naive_datetime

      add :eu_eng_code, :string

      add :eu_svc_area, :string

      add :eu_pri, :integer

      add :eu_lang, :string

      add :eu__chr01, :string

      add :eu__chr02, :string

      add :eu__chr03, :string

      add :eu__chr04, :string

      add :eu__chr05, :string

      add :eu_st_time, :string

      add :eu_ed_time, :string

      add :eu__chr06, :string

      add :eu__chr07, :string

      add :eu__chr08, :string

      add :eu__chr09, :string

      add :eu__chr10, :string

      add :eu__dec01, :decimal

      add :eu__dec02, :decimal

      add :eu__dec03, :decimal

      add :eu__dte01, :naive_datetime

      add :eu__dte02, :naive_datetime

      add :eu__dte03, :naive_datetime

      add :eu__dte04, :naive_datetime

      add :eu__log01, :boolean

      add :eu__log02, :boolean

      add :eu__log03, :boolean

      add :eu__log04, :boolean

      add :eu__log05, :boolean

      add :eu_cmtindx, :integer

      add :eu_type, :string

      add :eu_application, :string

      add :eu_sic_code, :string

      add :eu_review, :naive_datetime

      add :eu_node, :string

      add :eu_node_type, :string

      add :eu_name, :string

      add :eu_autorenew, :boolean

      add :eu_disc_pct, :decimal

      add :eu_user1, :string

      add :eu_user2, :string

      add :eu_po_nbr, :string

      add :eu_po_limit, :decimal

      add :eu_po_accum, :decimal

      add :eu_renew_days, :integer

      add :eu_eng_sec, :string

      add :eu_eng_group, :string

      add :eu_rebuild_isb, :boolean

      add :eu_trv_time, :string

      add :eu_trv_dist, :integer

      add :eu_create_isb, :boolean

      add :eu_reseller, :boolean

      add :eu_updates, :string

      add :eu_trv_um, :string

      add :eu_es_nbr, :string

      add :eu_time_zone, :integer

      add :eu_un_billed, :decimal

      add :eu_zip, :string

      add :eu_sep_invoice, :boolean

      add :eu_receipt_days, :integer

      add :eu_ship_days, :integer

      add :eu_po_reqd, :boolean

      add :eu__qadc01, :string

      add :eu__qadc02, :string

      add :eu__qadc03, :string

      add :eu__qadi01, :integer

      add :eu__qadi02, :integer

      add :eu__qadt01, :naive_datetime

      add :eu__qadt02, :naive_datetime

      add :eu__qadd01, :decimal

      add :eu__qadl01, :boolean

      add :eu__qadl02, :boolean

      add :eu__qadl03, :boolean

      add :eu_mod_userid, :string

      add :eu_mod_date, :naive_datetime

      add :eu_domain, :string

      add :oid_eu_mstr, :decimal

      add :eu_schedule, :string

      add :eu_email, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESC_CTRL") do
      add :esc_nbr, :integer

      add :esc_es_prefix, :string

      add :esc_index, :integer

      add :esc_user1, :string

      add :esc_user2, :string

      add :esc_mod_userid, :string

      add :esc_mod_date, :naive_datetime

      add :esc__chr01, :string

      add :esc__chr02, :string

      add :esc__dte01, :naive_datetime

      add :esc__log01, :boolean

      add :esc__int01, :integer

      add :esc__qadc01, :string

      add :esc__qadc02, :string

      add :esc__qadt01, :naive_datetime

      add :esc__qadl01, :boolean

      add :esc__qadi01, :integer

      add :esc_rrc_pre, :string

      add :esc_rrc_nbr, :integer

      add :esc_domain, :string

      add :oid_esc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPFIL_DET") do
      add :oid_esapfil_det, :decimal

      add :oid_esap_mstr, :decimal

      add :oid_esfil_mstr, :decimal

      add :esapfil_mod_date, :naive_datetime

      add :esapfil_mod_userid, :string

      add :esapfil_user1, :string

      add :esapfil_user2, :string

      add :esapfil__qadc01, :string

      add :esapfil__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EMG_MSG") do
      add :emg_app_id, :string

      add :emg_doc_id, :integer

      add :emg_email_sent, :boolean

      add :emg_mod_date, :naive_datetime

      add :emg_mod_userid, :string

      add :emg_return_code, :string

      add :emg_return_txt, :string

      add :emg_sev_lvl, :string

      add :emg_doc_sufx, :integer

      add :emg_prcg_stage, :string

      add :emg_user1, :string

      add :emg_user2, :string

      add :emg__dec01, :decimal

      add :emg__dec02, :decimal

      add :emg__int01, :integer

      add :emg__int02, :integer

      add :emg__log01, :boolean

      add :emg__log02, :boolean

      add :emg__dte01, :naive_datetime

      add :emg__dte02, :naive_datetime

      add :emg__qadc01, :string

      add :emg__qadc02, :string

      add :emg__qadc03, :string

      add :emg__qadc04, :string

      add :emg__qadd01, :decimal

      add :emg__qadd02, :decimal

      add :emg__qadi01, :integer

      add :emg__qadi02, :integer

      add :emg__qadl01, :boolean

      add :emg__qadl02, :boolean

      add :emg__qadt01, :naive_datetime

      add :emg__qadt02, :naive_datetime

      add :emg_domain, :string

      add :oid_emg_msg, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESCD_DET") do
      add :oid_escd_det, :decimal

      add :oid_esig_mstr, :decimal

      add :oid_escat_mstr, :decimal

      add :oid_top_erecord, :decimal

      add :oid_esap_mstr, :decimal

      add :escd_date, :naive_datetime

      add :escd_time, :integer

      add :escd_timezone, :string

      add :escd_mod_date, :naive_datetime

      add :escd_mod_userid, :string

      add :escd_user1, :string

      add :escd_user2, :string

      add :escd__qadc01, :string

      add :escd__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ERAW_DET") do
      add :eraw_doc_id, :integer

      add :eraw_doc_line, :integer

      add :eraw_mod_date, :naive_datetime

      add :eraw_mod_userid, :string

      add :eraw_data, :string

      add :eraw_user1, :string

      add :eraw_user2, :string

      add :eraw__dec01, :decimal

      add :eraw__dec02, :decimal

      add :eraw__int01, :integer

      add :eraw__int02, :integer

      add :eraw__log01, :boolean

      add :eraw__log02, :boolean

      add :eraw__dte01, :naive_datetime

      add :eraw__dte02, :naive_datetime

      add :eraw__qadc01, :string

      add :eraw__qadc02, :string

      add :eraw__qadc03, :string

      add :eraw__qadc04, :string

      add :eraw__qadd01, :decimal

      add :eraw__qadd02, :decimal

      add :eraw__qadi01, :integer

      add :eraw__qadi02, :integer

      add :eraw__qadl01, :boolean

      add :eraw__qadl02, :boolean

      add :eraw__qadt01, :naive_datetime

      add :eraw__qadt02, :naive_datetime

      add :eraw_line_cont, :boolean

      add :eraw_domain, :string

      add :oid_eraw_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ELG_HIST") do
      add :elg_access_code, :string

      add :elg_app_id, :string

      add :elg_app_ver, :string

      add :elg_archive_id, :string

      add :elg_ctrl_tot_1, :integer

      add :elg_ctrl_tot_2, :decimal

      add :elg_ctrl_tot_3, :decimal

      add :elg_date_ack, :naive_datetime

      add :elg_date_map, :naive_datetime

      add :elg_date_publ, :naive_datetime

      add :elg_date_sent, :naive_datetime

      add :elg_dest_proc, :string

      add :elg_doc_id, :integer

      add :elg_doc_lng, :string

      add :elg_doc_rev, :string

      add :elg_doc_std, :string

      add :elg_doc_typ, :string

      add :elg_email_userid, :string

      add :elg_email_notlvl, :string

      add :elg_err_stat, :string

      add :elg_ext_doc_key, :string

      add :elg_mfgpro_site, :string

      add :elg_mfgpro_key, :string

      add :elg_map_log_file, :string

      add :elg_map_spec, :string

      add :elg_mod_date, :naive_datetime

      add :elg_mod_userid, :string

      add :elg_orig_doc_id, :integer

      add :elg_ack_rcvd, :boolean

      add :elg_ack_lvl_reqd, :string

      add :elg_ack_stat, :string

      add :elg_prcg_stage, :string

      add :elg_sess_id, :integer

      add :elg_src_comp, :string

      add :elg_src_task, :string

      add :elg_src_app_id, :string

      add :elg_src_app_ver, :string

      add :elg_src_doc_rev, :string

      add :elg_src_doc_std, :string

      add :elg_src_doc_typ, :string

      add :elg_src_proc, :string

      add :elg_src_userid, :string

      add :elg_doc_sufx, :integer

      add :elg_time_ack, :string

      add :elg_time_map, :string

      add :elg_time_sent, :string

      add :elg_time_publ, :string

      add :elg_tradptr_id, :string

      add :elg_use_ex_queue, :boolean

      add :elg_map_doc_now, :boolean

      add :elg_unit_wrk_typ, :string

      add :elg_grp_id, :integer

      add :elg_code_pg, :string

      add :elg_date_form, :string

      add :elg_num_form, :string

      add :elg_user1, :string

      add :elg_user2, :string

      add :elg__dec01, :decimal

      add :elg__dec02, :decimal

      add :elg__int01, :integer

      add :elg__int02, :integer

      add :elg__log01, :boolean

      add :elg__log02, :boolean

      add :elg__dte01, :naive_datetime

      add :elg__dte02, :naive_datetime

      add :elg__qadc01, :string

      add :elg__qadc02, :string

      add :elg__qadc03, :string

      add :elg__qadc04, :string

      add :elg__qadd01, :decimal

      add :elg__qadd02, :decimal

      add :elg__qadi01, :integer

      add :elg__qadi02, :integer

      add :elg__qadl01, :boolean

      add :elg__qadl02, :boolean

      add :elg__qadt01, :naive_datetime

      add :elg__qadt02, :naive_datetime

      add :elg_grp_seq, :integer

      add :elg_resend, :boolean

      add :elg_mapper_proc, :string

      add :elg_dest_mthd, :string

      add :elg_process_typ, :string

      add :elg_domain, :string

      add :oid_elg_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECM_MSTR") do
      add :ecm_nbr, :string

      add :ecm_date, :naive_datetime

      add :ecm_init, :string

      add :ecm_cmmt, :string

      add :ecm__qad01, :decimal

      add :ecm__qad02, :string

      add :ecm_user1, :string

      add :ecm_user2, :string

      add :ecm_cmtindx, :integer

      add :ecm_mod_date, :naive_datetime

      add :ecm_userid, :string

      add :ecm_eff_date, :naive_datetime

      add :ecm_man_date, :naive_datetime

      add :ecm_sub_date, :naive_datetime

      add :ecm_end_date, :naive_datetime

      add :ecm_rel_date, :naive_datetime

      add :ecm_title, :string

      add :ecm_approval, :string

      add :ecm_distr, :string

      add :ecm_replan, :boolean

      add :ecm_type, :string

      add :ecm_status, :string

      add :ecm_nbr_fr, :string

      add :ecm_nbr_to, :string

      add :ecm_exp_cost, :decimal

      add :ecm_name, :string

      add :ecm_assign, :string

      add :ecm_open_date, :naive_datetime

      add :ecm_close_date, :naive_datetime

      add :ecm_ecr_dspn, :string

      add :ecm__qad03, :boolean

      add :ecm__qad04, :naive_datetime

      add :ecm__qad05, :decimal

      add :ecm__qad06, :string

      add :ecm__qad07, :string

      add :ecm_secure_text, :string

      add :ecm_secure_item, :string

      add :ecm_secure_stct, :string

      add :ecm_secure_routing, :string

      add :ecm_secure_admn, :string

      add :ecm_seqrev_off, :boolean

      add :ecm_appr_date, :naive_datetime

      add :ecm_selected_eff, :naive_datetime

      add :ecm_batched, :boolean

      add :ecm_reprocess, :boolean

      add :ecm_doc_type, :string

      add :ecm_domain, :string

      add :oid_ecm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ES_MSTR") do
      add :es_time_in, :string

      add :es_ca_problem, :string

      add :es_ca_severity, :string

      add :es_seq, :integer

      add :es_ca_type, :string

      add :es_ca_category, :string

      add :es_nbr, :string

      add :es_esc_program, :string

      add :es_program, :string

      add :es_next_status, :string

      add :es_next_que, :string

      add :es_desc, :string

      add :es_cmtindx, :integer

      add :es_page, :boolean

      add :es_pri_bump, :integer

      add :es_print, :boolean

      add :es_message, :boolean

      add :es_group, :string

      add :es_escalate, :boolean

      add :es_ca_pri, :integer

      add :es_days_in, :integer

      add :es_user1, :string

      add :es_user2, :string

      add :es__chr01, :string

      add :es__chr02, :string

      add :es__chr03, :string

      add :es__chr04, :string

      add :es__dec01, :decimal

      add :es__dec02, :decimal

      add :es__dec03, :decimal

      add :es__dte01, :naive_datetime

      add :es__dte02, :naive_datetime

      add :es__dte03, :naive_datetime

      add :es__log01, :boolean

      add :es__log02, :boolean

      add :es__log03, :boolean

      add :es__qadc01, :string

      add :es__qadc02, :string

      add :es__qadc03, :string

      add :es__qadc04, :string

      add :es__qadd01, :naive_datetime

      add :es__qadd02, :naive_datetime

      add :es__qadd03, :naive_datetime

      add :es__qadde01, :decimal

      add :es__qadde02, :decimal

      add :es__qadde03, :decimal

      add :es__qadl01, :boolean

      add :es__qadl02, :boolean

      add :es__qadl03, :boolean

      add :es_ca_int_type, :string

      add :es_message_list, :string

      add :es_prefix, :string

      add :es_doc_desc, :string

      add :es_doc_exec, :string

      add :es_due_date, :naive_datetime

      add :es_ca_status, :string

      add :es_itm_line, :integer

      add :es_es_nbr, :string

      add :es_act_date, :naive_datetime

      add :es_repair_step, :string

      add :es_docs_printed, :boolean

      add :es_doc_printed, :boolean

      add :es_doc_printit, :boolean

      add :es_initial_date, :naive_datetime

      add :es_doc_printer, :string

      add :es_doc_paged, :boolean

      add :es_domain, :string

      add :oid_es_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESP_MSTR") do
      add :esp_access_code, :string

      add :esp_app_id, :string

      add :esp_app_ver, :string

      add :esp_del_err_det, :string

      add :esp_dest_proc, :string

      add :esp_doc_lng, :string

      add :esp_doc_rev, :string

      add :esp_doc_std, :string

      add :esp_doc_typ, :string

      add :esp_email_userid, :string

      add :esp_email_notlvl, :string

      add :esp_desc, :string

      add :esp_ex_map_flg, :boolean

      add :esp_send_flg, :boolean

      add :esp_publ_flg, :boolean

      add :esp_mapper_proc, :string

      add :esp_map_spec, :string

      add :esp_mod_date, :naive_datetime

      add :esp_mod_userid, :string

      add :esp_msg_ack_lvl, :string

      add :esp_msg_clnt_ord, :string

      add :esp_msg_priority, :string

      add :esp_msg_routing, :string

      add :esp_msg_ttl, :string

      add :esp_pause_sev, :integer

      add :esp_ack_lvl_reqd, :string

      add :esp_src_comp, :string

      add :esp_src_app_id, :string

      add :esp_src_task, :string

      add :esp_src_app_ver, :string

      add :esp_src_doc_rev, :string

      add :esp_src_doc_std, :string

      add :esp_src_doc_typ, :string

      add :esp_src_proc, :string

      add :esp_src_userid, :string

      add :esp_tradptr_id, :string

      add :esp_use_ex_queue, :boolean

      add :esp_ack_doc_rev, :string

      add :esp_ack_doc_std, :string

      add :esp_ack_doc_typ, :string

      add :esp_code_pg, :string

      add :esp_date_form, :string

      add :esp_num_form, :string

      add :esp_user1, :string

      add :esp_user2, :string

      add :esp__dec01, :decimal

      add :esp__dec02, :decimal

      add :esp__int01, :integer

      add :esp__int02, :integer

      add :esp__log01, :boolean

      add :esp__log02, :boolean

      add :esp__dte01, :naive_datetime

      add :esp__dte02, :naive_datetime

      add :esp__qadc01, :string

      add :esp__qadc02, :string

      add :esp__qadc03, :string

      add :esp__qadc04, :string

      add :esp__qadd01, :decimal

      add :esp__qadd02, :decimal

      add :esp__qadi01, :integer

      add :esp__qadi02, :integer

      add :esp__qadl01, :boolean

      add :esp__qadl02, :boolean

      add :esp__qadt01, :naive_datetime

      add :esp__qadt02, :naive_datetime

      add :esp_msg_sync, :string

      add :esp_msg_secur, :string

      add :esp_msg_persist, :string

      add :esp_queue_pub, :string

      add :esp_map_parm, :string

      add :esp_map_parm_val, :string

      add :esp_eol_delim, :boolean

      add :esp_dtd_name, :string

      add :esp_delim, :integer

      add :esp_dest_mthd, :string

      add :esp_process_typ, :string

      add :esp_xml, :string

      add :esp_domain, :string

      add :oid_esp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAP_MSTR") do
      add :oid_esap_mstr, :decimal

      add :oid_escat_mstr, :decimal

      add :esap_esig_active, :boolean

      add :esap_begin_date, :naive_datetime

      add :esap_filter_mode, :string

      add :esap_comment_prompt, :boolean

      add :esap_latest_display, :boolean

      add :esap_data_frame_opt, :boolean

      add :esap_preview_prompt, :boolean

      add :esap_mod_date, :naive_datetime

      add :esap_mod_userid, :string

      add :esap_user1, :string

      add :esap_user2, :string

      add :esap__qadc01, :string

      add :esap__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ENG_MSTR") do
      add :eng_addr, :string

      add :eng_status, :string

      add :eng_location, :string

      add :eng_skills, :string

      add :eng_area, :string

      add :eng_pager, :string

      add :eng_group, :string

      add :eng_labor, :string

      add :eng_cplt_dt, :naive_datetime

      add :eng_cplt_tm, :integer

      add :eng_sort, :string

      add :eng__chr01, :string

      add :eng__chr02, :string

      add :eng__chr03, :string

      add :eng__chr04, :string

      add :eng__chr05, :string

      add :eng_site, :string

      add :eng_loc, :string

      add :eng__chr06, :string

      add :eng__chr07, :string

      add :eng__chr08, :string

      add :eng__chr09, :string

      add :eng__chr10, :string

      add :eng__dec01, :decimal

      add :eng__dec02, :decimal

      add :eng__dec03, :decimal

      add :eng__dte01, :naive_datetime

      add :eng__dte02, :naive_datetime

      add :eng__dte03, :naive_datetime

      add :eng__dte04, :naive_datetime

      add :eng__log01, :boolean

      add :eng__log02, :boolean

      add :eng__log03, :boolean

      add :eng__log04, :boolean

      add :eng__log05, :boolean

      add :eng_site_rtn, :string

      add :eng_loc_rtn, :string

      add :eng_sub, :boolean

      add :eng_user1, :string

      add :eng_user2, :string

      add :eng_code, :string

      add :eng_esh_schedule, :string

      add :eng_field, :boolean

      add :eng_call_load, :integer

      add :eng_3rd_party, :boolean

      add :eng_avail_ot, :boolean

      add :eng__qadc01, :string

      add :eng__qadc02, :string

      add :eng__qadd01, :naive_datetime

      add :eng__qadd02, :naive_datetime

      add :eng__qadde01, :decimal

      add :eng__qadi01, :integer

      add :eng__qadi02, :integer

      add :eng__qadl01, :boolean

      add :eng__qadl02, :boolean

      add :eng_mod_userid, :string

      add :eng_mod_date, :naive_datetime

      add :eng_address, :string

      add :eng_domain, :string

      add :oid_eng_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGT_MSTR") do
      add :egt_current, :string

      add :egt_user1, :string

      add :egt_user2, :string

      add :egt_start_time, :string

      add :egt_sched_date, :naive_datetime

      add :egt_reschedule, :boolean

      add :egt_multi, :boolean

      add :egt_hours, :decimal

      add :egt_eng_code, :string

      add :egt_end_time, :string

      add :egt_create_date, :naive_datetime

      add :egt_close, :boolean

      add :egt_ca_nbr, :string

      add :egt_priority, :integer

      add :egt_trnbr, :integer

      add :egt_esh_schedule, :string

      add :egt__chr01, :string

      add :egt__chr02, :string

      add :egt__chr03, :string

      add :egt__chr04, :string

      add :egt__dec01, :decimal

      add :egt__dec02, :decimal

      add :egt__dec03, :decimal

      add :egt__dte01, :naive_datetime

      add :egt__dte02, :naive_datetime

      add :egt__dte03, :naive_datetime

      add :egt__log01, :boolean

      add :egt__log02, :boolean

      add :egt__log03, :boolean

      add :egt__qadc01, :string

      add :egt__qadc02, :string

      add :egt__qadc03, :string

      add :egt__qadc04, :string

      add :egt__qadd01, :naive_datetime

      add :egt__qadd02, :naive_datetime

      add :egt__qadd03, :naive_datetime

      add :egt__qadde01, :decimal

      add :egt__qadde02, :decimal

      add :egt__qadde03, :decimal

      add :egt__qadl01, :boolean

      add :egt__qadl02, :boolean

      add :egt__qadl03, :boolean

      add :egt_itm_prefix, :string

      add :egt_itm_type, :string

      add :egt_itm_itm_line, :integer

      add :egt_itm_line, :integer

      add :egt_domain, :string

      add :oid_egt_mstr, :decimal

      add :egt_trv_dist, :decimal

      add :egt_trv_um, :string

      add :egt_trv_start_loc, :string

      add :egt_trv_type_loc, :string

      add :egt_trv_time, :string

      add :egt_end_date, :naive_datetime

      add :egt_wo_lot, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DYD_MSTR") do
      add :dyd_tr_type, :string

      add :dyd_doc_type, :string

      add :dyd_dy_code, :string

      add :dyd_user1, :string

      add :dyd_user2, :string

      add :dyd__qadc01, :string

      add :dyd_entity_fr, :string

      add :dyd_entity_to, :string

      add :dyd_domain, :string

      add :oid_dyd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESIG_MSTR") do
      add :oid_esig_mstr, :decimal

      add :esig_date, :naive_datetime

      add :esig_time, :integer

      add :esig_timezone, :string

      add :esig_userid, :string

      add :esig_user_name, :string

      add :esig_rsn_code, :string

      add :esig_comment, :string

      add :esig_mod_date, :naive_datetime

      add :esig_mod_userid, :string

      add :esig_user1, :string

      add :esig_user2, :string

      add :esig__qadc01, :string

      add :esig__qadc02, :string

      add :esig_archived, :boolean

      add :esig_exec, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPS_DET") do
      add :oid_esaps_det, :decimal

      add :oid_esap_mstr, :decimal

      add :oid_esaps_det_parent, :decimal

      add :esaps_order, :integer

      add :esaps_include, :boolean

      add :esaps_table_name, :string

      add :esaps_code, :string

      add :esaps_multiple, :boolean

      add :esaps_mod_date, :naive_datetime

      add :esaps_mod_userid, :string

      add :esaps_user1, :string

      add :esaps_user2, :string

      add :esaps__qadc01, :string

      add :esaps__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ENCD_DET") do
      add :encd_domain, :string

      add :encd_cons_entity, :string

      add :encd_sub_entity, :string

      add :encd_pct, :decimal

      add :encd_sub_domain, :string

      add :encd_mod_userid, :string

      add :encd_mod_date, :naive_datetime

      add :encd_user1, :string

      add :encd_user2, :string

      add :encd__qadc01, :string

      add :encd__qadc02, :string

      add :encd_consolidate, :boolean

      add :oid_encd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGS_DET") do
      add :egs_eng_code, :string

      add :egs_skill, :string

      add :egs_level, :string

      add :egs_cert, :naive_datetime

      add :egs__chr01, :string

      add :egs__chr02, :string

      add :egs__chr03, :string

      add :egs__dec01, :decimal

      add :egs__dec02, :decimal

      add :egs__dte01, :naive_datetime

      add :egs__dte02, :naive_datetime

      add :egs__log01, :boolean

      add :egs__log02, :boolean

      add :egs_user1, :string

      add :egs_user2, :string

      add :egs_area, :string

      add :egs_type, :string

      add :egs__qadc01, :string

      add :egs__qadc02, :string

      add :egs__qadl01, :boolean

      add :egs__qadl02, :boolean

      add :egs__qadt01, :naive_datetime

      add :egs__qadi01, :integer

      add :egs__qade01, :decimal

      add :egs_mod_date, :naive_datetime

      add :egs_mod_userid, :string

      add :egs_domain, :string

      add :oid_egs_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD9_DET") do
      add :ecd9_nbr, :string

      add :ecd9_group, :string

      add :ecd9_approved, :boolean

      add :ecd9_appr_date, :naive_datetime

      add :ecd9_seq, :integer

      add :ecd9_cmtindx, :integer

      add :ecd9_status, :string

      add :ecd9_user1, :string

      add :ecd9_user2, :string

      add :ecd9__qad01, :boolean

      add :ecd9__qad02, :naive_datetime

      add :ecd9__qad03, :string

      add :ecd9__qad04, :string

      add :ecd9__qad05, :string

      add :ecd9_mod_date, :naive_datetime

      add :ecd9_userid, :string

      add :ecd9_domain, :string

      add :oid_ecd9_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EN_MSTR") do
      add :en_entity, :string

      add :en_name, :string

      add :en_primary, :boolean

      add :en__qad02, :integer

      add :en__qad01, :boolean

      add :en_curr, :string

      add :en_user1, :string

      add :en_user2, :string

      add :en_adj_bs, :boolean

      add :en_page_num, :integer

      add :en_next_prot, :integer

      add :en_src_desc_lang, :string

      add :en_addr, :string

      add :en_consolidation, :boolean

      add :en_type, :string

      add :en_domain, :string

      add :oid_en_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGW_WKFL") do
      add :egw_week, :naive_datetime

      add :egw_available, :boolean

      add :egw_area, :string

      add :egw_prob, :boolean

      add :egw_points, :integer

      add :egw_eng_code, :string

      add :egw_userid, :string

      add :egw_calls, :string

      add :egw_tag, :boolean

      add :egw_name, :string

      add :egw_avail_hours, :string

      add :egw_hours, :decimal

      add :egw_ega_recid, :integer

      add :egw_user1, :string

      add :egw_user2, :string

      add :egw_st_time, :string

      add :egw_end_time, :string

      add :egw_overtime, :boolean

      add :egw__qadl01, :boolean

      add :egw__qadl02, :boolean

      add :egw__qadt01, :naive_datetime

      add :egw_schedule, :string

      add :egw__qadt02, :naive_datetime

      add :egw__qadc02, :string

      add :egw__qadi01, :integer

      add :egw__qadi02, :integer

      add :egw__qadc03, :string

      add :egw_domain, :string

      add :oid_egw_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECL_LIST") do
      add :ecl_group, :string

      add :ecl_type, :string

      add :ecl_id, :string

      add :ecl_dev, :string

      add :ecl_copies, :integer

      add :ecl_desc, :string

      add :ecl_user1, :string

      add :ecl_user2, :string

      add :ecl__qad01, :boolean

      add :ecl__qad02, :naive_datetime

      add :ecl__qad03, :string

      add :ecl__qad04, :string

      add :ecl__qad05, :string

      add :ecl_mod_date, :naive_datetime

      add :ecl_userid, :string

      add :ecl_domain, :string

      add :oid_ecl_list, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DPC_MSTR") do
      add :dpc_conv, :string

      add :dpc_desc, :string

      add :dpc_end_date, :naive_datetime

      add :dpc_beg_date, :naive_datetime

      add :dpc__qad01, :string

      add :dpc__qad02, :string

      add :dpc_acq_pct, :decimal

      add :dpc_rt_pct, :decimal

      add :dpc_user1, :string

      add :dpc_user2, :string

      add :oid_dpc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EMC_CTRL") do
      add :emc_nbr, :integer

      add :emc__qad01, :integer

      add :emc_user1, :string

      add :emc_user2, :string

      add :emc__qadi01, :integer

      add :emc_domain, :string

      add :oid_emc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECX_REF") do
      add :ecx_ext_ref, :string

      add :ecx_nbr, :string

      add :ecx_ext_line, :string

      add :ecx_line, :string

      add :ecx_order_type, :string

      add :ecx_site, :string

      add :ecx_line_site, :string

      add :ecx_mod_userid, :string

      add :ecx_mod_date, :naive_datetime

      add :ecx_user1, :string

      add :ecx_user2, :string

      add :ecx__qadc01, :string

      add :ecx__qadc02, :string

      add :ecx_domain, :string

      add :oid_ecx_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD1_DET") do
      add :ecd1_nbr, :string

      add :ecd1_par, :string

      add :ecd1_comp, :string

      add :ecd1_ref, :string

      add :ecd1_qty_type, :string

      add :ecd1_qty_per, :decimal

      add :ecd1_scrp_pct, :decimal

      add :ecd1_rmks, :string

      add :ecd1_op, :integer

      add :ecd1_item_no, :integer

      add :ecd1_qty_per_b, :decimal

      add :ecd1_batch_pct, :decimal

      add :ecd1_batch, :decimal

      add :ecd1_batch_um, :string

      add :ecd1_cmtindx, :integer

      add :ecd1_recindx, :integer

      add :ecd1_process, :string

      add :ecd1__qad01, :boolean

      add :ecd1__qad02, :naive_datetime

      add :ecd1__qad03, :string

      add :ecd1__qad04, :string

      add :ecd1__qad05, :string

      add :ecd1_mod_date, :naive_datetime

      add :ecd1_userid, :string

      add :ecd1_user1, :string

      add :ecd1_user2, :string

      add :ecd1_deactivate, :boolean

      add :ecd1_start, :naive_datetime

      add :ecd1_ps_code, :string

      add :ecd1_mandatory, :boolean

      add :ecd1_default, :boolean

      add :ecd1_lt_off, :integer

      add :ecd1_fcst_pct, :decimal

      add :ecd1_group, :string

      add :ecd1_psprocess, :string

      add :ecd1_domain, :string

      add :oid_ecd1_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CT_MSTR") do
      add :ct_code, :string

      add :ct_desc, :string

      add :ct_disc_pct, :decimal

      add :ct_disc_days, :decimal

      add :ct_due_days, :decimal

      add :ct_due_date, :naive_datetime

      add :ct_xfrom_inv, :boolean

      add :ct_disc_date, :naive_datetime

      add :ct_xdue_inv, :boolean

      add :ct_dating, :boolean

      add :ct_user1, :string

      add :ct_user2, :string

      add :ct_userid, :string

      add :ct_mod_date, :naive_datetime

      add :ct_due_inv, :integer

      add :ct_from_inv, :integer

      add :ct_terms_int, :decimal

      add :ct_late_int, :decimal

      add :ct_base_date, :naive_datetime

      add :ct_base_days, :integer

      add :ct_min_days, :integer

      add :ct_grace_days, :integer

      add :ct__qadc01, :string

      add :ct_mtd_disc, :boolean

      add :ct_mtd_due, :boolean

      add :ct_domain, :string

      add :oid_ct_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EMAP_DET") do
      add :emap_doc_id, :integer

      add :emap_doc_line, :integer

      add :emap_line_cont, :boolean

      add :emap_data, :string

      add :emap_mod_date, :naive_datetime

      add :emap_mod_userid, :string

      add :emap_doc_sufx, :integer

      add :emap_user1, :string

      add :emap_user2, :string

      add :emap__dec01, :decimal

      add :emap__dec02, :decimal

      add :emap__int01, :integer

      add :emap__int02, :integer

      add :emap__log01, :boolean

      add :emap__log02, :boolean

      add :emap__dte01, :naive_datetime

      add :emap__dte02, :naive_datetime

      add :emap__qadc01, :string

      add :emap__qadc02, :string

      add :emap__qadc03, :string

      add :emap__qadc04, :string

      add :emap__qadd01, :decimal

      add :emap__qadd02, :decimal

      add :emap__qadi01, :integer

      add :emap__qadi02, :integer

      add :emap__qadl01, :boolean

      add :emap__qadl02, :boolean

      add :emap__qadt01, :naive_datetime

      add :emap__qadt02, :naive_datetime

      add :emap_domain, :string

      add :oid_emap_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECT_MSTR") do
      add :ect_desc, :string

      add :ect_dsgn_grp, :string

      add :ect_approval, :string

      add :ect_distr, :string

      add :ect_prefix, :string

      add :ect_dc_warn, :integer

      add :ect_type, :string

      add :ect_user1, :string

      add :ect_user2, :string

      add :ect__qad01, :boolean

      add :ect__qad02, :naive_datetime

      add :ect__qad03, :string

      add :ect__qad04, :string

      add :ect__qad05, :string

      add :ect_mod_date, :naive_datetime

      add :ect_userid, :string

      add :ect_doc_type, :string

      add :ect_secure_text, :string

      add :ect_secure_item, :string

      add :ect_secure_stct, :string

      add :ect_secure_routing, :string

      add :ect_secure_admn, :string

      add :ect_seqrev_off, :boolean

      add :ect_domain, :string

      add :oid_ect_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECA_MSTR") do
      add :eca_code, :string

      add :eca_group, :string

      add :eca_seq, :integer

      add :eca_reroute, :integer

      add :eca__qad01, :boolean

      add :eca__qad02, :naive_datetime

      add :eca__qad03, :string

      add :eca__qad04, :string

      add :eca__qad05, :string

      add :eca_mod_date, :naive_datetime

      add :eca_userid, :string

      add :eca_user1, :string

      add :eca_user2, :string

      add :eca_domain, :string

      add :oid_eca_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DPR_MSTR") do
      add :dpr_method, :string

      add :dpr_desc, :string

      add :dpr_beg_date, :naive_datetime

      add :dpr_end_date, :naive_datetime

      add :dpr_user1, :string

      add :dpr_user2, :string

      add :dpr_switch, :boolean

      add :dpr_basis, :string

      add :dpr_eq, :string

      add :dpr_table, :boolean

      add :dpr_mod_date, :naive_datetime

      add :dpr_userid, :string

      add :dpr_opt_method, :string

      add :dpr__qad01, :boolean

      add :dpr__qad02, :string

      add :dpr__qad03, :string

      add :oid_dpr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CR_MSTR") do
      add :cr_code, :string

      add :cr_type, :string

      add :cr_code_beg, :string

      add :cr_code_end, :string

      add :cr_mod_date, :naive_datetime

      add :cr_mod_userid, :string

      add :cr_user1, :string

      add :cr_user2, :string

      add :cr__qadc01, :string

      add :cr__qadt01, :naive_datetime

      add :cr_domain, :string

      add :oid_cr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD5_DET") do
      add :ecd5_part, :string

      add :ecd5_site, :string

      add :ecd5_routing, :string

      add :ecd5_start, :naive_datetime

      add :ecd5_end, :naive_datetime

      add :ecd5_user1, :string

      add :ecd5_user2, :string

      add :ecd5_userid, :string

      add :ecd5_bom_code, :string

      add :ecd5_mod_date, :naive_datetime

      add :ecd5_batch, :decimal

      add :ecd5_apprdate, :naive_datetime

      add :ecd5_appr_id, :string

      add :ecd5_cmtindx, :integer

      add :ecd5_material, :decimal

      add :ecd5_labor, :decimal

      add :ecd5_burden, :decimal

      add :ecd5_subcontract, :decimal

      add :ecd5_overhead, :decimal

      add :ecd5_total_cost, :decimal

      add :ecd5_qspec_nbr, :string

      add :ecd5_qspec_id, :integer

      add :ecd5__qadc01, :string

      add :ecd5_domain, :string

      add :oid_ecd5_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DOM_MSTR") do
      add :dom_domain, :string

      add :dom_name, :string

      add :dom_type, :string

      add :dom_mod_userid, :string

      add :dom_mod_date, :naive_datetime

      add :dom_user1, :string

      add :dom_user2, :string

      add :dom__qadc01, :string

      add :dom__qadc02, :string

      add :dom_sname, :string

      add :dom_db, :string

      add :dom_active, :boolean

      add :oid_dom_mstr, :decimal

      add :dom_data_cpg, :string

      add :dom_expt_lst, :string

      add :dom_tzdb, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DBK_MSTR") do
      add :dbk_book, :string

      add :dbk_desc, :string

      add :dbk_entity, :string

      add :dbk_curr, :string

      add :dbk_post, :boolean

      add :dbk_ytd, :boolean

      add :dbk_pd_taken, :integer

      add :dbk_curr_pd, :integer

      add :dbk_pd_yr, :integer

      add :dbk_rep_cost, :boolean

      add :dbk_mod_date, :naive_datetime

      add :dbk_userid, :string

      add :dbk_beg_dt, :naive_datetime

      add :dbk__qad01, :boolean

      add :dbk__qad02, :string

      add :dbk__qad03, :string

      add :dbk_bank, :string

      add :dbk_user1, :string

      add :dbk_user2, :string

      add :oid_dbk_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSSI_DET") do
      add :cssi_site, :string

      add :cssi_set, :string

      add :cssi_cur, :string

      add :cssi_active, :boolean

      add :cssi_user1, :string

      add :cssi_user2, :string

      add :cssi_userid, :string

      add :cssi_mod_date, :naive_datetime

      add :cssi__qadc01, :string

      add :cssi_domain, :string

      add :oid_cssi_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD4_DET") do
      add :ecd4_part, :string

      add :ecd4_routing, :string

      add :ecd4_op, :integer

      add :ecd4_nbr, :string

      add :ecd4_property, :string

      add :ecd4_cmtindx, :integer

      add :ecd4_user1, :string

      add :ecd4_user2, :string

      add :ecd4_propertyum, :string

      add :ecd4_specid, :integer

      add :ecd4__qadi01, :integer

      add :ecd4_doc_nbr, :integer

      add :ecd4_sequence, :string

      add :ecd4_testmthd, :string

      add :ecd4_minimum, :string

      add :ecd4_maximum, :string

      add :ecd4_target, :string

      add :ecd4_attribute, :string

      add :ecd4_attach, :string

      add :ecd4_spec_det, :string

      add :ecd4_doc_rev, :decimal

      add :ecd4__qadc01, :string

      add :ecd4_domain, :string

      add :oid_ecd4_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DMW_WKFL") do
      add :dmw_nbr, :string

      add :dmw_bill, :string

      add :dmw_amt, :decimal

      add :dmw_disc, :decimal

      add :dmw_appl, :decimal

      add :dmw_date, :naive_datetime

      add :dmw_due_date, :naive_datetime

      add :dmw__dte01, :naive_datetime

      add :dmw__char01, :string

      add :dmw__char02, :string

      add :dmw__char03, :string

      add :dmw__char04, :string

      add :dmw__char05, :string

      add :dmw__log01, :boolean

      add :dmw_type, :string

      add :dmw_sel, :string

      add :dmw_entity, :string

      add :dmw_curr, :string

      add :dmw_bank, :string

      add :dmw_user1, :string

      add :dmw_user2, :string

      add :oid_dmw_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DAL_MSTR") do
      add :dal_list_id, :string

      add :dal_list_desc, :string

      add :dal_mod_userid, :string

      add :dal_mod_date, :naive_datetime

      add :dal_user1, :string

      add :dal_user2, :string

      add :dal__chr01, :string

      add :dal__chr02, :string

      add :dal__dec01, :decimal

      add :dal__dec02, :decimal

      add :dal__int01, :integer

      add :dal__int02, :integer

      add :dal__log01, :boolean

      add :dal__log02, :boolean

      add :dal__dte01, :naive_datetime

      add :dal__dte02, :naive_datetime

      add :dal__qadc01, :string

      add :dal__qadc02, :string

      add :dal__qadc03, :string

      add :dal__qadc04, :string

      add :dal__qadd01, :decimal

      add :dal__qadd02, :decimal

      add :dal__qadi01, :integer

      add :dal__qadi02, :integer

      add :dal__qadl01, :boolean

      add :dal__qadl02, :boolean

      add :dal__qadt01, :naive_datetime

      add :dal__qadt02, :naive_datetime

      add :dal_domain, :string

      add :oid_dal_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSLM_MSTR") do
      add :cslm_ctry_code, :string

      add :cslm_auth, :string

      add :cslm_licen, :string

      add :cslm_ctrl, :string

      add :cslm_group, :string

      add :cslm_start, :naive_datetime

      add :cslm_end, :naive_datetime

      add :cslm_max_amt, :decimal

      add :cslm_tot_amt, :decimal

      add :cslm_max_qty, :integer

      add :cslm_tot_qty, :integer

      add :cslm_curr, :string

      add :cslm_cmtindx, :integer

      add :cslm_user1, :string

      add :cslm_user2, :string

      add :cslm__qadc01, :string

      add :cslm_domain, :string

      add :oid_cslm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CREF_MSTR") do
      add :cref_ref_type, :string

      add :cref_item3, :string

      add :cref_item2, :string

      add :cref_item1, :string

      add :cref_qad_dec02, :decimal

      add :cref_qad_date2, :naive_datetime

      add :cref_qad_dec01, :decimal

      add :cref_qad_date1, :naive_datetime

      add :cref_qad_log02, :boolean

      add :cref_qad_log01, :boolean

      add :cref_cset, :string

      add :cref_item4, :string

      add :cref_user1, :string

      add :cref_user2, :string

      add :cref__qadc01, :string

      add :cref_domain, :string

      add :oid_cref_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD2_DET") do
      add :ecd2_nbr, :string

      add :ecd2_routing, :string

      add :ecd2_op, :integer

      add :ecd2_std_op, :string

      add :ecd2_desc, :string

      add :ecd2_wkctr, :string

      add :ecd2_setup, :decimal

      add :ecd2_run, :decimal

      add :ecd2_yield_pct, :decimal

      add :ecd2_tool, :string

      add :ecd2_vend, :string

      add :ecd2_sub_cost, :decimal

      add :ecd2_subcntrt, :boolean

      add :ecd2_mch, :string

      add :ecd2_setup_men, :decimal

      add :ecd2_men_mch, :decimal

      add :ecd2_mch_op, :integer

      add :ecd2_batch, :decimal

      add :ecd2_run_per_b, :decimal

      add :ecd2_cmtindx, :integer

      add :ecd2_recindx, :integer

      add :ecd2_process, :string

      add :ecd2__qad01, :boolean

      add :ecd2__qad02, :naive_datetime

      add :ecd2__qad03, :string

      add :ecd2__qad04, :string

      add :ecd2__qad05, :string

      add :ecd2_mod_date, :naive_datetime

      add :ecd2_userid, :string

      add :ecd2_user1, :string

      add :ecd2_user2, :string

      add :ecd2_domain, :string

      add :oid_ecd2_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DJRC_DET") do
      add :djrc_code, :string

      add :djrc_type, :string

      add :djrc_element, :string

      add :djrc_order, :integer

      add :djrc_mod_userid, :string

      add :djrc_mod_date, :naive_datetime

      add :djrc_total, :boolean

      add :djrc_user1, :string

      add :djrc_user2, :string

      add :djrc_userd01, :decimal

      add :djrc_useri01, :integer

      add :djrc_userl01, :boolean

      add :djrc_usert01, :naive_datetime

      add :djrc__qadc01, :string

      add :djrc__qadc02, :string

      add :djrc__qadd01, :decimal

      add :djrc__qadi01, :integer

      add :djrc__qadl01, :boolean

      add :djrc__qadt01, :naive_datetime

      add :djrc_domain, :string

      add :oid_djrc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CU_MSTR") do
      add :cu_curr, :string

      add :cu_desc, :string

      add :cu_rnd_mthd, :string

      add :cu_active, :boolean

      add :cu__qadc02, :string

      add :cu__qadc04, :string

      add :cu__qadc05, :string

      add :cu__qadc07, :string

      add :cu__qadc08, :string

      add :cu__qadc10, :string

      add :cu__qadc11, :string

      add :cu__qadc13, :string

      add :cu__qadc14, :string

      add :cu__qadc16, :string

      add :cu_mod_userid, :string

      add :cu_mod_date, :naive_datetime

      add :cu_user1, :string

      add :cu_user2, :string

      add :cu__qadt01, :naive_datetime

      add :cu__qadt02, :naive_datetime

      add :cu__qadd01, :decimal

      add :cu__qadc01, :string

      add :cu__qadl01, :boolean

      add :cu__qadc15, :string

      add :cu__qadc09, :string

      add :cu__qadc12, :string

      add :cu__qadc03, :string

      add :cu__qadc06, :string

      add :cu_iso_curr, :string

      add :oid_cu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSIM_MSTR") do
      add :csim_ctry_code, :string

      add :csim_auth, :string

      add :csim_ctrl, :string

      add :csim_desc, :string

      add :csim_um, :string

      add :csim_cmtindx, :integer

      add :csim_user1, :string

      add :csim_user2, :string

      add :csim__qadc01, :string

      add :csim_domain, :string

      add :oid_csim_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CRC_CTRL") do
      add :crc__qadi01, :integer

      add :crc_nbr, :integer

      add :crc_user1, :string

      add :crc_user2, :string

      add :crc__qadc01, :string

      add :crc_domain, :string

      add :oid_crc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CODE_MSTR") do
      add :code_fldname, :string

      add :code_value, :string

      add :code_cmmt, :string

      add :code_user1, :string

      add :code_user2, :string

      add :code_desc, :string

      add :code__qadc01, :string

      add :code_domain, :string

      add :oid_code_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DPRT_DET") do
      add :dprt_method, :string

      add :dprt_year, :integer

      add :dprt_mnth, :integer

      add :dprt_amt, :decimal

      add :dprt_percent, :decimal

      add :dprt__qad01, :boolean

      add :dprt__qad02, :string

      add :dprt__qad03, :string

      add :dprt_user1, :string

      add :dprt_user2, :string

      add :oid_dprt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CTD_DET") do
      add :ctd_code, :string

      add :ctd_date_cd, :string

      add :ctd_pct_due, :decimal

      add :ctd_seq, :integer

      add :ctd_user1, :string

      add :ctd_user2, :string

      add :ctd__qadc01, :string

      add :ctd_domain, :string

      add :oid_ctd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSD_DET") do
      add :csd_domain, :string

      add :csd_category, :string

      add :csd_ca_nbr, :string

      add :csd_problem, :string

      add :csd_line, :integer

      add :csd_mod_date, :naive_datetime

      add :csd_mod_userid, :string

      add :csd_user1, :string

      add :csd_user2, :string

      add :csd__qadc01, :string

      add :csd__qadc02, :string

      add :oid_csd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CPC_MSTR") do
      add :cpc_cust, :string

      add :cpc_year, :integer

      add :cpc_type, :string

      add :cpc_desc, :string

      add :cpc_userid, :string

      add :cpc_mod_date, :naive_datetime

      add :cpc__chr01, :string

      add :cpc__chr02, :string

      add :cpc__chr03, :string

      add :cpc__chr04, :string

      add :cpc__dec01, :decimal

      add :cpc__log01, :boolean

      add :cpc_user1, :string

      add :cpc_user2, :string

      add :cpc_domain, :string

      add :oid_cpc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DS_DET") do
      add :ds_req_nbr, :string

      add :ds_nbr, :string

      add :ds_site, :string

      add :ds_shipsite, :string

      add :ds_shipdate, :naive_datetime

      add :ds_due_date, :naive_datetime

      add :ds_per_date, :naive_datetime

      add :ds_part, :string

      add :ds_qty_ord, :decimal

      add :ds_qty_conf, :decimal

      add :ds_qty_ship, :decimal

      add :ds_status, :string

      add :ds_rmks, :string

      add :ds_rev, :string

      add :ds_git_site, :string

      add :ds_git_acct, :string

      add :ds_git_cc, :string

      add :ds_project, :string

      add :ds_cmtindx, :integer

      add :ds_residual, :decimal

      add :ds_so_nbr, :string

      add :ds_loc, :string

      add :ds_trans_id, :string

      add :ds_user1, :string

      add :ds_user2, :string

      add :ds__chr01, :string

      add :ds__chr02, :string

      add :ds__chr03, :string

      add :ds__chr04, :string

      add :ds__chr05, :string

      add :ds__dte01, :naive_datetime

      add :ds__dte02, :naive_datetime

      add :ds__dec01, :decimal

      add :ds__dec02, :decimal

      add :ds__log01, :boolean

      add :ds_qty_all, :decimal

      add :ds_qty_pick, :decimal

      add :ds_qty_chg, :decimal

      add :ds_sod_line, :integer

      add :ds_git_sub, :string

      add :ds_order_category, :string

      add :ds_fr_rate, :decimal

      add :ds_fr_wt, :decimal

      add :ds_fr_wt_um, :string

      add :ds_fr_class, :string

      add :ds_fr_chg, :decimal

      add :ds_fr_list, :string

      add :ds_line, :integer

      add :ds_domain, :string

      add :oid_ds_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DOSR_DET") do
      add :dosr_domain, :string

      add :dosr_itm_nbr, :string

      add :dosr_itm_line, :integer

      add :dosr_line, :integer

      add :dosr_trans_type, :string

      add :dosr_qty, :decimal

      add :dosr_est_date, :naive_datetime

      add :dosr_act_date, :naive_datetime

      add :dosr_site, :string

      add :dosr_loc, :string

      add :dosr_serial, :string

      add :dosr_ref, :integer

      add :dosr_mod_userid, :string

      add :dosr_mod_date, :naive_datetime

      add :oid_dosr_det, :decimal

      add :dosr_user1, :string

      add :dosr_user2, :string

      add :dosr__qadc01, :string

      add :dosr__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSS_MSTR") do
      add :css_ctry_code, :string

      add :css_auth, :string

      add :css_site, :string

      add :css_ctrl, :string

      add :css_start, :naive_datetime

      add :css_end, :naive_datetime

      add :css_cmtindx, :integer

      add :css_user1, :string

      add :css_user2, :string

      add :css__qadc01, :string

      add :css_domain, :string

      add :oid_css_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSA_MSTR") do
      add :csa_auth, :string

      add :csa_name, :string

      add :csa_type, :string

      add :csa_group, :string

      add :csa_cmtindx, :integer

      add :csa_user1, :string

      add :csa_user2, :string

      add :csa__qadc01, :string

      add :csa_domain, :string

      add :oid_csa_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_COST_CAL") do
      add :cost_set, :string

      add :cost_site, :string

      add :cost_start, :naive_datetime

      add :cost_memo, :string

      add :cost_cmtindx, :integer

      add :cost_user1, :string

      add :cost_user2, :string

      add :cost__qadc01, :string

      add :cost_domain, :string

      add :oid_cost_cal, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DJR_MSTR") do
      add :djr_acc_skip, :boolean

      add :djr_bank, :string

      add :djr_cc1, :string

      add :djr_cc2, :string

      add :djr_code, :string

      add :djr_crit1, :string

      add :djr_crit2, :string

      add :djr_desc, :string

      add :djr_disp_curr, :boolean

      add :djr_ent1, :string

      add :djr_ent2, :string

      add :djr_inc_memo, :boolean

      add :djr_inc_stat, :boolean

      add :djr_mod_userid, :string

      add :djr_mod_date, :naive_datetime

      add :djr_newpage, :boolean

      add :djr_pagenum, :integer

      add :djr_per1, :integer

      add :djr_per2, :integer

      add :djr_sub1, :string

      add :djr_sub2, :string

      add :djr_summary, :boolean

      add :djr_title, :string

      add :djr_type, :string

      add :djr_year, :integer

      add :djr_user1, :string

      add :djr_user2, :string

      add :djr_userc03, :string

      add :djr_userc04, :string

      add :djr_userc05, :string

      add :djr_userd01, :decimal

      add :djr_userd02, :decimal

      add :djr_useri01, :integer

      add :djr_useri02, :integer

      add :djr_userl01, :boolean

      add :djr_userl02, :boolean

      add :djr_usert01, :naive_datetime

      add :djr_usert02, :naive_datetime

      add :djr__qadc01, :string

      add :djr__qadc02, :string

      add :djr__qadc03, :string

      add :djr__qadc04, :string

      add :djr__qadc05, :string

      add :djr__qadd01, :decimal

      add :djr__qadd02, :decimal

      add :djr__qadi01, :integer

      add :djr__qadi02, :integer

      add :djr__qadl01, :boolean

      add :djr__qadl02, :boolean

      add :djr__qadt01, :naive_datetime

      add :djr__qadt02, :naive_datetime

      add :djr_domain, :string

      add :oid_djr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DALD_DET") do
      add :dald_list_id, :string

      add :dald_app_id, :string

      add :dald_eff_dt_in, :naive_datetime

      add :dald_eff_dt_out, :naive_datetime

      add :dald_mod_userid, :string

      add :dald_mod_date, :naive_datetime

      add :dald_user1, :string

      add :dald_user2, :string

      add :dald__chr01, :string

      add :dald__chr02, :string

      add :dald__dec01, :decimal

      add :dald__dec02, :decimal

      add :dald__int01, :integer

      add :dald__int02, :integer

      add :dald__log01, :boolean

      add :dald__log02, :boolean

      add :dald__dte01, :naive_datetime

      add :dald__dte02, :naive_datetime

      add :dald__qadc01, :string

      add :dald__qadc02, :string

      add :dald__qadc03, :string

      add :dald__qadc04, :string

      add :dald__qadd01, :decimal

      add :dald__qadd02, :decimal

      add :dald__qadi01, :integer

      add :dald__qadi02, :integer

      add :dald__qadl01, :boolean

      add :dald__qadl02, :boolean

      add :dald__qadt01, :naive_datetime

      add :dald__qadt02, :naive_datetime

      add :dald_domain, :string

      add :oid_dald_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CRD_DET") do
      add :crd_domain, :string

      add :crd_category, :string

      add :crd_ca_nbr, :string

      add :crd_id, :integer

      add :crd_alarm_date, :naive_datetime

      add :crd_alarm_time, :string

      add :crd_status, :string

      add :crd_desc, :string

      add :crd_userid, :string

      add :crd_comments, :string

      add :crd_user1, :string

      add :crd_user2, :string

      add :crd__qadc01, :string

      add :crd__qadc02, :string

      add :crd_close, :boolean

      add :crd_itm_line, :integer

      add :crd_mod_userid, :string

      add :crd_mod_date, :naive_datetime

      add :oid_crd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_COMD_DET") do
      add :comd_comm_code, :string

      add :comd_part, :string

      add :comd_user1, :string

      add :comd_user2, :string

      add :comd_user3, :string

      add :comd_user4, :string

      add :comd__qadc01, :string

      add :comd__qadc02, :string

      add :comd__qadc03, :string

      add :comd__qadc04, :string

      add :comd__qadd01, :decimal

      add :comd__qadd02, :decimal

      add :comd__qadl01, :boolean

      add :comd__qadl02, :boolean

      add :comd__qadt01, :naive_datetime

      add :comd__qadt02, :naive_datetime

      add :comd__qadi01, :integer

      add :comd__qadi02, :integer

      add :comd_domain, :string

      add :oid_comd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DECL_MSTR") do
      add :decl_addr, :string

      add :decl_agent, :string

      add :decl_branch, :string

      add :decl_ctry_code, :string

      add :decl_curr, :string

      add :decl_program, :string

      add :decl_ex_ratetype, :string

      add :decl_region, :string

      add :decl_mod_date, :naive_datetime

      add :decl_mod_userid, :string

      add :decl_affiliation, :string

      add :decl_user1, :string

      add :decl_user2, :string

      add :decl__qadc01, :string

      add :decl__qadc02, :string

      add :decl_net_wt_min, :decimal

      add :decl_domain, :string

      add :oid_decl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSC_MSTR") do
      add :csc_ctry_code, :string

      add :csc_auth, :string

      add :csc_addr, :string

      add :csc_ctrl, :string

      add :csc_start, :naive_datetime

      add :csc_end, :naive_datetime

      add :csc_cmtindx, :integer

      add :csc_user1, :string

      add :csc_user2, :string

      add :csc__qadc01, :string

      add :csc_domain, :string

      add :oid_csc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CPCD_DET") do
      add :cpcd_cust, :string

      add :cpcd_year, :integer

      add :cpcd_type, :string

      add :cpcd_per, :integer

      add :cpcd_start, :naive_datetime

      add :cpcd_end, :naive_datetime

      add :cpcd__chr01, :string

      add :cpcd__chr02, :string

      add :cpcd__chr03, :string

      add :cpcd__chr04, :string

      add :cpcd__dec01, :decimal

      add :cpcd__log01, :boolean

      add :cpcd_user1, :string

      add :cpcd_user2, :string

      add :cpcd_domain, :string

      add :oid_cpcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNSUD_DET") do
      add :cnsud_cnsu_pkey, :integer

      add :cnsud_cnsix_pkey, :integer

      add :cnsud_qty_used, :decimal

      add :cnsud_receipt_trnbr, :integer

      add :cnsud_receiver, :string

      add :cnsud_asn_shipper, :string

      add :cnsud_aged_date, :naive_datetime

      add :cnsud_orig_aged_date, :naive_datetime

      add :cnsud_mod_userid, :string

      add :cnsud_mod_date, :naive_datetime

      add :cnsud_user1, :string

      add :cnsud_user2, :string

      add :cnsud__qadc01, :string

      add :cnsud__qadc02, :string

      add :cnsud_int_consignment, :boolean

      add :cnsud_domain, :string

      add :oid_cnsud_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CMH_HIST") do
      add :cmh_year, :integer

      add :cmh_cust, :string

      add :cmh_tot_sale, :decimal

      add :cmh_tot_cost, :decimal

      add :cmh_user1, :string

      add :cmh_user2, :string

      add :cmh_type, :string

      add :cmh__chr01, :string

      add :cmh__chr02, :string

      add :cmh__chr03, :string

      add :cmh__chr04, :string

      add :cmh__chr05, :string

      add :cmh__chr06, :string

      add :cmh__chr07, :string

      add :cmh__chr08, :string

      add :cmh__chr09, :string

      add :cmh__chr10, :string

      add :cmh__dte01, :naive_datetime

      add :cmh__dte02, :naive_datetime

      add :cmh__dec01, :decimal

      add :cmh__dec02, :decimal

      add :cmh__log01, :boolean

      add :cmh__log02, :boolean

      add :cmh_domain, :string

      add :oid_cmh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CTRY_MSTR") do
      add :ctry_ctry_code, :string

      add :ctry_country, :string

      add :ctry_ec_flag, :boolean

      add :ctry_code1, :string

      add :ctry_user1, :string

      add :ctry_user2, :string

      add :ctry__chr01, :string

      add :ctry__log01, :boolean

      add :ctry__qad01, :string

      add :ctry__qad02, :string

      add :ctry__qad03, :string

      add :ctry__qad04, :boolean

      add :ctry__qad05, :boolean

      add :ctry_group, :string

      add :ctry_cmtindx, :integer

      add :ctry_type, :string

      add :ctry_nafta_flag, :boolean

      add :ctry_dea_flag, :boolean

      add :ctry_gatt_flag, :boolean

      add :ctry_vat_reg_prefix, :string

      add :ctry_ie_code, :string

      add :oid_ctry_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSID_DET") do
      add :csid_ctry_code, :string

      add :csid_auth, :string

      add :csid_ctrl, :string

      add :csid_part, :string

      add :csid_start, :naive_datetime

      add :csid_end, :naive_datetime

      add :csid_status, :string

      add :csid_class, :string

      add :csid_pref, :string

      add :csid_addr1, :string

      add :csid_addr2, :string

      add :csid_addr3, :string

      add :csid_orig_ctry, :string

      add :csid_orig_pct, :decimal

      add :csid_intrastat, :boolean

      add :csid_user1, :string

      add :csid_user2, :string

      add :csid__qadc01, :string

      add :csid_domain, :string

      add :oid_csid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CPH_HIST") do
      add :cph_year, :integer

      add :cph_cust, :string

      add :cph_ship, :string

      add :cph_pl, :string

      add :cph_part, :string

      add :cph_qty, :decimal

      add :cph_sales, :decimal

      add :cph_cost, :decimal

      add :cph_tot_qty, :decimal

      add :cph_tot_sale, :decimal

      add :cph_tot_cost, :decimal

      add :cph_type, :string

      add :cph_user1, :string

      add :cph_user2, :string

      add :cph_smonth, :integer

      add :cph__chr01, :string

      add :cph__chr02, :string

      add :cph__chr03, :string

      add :cph__chr04, :string

      add :cph__chr05, :string

      add :cph__dte01, :naive_datetime

      add :cph__dte02, :naive_datetime

      add :cph__log01, :boolean

      add :cph__dec01, :decimal

      add :cph__dec02, :decimal

      add :cph_site, :string

      add :cph_domain, :string

      add :oid_cph_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNS_CTRL") do
      add :cns__qadi01, :integer

      add :cns_active, :boolean

      add :cns_consign_flag, :boolean

      add :cns_max_aging_days, :integer

      add :cns_picking_logic, :string

      add :cns_transfer_ownership, :string

      add :cns_mod_userid, :string

      add :cns_mod_date, :naive_datetime

      add :cns_user1, :string

      add :cns_user2, :string

      add :cns__qadc01, :string

      add :cns__qadc02, :string

      add :cns_domain, :string

      add :oid_cns_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CM_MSTR") do
      add :cm_addr, :string

      add :cm_ship, :string

      add :cm_type, :string

      add :cm_cr_terms, :string

      add :cm_xslspsn, :string

      add :cm__qadi01, :integer

      add :cm_pr_list, :string

      add :cm_disc_pct, :decimal

      add :cm_partial, :boolean

      add :cm_stmt, :boolean

      add :cm_dun, :boolean

      add :cm_fin, :boolean

      add :cm_ar_acct, :string

      add :cm_ar_cc, :string

      add :cm__qadc07, :string

      add :cm__qadc01, :string

      add :cm_stmt_cyc, :string

      add :cm_shipvia, :string

      add :cm_rmks, :string

      add :cm_resale, :string

      add :cm_region, :string

      add :cm__qad04, :decimal

      add :cm_sort, :string

      add :cm_balance, :decimal

      add :cm_taxable, :boolean

      add :cm_pay_date, :naive_datetime

      add :cm_xslspsn2, :string

      add :cm__qadi02, :integer

      add :cm_avg_pay, :integer

      add :cm_user1, :string

      add :cm_user2, :string

      add :cm_curr, :string

      add :cm_lang, :string

      add :cm_db, :string

      add :cm_cr_hold, :boolean

      add :cm_cr_rating, :string

      add :cm_high_cr, :decimal

      add :cm_high_date, :naive_datetime

      add :cm_sale_date, :naive_datetime

      add :cm_invoices, :integer

      add :cm_fin_date, :naive_datetime

      add :cm__qad06, :boolean

      add :cm_fst_id, :string

      add :cm_pst_id, :string

      add :cm_pst, :boolean

      add :cm_tax_in, :boolean

      add :cm_site, :string

      add :cm_class, :string

      add :cm_taxc, :string

      add :cm_bill, :string

      add :cm__chr01, :string

      add :cm__chr02, :string

      add :cm__chr03, :string

      add :cm__chr04, :string

      add :cm__chr05, :string

      add :cm__chr06, :string

      add :cm__chr07, :string

      add :cm__chr08, :string

      add :cm__chr09, :string

      add :cm__chr10, :string

      add :cm__dte01, :naive_datetime

      add :cm__dte02, :naive_datetime

      add :cm__dec01, :decimal

      add :cm__dec02, :decimal

      add :cm__log01, :boolean

      add :cm__qadc02, :string

      add :cm_fr_list, :string

      add :cm_fr_terms, :string

      add :cm_mod_date, :naive_datetime

      add :cm_userid, :string

      add :cm_conrep_logic, :string

      add :cm_slspsn, :string

      add :cm_fr_min_wt, :decimal

      add :cm_drft_bal, :decimal

      add :cm_lc_bal, :decimal

      add :cm_pr_list2, :string

      add :cm_fix_pr, :boolean

      add :cm_cr_update, :naive_datetime

      add :cm_cr_review, :naive_datetime

      add :cm_coll_mthd, :string

      add :cm_drft_min, :decimal

      add :cm_drft_max, :decimal

      add :cm_drft_disc, :boolean

      add :cm_drft_apv, :boolean

      add :cm_internal, :boolean

      add :cm_svc_list, :string

      add :cm_po_reqd, :boolean

      add :cm_serv_terms, :string

      add :cm_cr_limit, :decimal

      add :cm_promo, :string

      add :cm_btb_cr, :boolean

      add :cm_btb_type, :string

      add :cm_ship_lt, :integer

      add :cm_btb_mthd, :boolean

      add :cm_ex_ratetype, :string

      add :cm_disc_comb, :string

      add :cm_scurr, :string

      add :cm__qadc03, :string

      add :cm__qadc04, :string

      add :cm__qadc05, :string

      add :cm__qadc06, :string

      add :cm__qadd01, :decimal

      add :cm__qadd02, :decimal

      add :cm__qadl01, :boolean

      add :cm__qadl02, :boolean

      add :cm__qadl03, :boolean

      add :cm__qadl04, :boolean

      add :cm__qadt01, :naive_datetime

      add :cm__qadt02, :naive_datetime

      add :cm__qadi03, :integer

      add :cm__qadi04, :integer

      add :cm_ar_sub, :string

      add :cm_sic, :string

      add :cm_pay_method, :string

      add :cm_submit_prop, :boolean

      add :cm_bank, :string

      add :cm_domain, :string

      add :oid_cm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BDP_DET") do
      add :bdp_program, :string

      add :bdp_addr, :string

      add :bdp_ref, :string

      add :bdp_seq, :integer

      add :bdp_character, :string

      add :bdp_date, :naive_datetime

      add :bdp_decimal, :decimal

      add :bdp_integer, :integer

      add :bdp_logical, :boolean

      add :bdp_user1, :string

      add :bdp_user2, :string

      add :bdp__qadc01, :string

      add :bdp__qadc02, :string

      add :bdp__qadd01, :decimal

      add :bdp__qadi01, :integer

      add :bdp__qadl01, :boolean

      add :bdp__qadt01, :naive_datetime

      add :bdp_bank, :string

      add :bdp_pay_method, :string

      add :bdp_split, :boolean

      add :bdp_userd01, :decimal

      add :bdp_useri01, :integer

      add :bdp_userl01, :boolean

      add :bdp_usert01, :naive_datetime

      add :bdp_mod_date, :naive_datetime

      add :bdp_mod_userid, :string

      add :bdp_domain, :string

      add :oid_bdp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CST_MSTR") do
      add :cst_cust, :string

      add :cst_desc, :string

      add :cst__qad01, :string

      add :cst__qad02, :string

      add :cst_user1, :string

      add :cst_user2, :string

      add :oid_cst_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSBD_DET") do
      add :csbd_addr, :string

      add :csbd_bank, :string

      add :csbd_edi, :string

      add :csbd_branch, :string

      add :csbd_bk_acct, :string

      add :csbd_type, :string

      add :csbd_end_date, :naive_datetime

      add :csbd_beg_date, :naive_datetime

      add :csbd_userid, :string

      add :csbd_mod_date, :naive_datetime

      add :csbd_user1, :string

      add :csbd_user2, :string

      add :csbd__chr01, :string

      add :csbd__chr02, :string

      add :csbd__chr03, :string

      add :csbd__chr04, :string

      add :csbd__chr05, :string

      add :csbd__dec01, :decimal

      add :csbd__dec02, :decimal

      add :csbd__dte01, :naive_datetime

      add :csbd__dte02, :naive_datetime

      add :csbd__log01, :boolean

      add :csbd__log02, :boolean

      add :csbd__qad01, :string

      add :csbd__qad02, :string

      add :csbd__qad03, :decimal

      add :csbd__qad04, :decimal

      add :csbd__qad05, :naive_datetime

      add :csbd__qad06, :naive_datetime

      add :csbd__qad07, :boolean

      add :csbd__qad08, :boolean

      add :csbd_validation, :string

      add :csbd_domain, :string

      add :oid_csbd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CO_CTRL") do
      add :co__qad01, :string

      add :co_pl, :string

      add :co_ret, :string

      add :co_var_acct, :string

      add :co_enty_bal, :boolean

      add :co_trns_acct, :string

      add :co_fx_acct, :string

      add :co_user1, :string

      add :co_user2, :string

      add :co__qadi01, :integer

      add :co_allow_mod, :boolean

      add :co_page_num, :integer

      add :co_cont_page, :boolean

      add :co_use_sub, :boolean

      add :co_use_cc, :boolean

      add :co_daily_seq, :boolean

      add :co_ex_ratetype, :string

      add :co_audglt, :boolean

      add :co__qadl01, :boolean

      add :co_yec_acct, :string

      add :co_yec_sub, :string

      add :co_yec_cc, :string

      add :co_yec_desc, :string

      add :co_bfb_acct, :string

      add :co_bfb_sub, :string

      add :co_bfb_cc, :string

      add :co_bfb_desc, :string

      add :co_close_bs, :boolean

      add :co_sup_reop, :boolean

      add :co_domain, :string

      add :oid_co_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CKD_DET") do
      add :ckd_ref, :string

      add :ckd_voucher, :string

      add :ckd_type, :string

      add :ckd_acct, :string

      add :ckd_cc, :string

      add :ckd_project, :string

      add :ckd_amt, :decimal

      add :ckd_disc, :decimal

      add :ckd_entity, :string

      add :ckd_user1, :string

      add :ckd_user2, :string

      add :ckd_cur_amt, :decimal

      add :ckd_cur_disc, :decimal

      add :ckd_ex_rate, :decimal

      add :ckd__qadc01, :string

      add :ckd_dy_code, :string

      add :ckd_dy_num, :string

      add :ckd_ex_rate2, :decimal

      add :ckd_ex_ratetype, :string

      add :ckd_exru_seq, :integer

      add :ckd_sub, :string

      add :ckd_unapplied_ref, :string

      add :ckd_domain, :string

      add :oid_ckd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNT_MSTR") do
      add :cnt_sid, :string

      add :cnt_ora_id1, :integer

      add :cnt_ora_id2, :integer

      add :cnt_userid, :string

      add :cnt_application, :string

      add :cnt_time, :integer

      add :cnt_user1, :string

      add :cnt_user2, :string

      add :cnt__qadc01, :string

      add :cnt__qadi01, :integer

      add :cnt__qadd01, :decimal

      add :cnt__qadl01, :boolean

      add :cnt__qadt01, :naive_datetime

      add :cnt_date, :naive_datetime

      add :oid_cnt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CKSD_DET") do
      add :cksd_batch, :string

      add :cksd_line, :integer

      add :cksd_nbr, :integer

      add :cksd_user1, :string

      add :cksd_user2, :string

      add :cksd_acct, :string

      add :cksd_cc, :string

      add :cksd_ex_rate, :decimal

      add :cksd__qadc01, :string

      add :cksd_ex_rate2, :decimal

      add :cksd_ex_ratetype, :string

      add :cksd_exru_seq, :integer

      add :cksd_sub, :string

      add :cksd_domain, :string

      add :oid_cksd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CC_MSTR") do
      add :cc_ctr, :string

      add :cc_desc, :string

      add :cc_user1, :string

      add :cc_user2, :string

      add :cc_active, :boolean

      add :cc__qadc01, :string

      add :cc_domain, :string

      add :oid_cc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCC_CTRL") do
      add :ccc__qadi02, :integer

      add :ccc_cc_appserver_name, :string

      add :ccc_cc_hold_status, :string

      add :ccc_cc_auth_exp_days, :integer

      add :ccc_cc_auto_capture, :boolean

      add :ccc_mod_userid, :string

      add :ccc_mod_date, :naive_datetime

      add :ccc_user1, :string

      add :ccc_user2, :string

      add :ccc__qadc01, :string

      add :ccc__qadi01, :integer

      add :ccc__qadd01, :decimal

      add :ccc__qadl01, :boolean

      add :ccc__qadt01, :naive_datetime

      add :ccc__qadc02, :string

      add :ccc__qadc03, :string

      add :ccc__qadc04, :string

      add :ccc__qadc05, :string

      add :ccc_domain, :string

      add :oid_ccc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNC_CTRL") do
      add :cnc__qadi01, :integer

      add :cnc_active, :boolean

      add :cnc_consign_flag, :boolean

      add :cnc_max_aging_days, :integer

      add :cnc_consign_loc, :string

      add :cnc_intrans_loc, :string

      add :cnc_auto_replenish, :boolean

      add :cnc_mod_userid, :string

      add :cnc_mod_date, :naive_datetime

      add :cnc_user1, :string

      add :cnc_user2, :string

      add :cnc__qadc01, :string

      add :cnc__qadc02, :string

      add :cnc_domain, :string

      add :oid_cnc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CMC_CTRL") do
      add :cmc_nbr, :integer

      add :cmc_user1, :string

      add :cmc_user2, :string

      add :cmc__qadi01, :integer

      add :cmc__qadc01, :string

      add :cmc_domain, :string

      add :oid_cmc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCLSCD_DET") do
      add :cclscd_shipto, :string

      add :cclscd_part, :string

      add :cclscd_curr, :string

      add :cclscd_start, :naive_datetime

      add :cclscd_expire, :naive_datetime

      add :cclscd_price, :decimal

      add :cclscd_ref, :string

      add :cclscd_mod_userid, :string

      add :cclscd_mod_date, :naive_datetime

      add :cclscd_userc01, :string

      add :cclscd_userc02, :string

      add :cclscd__qadc01, :string

      add :cclscd__qadc02, :string

      add :cclscd_domain, :string

      add :oid_cclscd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CAH_HIST") do
      add :cah_nbr, :string

      add :cah_nxt_date, :naive_datetime

      add :cah_que, :string

      add :cah_assign, :string

      add :cah_enter_by, :string

      add :cah_status, :string

      add :cah_type, :string

      add :cah_part, :string

      add :cah_serial, :string

      add :cah_nxt_act, :string

      add :cah_name, :string

      add :cah_phone, :string

      add :cah_problem, :string

      add :cah_pri, :integer

      add :cah_desc, :string

      add :cah_evt_date, :naive_datetime

      add :cah_cmtindx, :integer

      add :cah_sv_code, :string

      add :cah__chr01, :string

      add :cah__chr02, :string

      add :cah__chr03, :string

      add :cah__chr04, :string

      add :cah__chr05, :string

      add :cah__dec01, :decimal

      add :cah__chr06, :string

      add :cah__chr07, :string

      add :cah__chr08, :string

      add :cah__chr09, :string

      add :cah__chr10, :string

      add :cah__dte01, :naive_datetime

      add :cah__dte02, :naive_datetime

      add :cah__dte03, :naive_datetime

      add :cah__dte04, :naive_datetime

      add :cah__dte05, :naive_datetime

      add :cah__dec02, :decimal

      add :cah__dec03, :decimal

      add :cah__log01, :boolean

      add :cah__log02, :boolean

      add :cah__log03, :boolean

      add :cah__log04, :boolean

      add :cah__log05, :boolean

      add :cah__chr11, :string

      add :cah_trv_dist, :integer

      add :cah_trv_um, :string

      add :cah_from_que, :string

      add :cah_snt_date, :naive_datetime

      add :cah_snt_time, :integer

      add :cah_code, :string

      add :cah_seq, :integer

      add :cah_evt_time, :string

      add :cah_nxt_time, :string

      add :cah_time_log, :decimal

      add :cah_billed, :boolean

      add :cah_resolve, :string

      add :cah_severity, :string

      add :cah_user1, :string

      add :cah_user2, :string

      add :cah_ref, :integer

      add :cah_eu_nbr, :string

      add :cah_eng_group, :string

      add :cah_escalate, :string

      add :cah_int_type, :string

      add :cah_date_stmp, :naive_datetime

      add :cah_time_stmp, :string

      add :cah_area, :string

      add :cah_category, :string

      add :cah_eng_area, :string

      add :cah_cmmt_mod, :boolean

      add :cah_es_nbr, :string

      add :cah_es_seq, :integer

      add :cah_opn_date, :naive_datetime

      add :cah_contract, :string

      add :cah_eu_date, :naive_datetime

      add :cah_eu_time, :string

      add :cah__qadc01, :string

      add :cah__qadc02, :string

      add :cah__qadc03, :string

      add :cah__qadd01, :decimal

      add :cah__qadd02, :decimal

      add :cah__qadd03, :decimal

      add :cah__qadi01, :integer

      add :cah__qadi02, :integer

      add :cah__qadi03, :integer

      add :cah__qadl01, :boolean

      add :cah__qadl02, :boolean

      add :cah__qadl03, :boolean

      add :cah__qadt01, :naive_datetime

      add :cah__qadt02, :naive_datetime

      add :cah__qadt03, :naive_datetime

      add :cah_domain, :string

      add :oid_cah_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CIL_MSTR") do
      add :cil_cor_inv, :string

      add :cil_cor_so_nbr, :string

      add :cil_cor_rsn, :string

      add :cil_mod_userid, :string

      add :cil_mod_date, :naive_datetime

      add :cil_mstr_inv, :string

      add :cil_prev_so_nbr, :string

      add :cil_prev_inv, :string

      add :cil_user1, :string

      add :cil_user2, :string

      add :cil__qadc01, :string

      add :cil__qadc02, :string

      add :cil_domain, :string

      add :oid_cil_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CA_MSTR") do
      add :ca_nbr, :string

      add :ca_nxt_date, :naive_datetime

      add :ca_nxt_tim, :integer

      add :ca_que, :string

      add :ca_assign, :string

      add :ca_eu_nbr, :string

      add :ca_enter_by, :string

      add :ca_status, :string

      add :ca_type, :string

      add :ca_part, :string

      add :ca_serial, :string

      add :ca_nxt_act, :string

      add :ca_so_nbr, :string

      add :ca_name, :string

      add :ca_phone, :string

      add :ca_problem, :string

      add :ca_resolve, :string

      add :ca_pri, :integer

      add :ca_desc, :string

      add :ca_evt_date, :naive_datetime

      add :ca_evt_tim, :integer

      add :ca_cmtindx, :integer

      add :ca__chr01, :string

      add :ca__chr02, :string

      add :ca__chr03, :string

      add :ca__chr04, :string

      add :ca__chr05, :string

      add :ca__dec01, :decimal

      add :ca__chr06, :string

      add :ca__chr07, :string

      add :ca__chr08, :string

      add :ca__chr09, :string

      add :ca__chr10, :string

      add :ca__dte01, :naive_datetime

      add :ca__dte02, :naive_datetime

      add :ca__dte03, :naive_datetime

      add :ca__dte04, :naive_datetime

      add :ca__dte05, :naive_datetime

      add :ca__dec02, :decimal

      add :ca__dec03, :decimal

      add :ca__log01, :boolean

      add :ca__log02, :boolean

      add :ca__log03, :boolean

      add :ca__log04, :boolean

      add :ca__log05, :boolean

      add :ca_trv_time, :string

      add :ca_trv_dist, :integer

      add :ca_trv_um, :string

      add :ca_sv_code, :string

      add :ca_from_que, :string

      add :ca_snt_date, :naive_datetime

      add :ca_snt_time, :integer

      add :ca_rma_nbr, :string

      add :ca_code, :string

      add :ca_seq, :integer

      add :ca_nxt_time, :string

      add :ca_evt_time, :string

      add :ca_opn_date, :naive_datetime

      add :ca_opn_time, :string

      add :ca_ref, :integer

      add :ca_time_log, :decimal

      add :ca_cls_date, :naive_datetime

      add :ca_cls_time, :string

      add :ca_contract, :string

      add :ca_severity, :string

      add :ca_cline, :integer

      add :ca_to_que, :string

      add :ca_billed, :boolean

      add :ca_sr, :string

      add :ca_activity, :boolean

      add :ca_po_nbr, :string

      add :ca__qadc04, :string

      add :ca_ecmtindx, :integer

      add :ca_user1, :string

      add :ca_user2, :string

      add :ca_eng_group, :string

      add :ca__qadc05, :string

      add :ca_area, :string

      add :ca_category, :string

      add :ca_eng_area, :string

      add :ca_int_type, :string

      add :ca_created, :string

      add :ca_date_stmp, :naive_datetime

      add :ca_time_stmp, :string

      add :ca_est_time, :string

      add :ca_eu_date, :naive_datetime

      add :ca_eu_time, :string

      add :ca_cmmt_mod, :boolean

      add :ca__qadc06, :string

      add :ca_rev, :string

      add :ca_es_nbr, :string

      add :ca_es_seq, :integer

      add :ca__qadi01, :integer

      add :ca_rp_route, :string

      add :ca_rp_bom, :string

      add :ca_site, :string

      add :ca_schedule_ca, :boolean

      add :ca_3rd_party, :boolean

      add :ca_3rd_party_id, :string

      add :ca_ack_cmtindx, :integer

      add :ca_ack_letter, :boolean

      add :ca_comp_date, :naive_datetime

      add :ca_comp_time, :string

      add :ca_cr_terms, :string

      add :ca_curr, :string

      add :ca_ex_rate, :decimal

      add :ca_fn_nbr, :string

      add :ca_inc_stats, :boolean

      add :ca_printed, :boolean

      add :ca_pr_list, :string

      add :ca_qo_cmtindx, :integer

      add :ca_quote, :boolean

      add :ca_quote_price, :decimal

      add :ca_rc_site, :string

      add :ca_resolve_desc, :string

      add :ca_res_cmtidx, :integer

      add :ca_ship_to, :string

      add :ca_sq_nbr, :string

      add :ca_suspended, :boolean

      add :ca_svc_type, :string

      add :ca_taxable, :boolean

      add :ca_taxc, :string

      add :ca_waiting_parts, :boolean

      add :ca_bill, :string

      add :ca_inv_draft, :boolean

      add :ca_recorded, :boolean

      add :ca_repair_ctr, :boolean

      add :ca_lang, :string

      add :ca_tax_date, :naive_datetime

      add :ca_quote_exp, :naive_datetime

      add :ca_rrc_nbr, :string

      add :ca_rrc_seq, :integer

      add :ca__qadc03, :string

      add :ca__qadi02, :integer

      add :ca__qadi03, :integer

      add :ca__qadd01, :decimal

      add :ca__qadd02, :decimal

      add :ca__qadd03, :decimal

      add :ca_eu_changed, :boolean

      add :ca__qadl02, :boolean

      add :ca__qadl03, :boolean

      add :ca__qadt01, :naive_datetime

      add :ca__qadt02, :naive_datetime

      add :ca__qadt03, :naive_datetime

      add :ca_mod_userid, :string

      add :ca_mod_date, :naive_datetime

      add :ca_customer, :string

      add :ca_tax_env, :string

      add :ca_tax_usage, :string

      add :ca_tax_pct, :decimal

      add :ca_quote_nbr, :string

      add :ca_ent_ex, :decimal

      add :ca_fix_rate, :boolean

      add :ca_channel, :string

      add :ca_ex_rate2, :decimal

      add :ca_ex_ratetype, :string

      add :ca_exru_seq, :integer

      add :ca__qadl04, :boolean

      add :ca_end_date, :naive_datetime

      add :ca_start_date, :naive_datetime

      add :ca_prj_nbr, :string

      add :ca_def_ws, :string

      add :ca_upd_isb, :boolean

      add :ca_domain, :string

      add :oid_ca_mstr, :decimal

      add :ca_model, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BKPM_MSTR") do
      add :bkpm_bank, :string

      add :bkpm_pay_method, :string

      add :bkpm_module, :string

      add :bkpm_filename, :string

      add :bkpm_create_date, :naive_datetime

      add :bkpm_create_time, :string

      add :bkpm_bk_acct, :string

      add :bkpm_processed, :boolean

      add :bkpm_ck_date, :naive_datetime

      add :bkpm_max_amt, :decimal

      add :bkpm_recon_credit, :boolean

      add :bkpm_amt, :decimal

      add :bkpm_media_nbr, :string

      add :bkpm_user1, :string

      add :bkpm_user2, :string

      add :bkpm_userc03, :string

      add :bkpm_userc04, :string

      add :bkpm_usert01, :naive_datetime

      add :bkpm_usert02, :naive_datetime

      add :bkpm_userl01, :boolean

      add :bkpm_userl02, :boolean

      add :bkpm__qadc01, :string

      add :bkpm__qadc02, :string

      add :bkpm_batch, :string

      add :bkpm_exceed_balance, :boolean

      add :bkpm_full_bk_acct, :string

      add :bkpm_comp_addr, :string

      add :bkpm_seq, :integer

      add :bkpm_mod_date, :naive_datetime

      add :bkpm_mod_userid, :string

      add :bkpm_userc05, :string

      add :bkpm_userd01, :decimal

      add :bkpm_userd02, :decimal

      add :bkpm_useri01, :integer

      add :bkpm_useri02, :integer

      add :bkpm__qadc03, :string

      add :bkpm__qadc04, :string

      add :bkpm__qadc05, :string

      add :bkpm__qadd01, :decimal

      add :bkpm__qadd02, :decimal

      add :bkpm__qadi01, :integer

      add :bkpm__qadi02, :integer

      add :bkpm__qadl01, :boolean

      add :bkpm__qadl02, :boolean

      add :bkpm__qadt01, :naive_datetime

      add :bkpm__qadt02, :naive_datetime

      add :bkpm_domain, :string

      add :oid_bkpm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BDLD_DET") do
      add :bdld_id, :integer

      add :bdld_line, :integer

      add :bdld_data, :string

      add :bdld_user1, :string

      add :bdld_user2, :string

      add :bdld_source, :string

      add :bdld__qadc01, :string

      add :bdld_domain, :string

      add :oid_bdld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CFC_CTRL") do
      add :cfc_cfnbr, :integer

      add :cfc__qadi01, :integer

      add :cfc_ex_round, :integer

      add :cfc_incl_ap, :boolean

      add :cfc_incl_ar, :boolean

      add :cfc_incl_so, :boolean

      add :cfc_incl_po, :boolean

      add :cfc_incl_cf, :boolean

      add :cfc_incl_fs, :boolean

      add :cfc_incl_qad01, :boolean

      add :cfc_incl_qad02, :boolean

      add :cfc_user1, :string

      add :cfc_user2, :string

      add :cfc_ex_tol, :decimal

      add :cfc_nbr_pre, :string

      add :cfc__chr01, :string

      add :cfc__chr02, :string

      add :cfc__chr03, :string

      add :cfc__chr04, :string

      add :cfc__chr05, :string

      add :cfc__dte01, :naive_datetime

      add :cfc__dte02, :naive_datetime

      add :cfc__dec01, :decimal

      add :cfc__dec02, :decimal

      add :cfc__log01, :boolean

      add :cfc_domain, :string

      add :oid_cfc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCD_MSTR") do
      add :ccd_eng_code, :string

      add :ccd__chr08, :string

      add :ccd__chr07, :string

      add :ccd__chr06, :string

      add :ccd__chr05, :string

      add :ccd__chr04, :string

      add :ccd__chr03, :string

      add :ccd__chr02, :string

      add :ccd__chr01, :string

      add :ccd_problem, :string

      add :ccd_hours, :decimal

      add :ccd_sys_part, :string

      add :ccd_sys_ser, :string

      add :ccd_part, :string

      add :ccd_date, :string

      add :ccd_serial, :string

      add :ccd_resolution, :string

      add :ccd_cause, :string

      add :ccd_type, :string

      add :ccd_ca_nbr, :string

      add :ccd_cmtindx, :integer

      add :ccd_line, :integer

      add :ccd_user1, :string

      add :ccd_user2, :string

      add :ccd_itm_line, :integer

      add :ccd_opn_date, :naive_datetime

      add :ccd__log01, :boolean

      add :ccd__qadc01, :string

      add :ccd__qadc02, :string

      add :ccd__qadc03, :string

      add :ccd__qadc04, :string

      add :ccd_mod_date, :naive_datetime

      add :ccd_mod_userid, :string

      add :ccd_domain, :string

      add :oid_ccd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CAC_CTRL") do
      add :cac_nbr, :integer

      add :cac_user1, :string

      add :cac_user2, :string

      add :cac__qadi01, :integer

      add :cac__qadc01, :string

      add :cac__qadc02, :string

      add :cac__qadl01, :boolean

      add :cac__qadl02, :boolean

      add :cac_mod_userid, :string

      add :cac_mod_date, :naive_datetime

      add :cac_upd_isb, :boolean

      add :cac_quote_pre, :string

      add :cac_quote, :integer

      add :cac_quote_que, :string

      add :cac_quote_days, :integer

      add :cac_ex_ratetype, :string

      add :cac_domain, :string

      add :oid_cac_ctrl, :decimal

      add :cac_mulskill_wnd, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BIC_CTRL") do
      add :bic_periods, :integer

      add :bic_last_due, :naive_datetime

      add :bic_last_cyc, :string

      add :bic_lst_date, :naive_datetime

      add :bic__qadi01, :integer

      add :bic_audit, :boolean

      add :bic_user1, :string

      add :bic_user2, :string

      add :bic__qadc01, :string

      add :bic_domain, :string

      add :oid_bic_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CLC_CTRL") do
      add :clc_active, :boolean

      add :clc_comp_issue, :boolean

      add :clc_lotlevel, :integer

      add :clc_polot_rcpt, :boolean

      add :clc_wolot_rcpt, :boolean

      add :clc_relot_rcpt, :boolean

      add :clc__qadi01, :integer

      add :clc_jp_rcpt, :boolean

      add :clc_user1, :string

      add :clc_user2, :string

      add :clc__qadc01, :string

      add :clc_domain, :string

      add :oid_clc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCD2_DET") do
      add :ccd2_cc, :string

      add :ccd2_line, :integer

      add :ccd2_sub_beg, :string

      add :ccd2_sub_end, :string

      add :ccd2_user1, :string

      add :ccd2_user2, :string

      add :ccd2__qadc01, :string

      add :oid_ccd2_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BG_MSTR") do
      add :bg_entity, :string

      add :bg_acc, :string

      add :bg_cc, :string

      add :bg_project, :string

      add :bg_fpos, :integer

      add :bg_budg_acc, :string

      add :bg_budg_cc, :string

      add :bg_budg_fpos, :integer

      add :bg_code, :string

      add :bg_user1, :string

      add :bg_user2, :string

      add :bg_sub, :string

      add :bg_budg_sub, :string

      add :bg__qadc01, :string

      add :bg_domain, :string

      add :oid_bg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATWK_DET") do
      add :oid_atwk_det, :decimal

      add :oid_atwp_mstr, :decimal

      add :atwk_field_name, :string

      add :atwk_key_type, :string

      add :atwk_mod_date, :naive_datetime

      add :atwk_mod_userid, :string

      add :atwk_user1, :string

      add :atwk_user2, :string

      add :atwk__qadc01, :string

      add :atwk__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CK_MSTR") do
      add :ck_ref, :string

      add :ck_status, :string

      add :ck_nbr, :integer

      add :ck_bank, :string

      add :ck_type, :string

      add :ck_cmtindx, :integer

      add :ck_curr, :string

      add :ck_ex_rate, :decimal

      add :ck_voiddate, :naive_datetime

      add :ck_voideff, :naive_datetime

      add :ck_user1, :string

      add :ck_user2, :string

      add :ck_clr_date, :naive_datetime

      add :ck__qadc01, :string

      add :ck_ex_rate2, :decimal

      add :ck_ex_ratetype, :string

      add :ck_exru_seq, :integer

      add :ck_domain, :string

      add :oid_ck_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCD1_DET") do
      add :ccd1_cc, :string

      add :ccd1_line, :integer

      add :ccd1_acc_beg, :string

      add :ccd1_acc_end, :string

      add :ccd1_user1, :string

      add :ccd1_user2, :string

      add :ccd1__qadc01, :string

      add :oid_ccd1_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BOM_MSTR") do
      add :bom_parent, :string

      add :bom_desc, :string

      add :bom_batch, :decimal

      add :bom_batch_um, :string

      add :bom_cmtindx, :integer

      add :bom_ll_code, :integer

      add :bom_user1, :string

      add :bom_user2, :string

      add :bom_userid, :string

      add :bom_mod_date, :naive_datetime

      add :bom__chr01, :string

      add :bom__chr02, :string

      add :bom__chr03, :string

      add :bom__chr04, :string

      add :bom__chr05, :string

      add :bom__dte01, :naive_datetime

      add :bom__dte02, :naive_datetime

      add :bom__dec01, :decimal

      add :bom__dec02, :decimal

      add :bom__log01, :boolean

      add :bom_formula, :boolean

      add :bom_mthd, :string

      add :bom_fsm_type, :string

      add :bom_site, :string

      add :bom_loc, :string

      add :bom__qadc01, :string

      add :bom__qadc02, :string

      add :bom__qadc03, :string

      add :bom__qadd01, :decimal

      add :bom__qadi01, :integer

      add :bom__qadi02, :integer

      add :bom__qadt01, :naive_datetime

      add :bom__qadt02, :naive_datetime

      add :bom__qadl01, :boolean

      add :bom__qadl02, :boolean

      add :bom_mthd_qtycompl, :string

      add :bom_domain, :string

      add :oid_bom_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BGD_DET") do
      add :bgd_acc, :string

      add :bgd_cc, :string

      add :bgd_project, :string

      add :bgd_ent_dt, :naive_datetime

      add :bgd_year, :integer

      add :bgd_per, :integer

      add :bgd_amt, :decimal

      add :bgd_pct, :decimal

      add :bgd_fpos, :integer

      add :bgd_entity, :string

      add :bgd_code, :string

      add :bgd_user1, :string

      add :bgd_user2, :string

      add :bgd_userid, :string

      add :bgd_date, :naive_datetime

      add :bgd_sub, :string

      add :bgd_ecur_amt, :decimal

      add :bgd_en_enrate, :decimal

      add :bgd__qadc01, :string

      add :bgd_domain, :string

      add :oid_bgd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATT_MSTR") do
      add :oid_att_mstr, :decimal

      add :att_table_name, :string

      add :att_audit_enabled, :boolean

      add :att_mod_date, :naive_datetime

      add :att_mod_userid, :string

      add :att_user1, :string

      add :att_user2, :string

      add :att__qadc01, :string

      add :att__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_APR_MSTR") do
      add :apr_access_code, :string

      add :apr_src_comp, :string

      add :apr_desc, :string

      add :apr_app_id, :string

      add :apr_name, :string

      add :apr_src_task, :string

      add :apr_app_ver, :string

      add :apr_del_err_det, :string

      add :apr_doc_lng, :string

      add :apr_email_userid, :string

      add :apr_email_notlvl, :string

      add :apr_ex_dest_proc, :string

      add :apr_ex_init_conn, :boolean

      add :apr_ex_map_flg, :boolean

      add :apr_send_flg, :boolean

      add :apr_publ_flg, :boolean

      add :apr_im_dest_proc, :string

      add :apr_im_init_conn, :boolean

      add :apr_cim_proc, :boolean

      add :apr_im_map_flg, :boolean

      add :apr_proc_flag, :boolean

      add :apr_rcv_flg, :boolean

      add :apr_mapper_proc, :string

      add :apr_mod_date, :naive_datetime

      add :apr_mod_userid, :string

      add :apr_msg_ack_lvl, :string

      add :apr_msg_clnt_ord, :string

      add :apr_msg_priority, :string

      add :apr_msg_routing, :string

      add :apr_msg_ttl, :string

      add :apr_pause_sev, :integer

      add :apr_ack_doc_rev, :string

      add :apr_ack_doc_std, :string

      add :apr_ack_doc_typ, :string

      add :apr_ack_lvl_reqd, :string

      add :apr_src_userid, :string

      add :apr_im_ip_addr, :string

      add :apr_ex_ip_addr, :string

      add :apr_im_port_nbr, :integer

      add :apr_ex_port_nbr, :integer

      add :apr_adapter_proc, :string

      add :apr_adapter_env, :string

      add :apr_code_pg, :string

      add :apr_date_form, :string

      add :apr_num_form, :string

      add :apr_map_spec, :string

      add :apr_user1, :string

      add :apr_user2, :string

      add :apr__dec01, :decimal

      add :apr__dec02, :decimal

      add :apr__log01, :boolean

      add :apr__int01, :integer

      add :apr__log02, :boolean

      add :apr__int02, :integer

      add :apr__dte01, :naive_datetime

      add :apr__dte02, :naive_datetime

      add :apr__qadc01, :string

      add :apr__qadc02, :string

      add :apr__qadc03, :string

      add :apr__qadc04, :string

      add :apr__qadd01, :decimal

      add :apr__qadd02, :decimal

      add :apr__qadi01, :integer

      add :apr__qadi02, :integer

      add :apr__qadl01, :boolean

      add :apr__qadl02, :boolean

      add :apr__qadt01, :naive_datetime

      add :apr__qadt02, :naive_datetime

      add :apr_msg_secur, :string

      add :apr_msg_persist, :string

      add :apr_queue_pub, :string

      add :apr_map_parm, :string

      add :apr_map_parm_val, :string

      add :apr_eol_delim, :boolean

      add :apr_msg_sync, :string

      add :apr_im_doc_std, :string

      add :apr_adapt_cmd, :string

      add :apr_adapt_start, :boolean

      add :apr_im_xml, :string

      add :apr_ex_xml, :string

      add :apr_dtd_dir_url, :string

      add :apr_ex_delim, :integer

      add :apr_im_delim, :integer

      add :apr_im_arch_dir, :string

      add :apr_ex_arch_dir, :string

      add :apr_im_dest_mthd, :string

      add :apr_im_prc_typ, :string

      add :apr_ex_dest_mthd, :string

      add :apr_ex_prc_typ, :string

      add :apr_domain, :string

      add :oid_apr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CHM_MSTR") do
      add :chm_nbr, :string

      add :chm_desc, :string

      add :chm_name, :string

      add :chm_phone, :string

      add :chm_part, :string

      add :chm_serial, :string

      add :chm_eu_nbr, :string

      add :chm_so_nbr, :string

      add :chm_rma_nbr, :string

      add :chm_opn_date, :naive_datetime

      add :chm_opn_time, :string

      add :chm_cls_date, :naive_datetime

      add :chm_cls_time, :string

      add :chm_resolve, :string

      add :chm_cmtindx, :integer

      add :chm_ref, :integer

      add :chm_problem, :string

      add :chm_contract, :string

      add :chm__chr01, :string

      add :chm__chr02, :string

      add :chm__chr03, :string

      add :chm__chr04, :string

      add :chm__chr05, :string

      add :chm__chr06, :string

      add :chm__chr07, :string

      add :chm__chr08, :string

      add :chm__chr09, :string

      add :chm__chr10, :string

      add :chm__dec01, :decimal

      add :chm__dec02, :decimal

      add :chm__dec03, :decimal

      add :chm__dte01, :naive_datetime

      add :chm__dte02, :naive_datetime

      add :chm__dte03, :naive_datetime

      add :chm__dte04, :naive_datetime

      add :chm__log01, :boolean

      add :chm__log02, :boolean

      add :chm__log03, :boolean

      add :chm__log04, :boolean

      add :chm__log05, :boolean

      add :chm_sv_code, :string

      add :chm_cline, :integer

      add :chm_to_que, :string

      add :chm_sr, :string

      add :chm_severity, :string

      add :chm_type, :string

      add :chm_user1, :string

      add :chm_user2, :string

      add :chm_eng_group, :string

      add :chm_eng_area, :string

      add :chm_category, :string

      add :chm_created, :string

      add :chm_area, :string

      add :chm_po_nbr, :string

      add :chm_est_time, :string

      add :chm_time_stmp, :string

      add :chm_date_stmp, :naive_datetime

      add :chm_eu_time, :string

      add :chm_eu_date, :naive_datetime

      add :chm_assign, :string

      add :chm_que, :string

      add :chm_es_nbr, :string

      add :chm_es_seq, :integer

      add :chm_wo_nbr, :string

      add :chm_wo_lot, :string

      add :chm_site, :string

      add :chm_trv_time, :string

      add :chm_trv_um, :string

      add :chm_trv_dist, :integer

      add :chm_time_log, :decimal

      add :chm_int_type, :string

      add :chm_ack_cmtindx, :integer

      add :chm_comp_time, :string

      add :chm_enddown_date, :naive_datetime

      add :chm_enddown_time, :string

      add :chm_pr_list, :string

      add :chm_qo_cmtindx, :integer

      add :chm_quote, :boolean

      add :chm_quote_curr, :string

      add :chm_quote_price, :decimal

      add :chm_rc_site, :string

      add :chm_ship_to, :string

      add :chm_status, :string

      add :chm_stdown_date, :naive_datetime

      add :chm_stdown_time, :string

      add :chm_stjob_date, :naive_datetime

      add :chm_stjob_time, :string

      add :chm_3rd_party, :boolean

      add :chm_3rd_party_id, :string

      add :chm_ack_letter, :boolean

      add :chm_bill, :string

      add :chm_code, :string

      add :chm_comp_date, :naive_datetime

      add :chm_enter_by, :string

      add :chm_fn_nbr, :string

      add :chm_from_que, :string

      add :chm_inc_stats, :boolean

      add :chm_inv_draft, :boolean

      add :chm_printed, :boolean

      add :chm_res_cmtidx, :integer

      add :chm__dte05, :naive_datetime

      add :chm_cr_terms, :string

      add :chm_curr, :string

      add :chm_ecmtindx, :integer

      add :chm_resolve_desc, :string

      add :chm_rev, :string

      add :chm_sq_nbr, :string

      add :chm_svc_type, :string

      add :chm_taxable, :boolean

      add :chm_taxc, :string

      add :chm_ex_rate, :decimal

      add :chm_repair_ctr, :boolean

      add :chm_srv_timezone, :string

      add :chm_eu_timezone, :string

      add :chm__qadc03, :string

      add :chm__qadi01, :integer

      add :chm__qadi02, :integer

      add :chm__qadi03, :integer

      add :chm__qadde01, :decimal

      add :chm__qadde02, :decimal

      add :chm__qadde03, :decimal

      add :chm__qadl04, :boolean

      add :chm__qadl02, :boolean

      add :chm__qadl03, :boolean

      add :chm__qadd01, :naive_datetime

      add :chm__qadd02, :naive_datetime

      add :chm__qadd03, :naive_datetime

      add :chm_rp_route, :string

      add :chm_rp_bom, :string

      add :chm_schedule_ca, :boolean

      add :chm_tax_date, :naive_datetime

      add :chm_quote_exp, :naive_datetime

      add :chm_rrc_seq, :integer

      add :chm_rrc_nbr, :string

      add :chm_customer, :string

      add :chm_tax_env, :string

      add :chm_tax_usage, :string

      add :chm_tax_pct, :decimal

      add :chm_lang, :string

      add :chm_quote_nbr, :string

      add :chm_ent_ex, :decimal

      add :chm_fix_rate, :boolean

      add :chm_channel, :string

      add :chm_ex_rate2, :decimal

      add :chm_ex_ratetype, :string

      add :chm_exru_seq, :integer

      add :chm__qadc04, :string

      add :chm__qadc05, :string

      add :chm__qadc06, :string

      add :chm_domain, :string

      add :oid_chm_mstr, :decimal

      add :chm_model, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCLS_MSTR") do
      add :ccls_shipfrom, :string

      add :ccls_shipto, :string

      add :ccls_edit_lc_shipper, :boolean

      add :ccls_cc_invoice, :boolean

      add :ccls_lc_invoice, :boolean

      add :ccls_cc_asn, :boolean

      add :ccls_lc_asn, :boolean

      add :ccls_charge_type, :string

      add :ccls_mod_userid, :string

      add :ccls_mod_date, :naive_datetime

      add :ccls_userc01, :string

      add :ccls_userc02, :string

      add :ccls__qadc01, :string

      add :ccls__qadc02, :string

      add :ccls_domain, :string

      add :oid_ccls_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CAQ_MSTR") do
      add :caq_que, :string

      add :caq_desc, :string

      add :caq_area, :string

      add :caq_node, :string

      add :caq__chr01, :string

      add :caq__chr02, :string

      add :caq__chr03, :string

      add :caq__log01, :boolean

      add :caq__log02, :boolean

      add :caq__dte01, :naive_datetime

      add :caq__dte02, :naive_datetime

      add :caq__dec01, :decimal

      add :caq__dec02, :decimal

      add :caq_user1, :string

      add :caq_user2, :string

      add :caq_prob_pri, :boolean

      add :caq_field, :boolean

      add :caq_default_rte, :string

      add :caq_create_wo, :boolean

      add :caq_create_rte, :boolean

      add :caq_create_bom, :boolean

      add :caq_area_sc, :boolean

      add :caq_area_pri, :boolean

      add :caq_3rd_party, :boolean

      add :caq_depot, :boolean

      add :caq_file_type, :string

      add :caq_domain, :string

      add :oid_caq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BKFM_MSTR") do
      add :bkfm_validation, :string

      add :bkfm_sequence, :integer

      add :bkfm_length, :integer

      add :bkfm_mandatory, :boolean

      add :bkfm_lead_zeros, :boolean

      add :bkfm__qadc01, :string

      add :bkfm__qadc02, :string

      add :bkfm_user1, :string

      add :bkfm_user2, :string

      add :bkfm_mod_date, :naive_datetime

      add :bkfm_mod_userid, :string

      add :oid_bkfm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BCD_DET") do
      add :bcd_batch, :string

      add :bcd_date_sub, :naive_datetime

      add :bcd_time_sub, :string

      add :bcd_userid, :string

      add :bcd_priority, :integer

      add :bcd_exec, :string

      add :bcd_dev, :string

      add :bcd_perm, :boolean

      add :bcd_process, :boolean

      add :bcd_date_run, :naive_datetime

      add :bcd_time_run, :string

      add :bcd_run_stat, :string

      add :bcd_parm, :string

      add :bcd_user1, :string

      add :bcd_user2, :string

      add :bcd_mnu_nbr, :string

      add :bcd_mnu_sel, :integer

      add :bcd__qadc01, :string

      add :bcd_domain, :string

      add :oid_bcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCLSC_MSTR") do
      add :cclsc_shipto, :string

      add :cclsc_part, :string

      add :cclsc_charge_type, :string

      add :cclsc_curr, :string

      add :cclsc_mod_userid, :string

      add :cclsc_mod_date, :naive_datetime

      add :cclsc_userc01, :string

      add :cclsc_userc02, :string

      add :cclsc__qadc01, :string

      add :cclsc__qadc02, :string

      add :cclsc_domain, :string

      add :oid_cclsc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CAL_DET") do
      add :cal_ref, :string

      add :cal_wkctr, :string

      add :cal_mch, :string

      add :cal_start, :naive_datetime

      add :cal_end, :naive_datetime

      add :cal_hours, :decimal

      add :cal_user1, :string

      add :cal_user2, :string

      add :cal_shift1, :decimal

      add :cal_shift2, :decimal

      add :cal_shift3, :decimal

      add :cal_shift4, :decimal

      add :cal_site, :string

      add :cal__qadc01, :string

      add :cal_domain, :string

      add :oid_cal_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BKD_DET") do
      add :bkd_bank, :string

      add :bkd_pay_method, :string

      add :bkd_module, :string

      add :bkd_auto_payment, :boolean

      add :bkd_manual_payment, :boolean

      add :bkd_draft, :boolean

      add :bkd_from_ck, :integer

      add :bkd_to_ck, :integer

      add :bkd_next_ck, :integer

      add :bkd_pip_acct, :string

      add :bkd_pip_cc, :string

      add :bkd_program, :string

      add :bkd_user1, :string

      add :bkd_user2, :string

      add :bkd_file, :boolean

      add :bkd_validation_list, :string

      add :bkd_curr_list, :string

      add :bkd_swift, :boolean

      add :bkd_acc_mandatory, :boolean

      add :bkd_userl01, :boolean

      add :bkd__qadl01, :boolean

      add :bkd_userd01, :decimal

      add :bkd__qadd01, :decimal

      add :bkd_usert01, :naive_datetime

      add :bkd_pay_group, :integer

      add :bkd_exceed_balance, :boolean

      add :bkd_recon_credit, :boolean

      add :bkd_pip_sub, :string

      add :bkd_useri01, :integer

      add :bkd__qadi01, :integer

      add :bkd__qadc01, :string

      add :bkd__qadc02, :string

      add :bkd__qadt01, :naive_datetime

      add :bkd_mod_date, :naive_datetime

      add :bkd_mod_userid, :string

      add :bkd_domain, :string

      add :oid_bkd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AUD_DET") do
      add :aud_dataset, :string

      add :aud_userid, :string

      add :aud_date, :naive_datetime

      add :aud_key1, :string

      add :aud_key2, :string

      add :aud_key3, :string

      add :aud_key4, :string

      add :aud_key5, :string

      add :aud_key6, :string

      add :aud_key7, :string

      add :aud_old_data, :string

      add :aud_time, :string

      add :aud_entry, :integer

      add :aud_user1, :string

      add :aud_user2, :string

      add :aud_field, :string

      add :aud_new_data, :string

      add :aud__qadc01, :string

      add :aud_domain, :string

      add :oid_aud_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCL_CTRL") do
      add :ccl__qadi01, :integer

      add :ccl_cont_active, :boolean

      add :ccl_line_active, :boolean

      add :ccl_edit_lc_shipper, :boolean

      add :ccl_cc_invoice, :boolean

      add :ccl_lc_invoice, :boolean

      add :ccl_cc_asn, :boolean

      add :ccl_lc_asn, :boolean

      add :ccl_charge_type, :string

      add :ccl_mod_userid, :string

      add :ccl_mod_date, :naive_datetime

      add :ccl_userc01, :string

      add :ccl_userc02, :string

      add :ccl__qadc01, :string

      add :ccl__qadc02, :string

      add :ccl_domain, :string

      add :oid_ccl_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CAS_MSTR") do
      add :cas_status, :string

      add :cas_desc, :string

      add :cas_id, :integer

      add :cas_prog, :string

      add :cas_req, :boolean

      add :cas_nxt_stat, :string

      add :cas__chr01, :string

      add :cas__chr02, :string

      add :cas__log01, :boolean

      add :cas__log02, :boolean

      add :cas__dte01, :naive_datetime

      add :cas__dte02, :naive_datetime

      add :cas__dec01, :decimal

      add :cas__dec02, :decimal

      add :cas__chr03, :string

      add :cas_user1, :string

      add :cas_user2, :string

      add :cas_review, :boolean

      add :cas_wait, :boolean

      add :cas_hold, :boolean

      add :cas_field, :boolean

      add :cas_file_type, :string

      add :cas_nxt_que, :string

      add :cas__qadc01, :string

      add :cas__qadc02, :string

      add :cas__qadl01, :boolean

      add :cas__qadl02, :boolean

      add :cas_mod_userid, :string

      add :cas_mod_date, :naive_datetime

      add :cas_domain, :string

      add :oid_cas_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BKPD_DET") do
      add :bkpd_bank, :string

      add :bkpd_pay_method, :string

      add :bkpd_module, :string

      add :bkpd_processed, :boolean

      add :bkpd_curr, :string

      add :bkpd_amt, :decimal

      add :bkpd_addr, :string

      add :bkpd_payment_nbr, :integer

      add :bkpd_bk_acct, :string

      add :bkpd_resale_amt, :decimal

      add :bkpd_ref, :string

      add :bkpd_user1, :string

      add :bkpd_user2, :string

      add :bkpd_userc03, :string

      add :bkpd_userc04, :string

      add :bkpd_usert01, :naive_datetime

      add :bkpd_usert02, :naive_datetime

      add :bkpd_userl01, :boolean

      add :bkpd_userl02, :boolean

      add :bkpd__qadc01, :string

      add :bkpd__qadc02, :string

      add :bkpd_nbr, :string

      add :bkpd_due_date, :naive_datetime

      add :bkpd_separate, :boolean

      add :bkpd_full_bk_acct, :string

      add :bkpd_cs_bank, :string

      add :bkpd_seq, :integer

      add :bkpd_mod_date, :naive_datetime

      add :bkpd_mod_userid, :string

      add :bkpd_userc05, :string

      add :bkpd_userd01, :decimal

      add :bkpd_userd02, :decimal

      add :bkpd_useri01, :integer

      add :bkpd_useri02, :integer

      add :bkpd__qadc03, :string

      add :bkpd__qadc04, :string

      add :bkpd__qadc05, :string

      add :bkpd__qadd01, :decimal

      add :bkpd__qadd02, :decimal

      add :bkpd__qadi01, :integer

      add :bkpd__qadi02, :integer

      add :bkpd__qadl01, :boolean

      add :bkpd__qadl02, :boolean

      add :bkpd__qadt01, :naive_datetime

      add :bkpd__qadt02, :naive_datetime

      add :bkpd_domain, :string

      add :oid_bkpd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BC_MSTR") do
      add :bc_batch, :string

      add :bc_perm, :boolean

      add :bc_priority, :integer

      add :bc_user1, :string

      add :bc_user2, :string

      add :bc_desc, :string

      add :bc_cmtindx, :integer

      add :bc_canrun, :string

      add :bc__qadc01, :string

      add :bc_domain, :string

      add :oid_bc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATGT_REF") do
      add :oid_atgt_ref, :decimal

      add :oid_att_mstr, :decimal

      add :oid_atg_mstr, :decimal

      add :atgt_mod_date, :naive_datetime

      add :atgt_mod_userid, :string

      add :atgt_user1, :string

      add :atgt_user2, :string

      add :atgt__qadc01, :string

      add :atgt__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AR_MSTR") do
      add :ar_type, :string

      add :ar_nbr, :string

      add :ar_cust, :string

      add :ar_so_nbr, :string

      add :ar_xcomm_pct, :decimal

      add :ar_effdate, :naive_datetime

      add :ar_date, :naive_datetime

      add :ar_cr_terms, :string

      add :ar_po, :string

      add :ar_amt, :decimal

      add :ar_applied, :decimal

      add :ar_disc_date, :naive_datetime

      add :ar_due_date, :naive_datetime

      add :ar_expt_date, :naive_datetime

      add :ar_acct, :string

      add :ar_cc, :string

      add :ar_sales_amt, :decimal

      add :ar_xslspsn1, :string

      add :ar_xslspsn2, :string

      add :ar_paid_date, :naive_datetime

      add :ar_batch, :string

      add :ar_disc_acct, :string

      add :ar_disc_cc, :string

      add :ar_ship, :string

      add :ar_open, :boolean

      add :ar_contested, :boolean

      add :ar_check, :string

      add :ar_cmtindx, :integer

      add :ar_user1, :string

      add :ar_user2, :string

      add :ar_curr, :string

      add :ar_ex_rate, :decimal

      add :ar_var_acct, :string

      add :ar_var_cc, :string

      add :ar_bank, :string

      add :ar_mrgn_amt, :decimal

      add :ar_entity, :string

      add :ar_ent_ex, :decimal

      add :ar__chr01, :string

      add :ar__chr02, :string

      add :ar__chr03, :string

      add :ar__chr04, :string

      add :ar__chr05, :string

      add :ar__dte01, :naive_datetime

      add :ar__dte02, :naive_datetime

      add :ar__dec01, :decimal

      add :ar__dec02, :decimal

      add :ar__log01, :boolean

      add :ar_draft, :boolean

      add :ar_ldue_date, :naive_datetime

      add :ar_print, :boolean

      add :ar_inv_cr, :string

      add :ar_fr_terms, :string

      add :ar_comm_pct, :decimal

      add :ar_slspsn, :string

      add :ar_bill, :string

      add :ar_tax_date, :naive_datetime

      add :ar_tax_env, :string

      add :ar__qad01, :string

      add :ar__qad02, :string

      add :ar__qad03, :boolean

      add :ar_drft_sel, :boolean

      add :ar_coll_mthd, :string

      add :ar_amt_chg, :decimal

      add :ar_disc_chg, :decimal

      add :ar_base_amt, :decimal

      add :ar_fsm_type, :string

      add :ar_comm_amt, :decimal

      add :ar_dy_code, :string

      add :ar_dun_level, :integer

      add :ar_ex_rate2, :decimal

      add :ar_ex_ratetype, :string

      add :ar_base_amt_chg, :decimal

      add :ar_base_applied, :decimal

      add :ar_base_comm_amt, :decimal

      add :ar_exru_seq, :integer

      add :ar_dd_curr, :string

      add :ar_dd_ex_rate, :decimal

      add :ar_dd_ex_rate2, :decimal

      add :ar_dd_exru_seq, :integer

      add :ar_app_owner, :string

      add :ar_sub, :string

      add :ar_disc_sub, :string

      add :ar_var_sub, :string

      add :ar_prepayment, :boolean

      add :ar_shipfrom, :string

      add :ar_customer_bank, :string

      add :ar_draft_disc_date, :naive_datetime

      add :ar_recon_date, :naive_datetime

      add :ar_status, :string

      add :ar_customer_initiated, :boolean

      add :ar_draft_submit_date, :naive_datetime

      add :ar_pay_method, :string

      add :ar_void_date, :naive_datetime

      add :ar_domain, :string

      add :oid_ar_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CB_MSTR") do
      add :cb_batch, :string

      add :cb_line, :integer

      add :cb_type, :string

      add :cb_amt, :decimal

      add :cb_ref, :string

      add :cb_ex_rate, :decimal

      add :cb_user1, :string

      add :cb_user2, :string

      add :cb_curr, :string

      add :cb_ent_ex, :decimal

      add :cb_curr_amt, :decimal

      add :cb__qadc01, :string

      add :cb_ex_rate2, :decimal

      add :cb_ex_ratetype, :string

      add :cb_exru_seq, :integer

      add :cb_subtype, :string

      add :cb_domain, :string

      add :oid_cb_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BDL_MSTR") do
      add :bdl_id, :integer

      add :bdl_exec, :string

      add :bdl_pgm_errs, :integer

      add :bdl_pro_errs, :integer

      add :bdl_date_ent, :naive_datetime

      add :bdl_time_ent, :string

      add :bdl_date_pro, :naive_datetime

      add :bdl_time_pro, :string

      add :bdl_user1, :string

      add :bdl_user2, :string

      add :bdl_source, :string

      add :bdl__qadc01, :string

      add :bdl_domain, :string

      add :oid_bdl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATP_DET") do
      add :atp_part, :string

      add :atp__qad02, :naive_datetime

      add :atp_date, :naive_datetime

      add :atp_qty, :decimal

      add :atp__qad03, :string

      add :atp__qad04, :string

      add :atp__qad01, :string

      add :atp_site, :string

      add :atp_user1, :string

      add :atp_user2, :string

      add :atp_id_num, :integer

      add :atp_domain, :string

      add :oid_atp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TAX_MSTR") do
      add :tax_state, :string

      add :tax_city, :string

      add :tax_tax_pct, :decimal

      add :tax_acct, :string

      add :tax_cc, :string

      add :tax_county, :string

      add :tax_trl, :boolean

      add :tax_user1, :string

      add :tax_user2, :string

      add :tax_userid, :string

      add :tax_effdate, :naive_datetime

      add :tax_mod_date, :naive_datetime

      add :tax_max, :decimal

      add :tax__qad01, :string

      add :tax__qad02, :string

      add :tax__qad03, :boolean

      add :oid_tax_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATD_MSTR") do
      add :atd_code, :string

      add :atd_desc, :string

      add :atd_group, :string

      add :atd_mod_userid, :string

      add :atd_mod_date, :naive_datetime

      add :atd_user1, :string

      add :atd_user2, :string

      add :atd__qadc01, :string

      add :atd__qadc02, :string

      add :atd_domain, :string

      add :oid_atd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ARSD_DET") do
      add :arsd_batch, :string

      add :arsd_line, :integer

      add :arsd_nbr, :string

      add :arsd_acct, :string

      add :arsd_sub, :string

      add :arsd_cc, :string

      add :arsd_ex_rate, :decimal

      add :arsd_ex_rate2, :decimal

      add :arsd_ex_ratetype, :string

      add :arsd_exru_seq, :integer

      add :arsd_mod_date, :naive_datetime

      add :arsd_mod_userid, :string

      add :arsd_user1, :string

      add :arsd_user2, :string

      add :arsd__qadc01, :string

      add :arsd__qadc02, :string

      add :arsd_domain, :string

      add :oid_arsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ANX_DET") do
      add :anx_type, :string

      add :anx_code, :string

      add :anx_node, :string

      add :anx_active, :boolean

      add :anx_user1, :string

      add :anx_user2, :string

      add :anx__qadc01, :string

      add :anx__qadd01, :decimal

      add :anx_domain, :string

      add :oid_anx_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACX_MSTR") do
      add :acx_acc, :string

      add :acx_cc, :string

      add :acx__qad01, :boolean

      add :acx_to_ent, :string

      add :acx_to_acc, :string

      add :acx_to_cc, :string

      add :acx_xcons_cc, :boolean

      add :acx_user1, :string

      add :acx_user2, :string

      add :acx_entity, :string

      add :acx_sub, :string

      add :acx_to_sub, :string

      add :acx_domain, :string

      add :acx_to_domain, :string

      add :oid_acx_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATDCD_DET") do
      add :oid_atdcd_det, :decimal

      add :oid_atdc_mstr, :decimal

      add :atdcd_type, :string

      add :atdcd_begin_date, :naive_datetime

      add :atdcd_end_date, :naive_datetime

      add :atdcd_used, :boolean

      add :atdcd_mod_date, :naive_datetime

      add :atdcd_mod_userid, :string

      add :atdcd_user1, :string

      add :atdcd_user2, :string

      add :atdcd__qadc01, :string

      add :atdcd__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ARC_CTRL") do
      add :arc_memo, :integer

      add :arc_batch, :integer

      add :arc_jrnl, :integer

      add :arc_gl_sum, :boolean

      add :arc__qad01, :integer

      add :arc_user1, :string

      add :arc_user2, :string

      add :arc__qad03, :string

      add :arc__qad02, :naive_datetime

      add :arc__qadi01, :integer

      add :arc__qadc03, :string

      add :arc__qadc05, :string

      add :arc_ex_tol, :decimal

      add :arc_memo_pre, :string

      add :arc_drft_acc, :string

      add :arc_drft_cc, :string

      add :arc_use_drft, :boolean

      add :arc_auto_drft, :boolean

      add :arc_auto_late_int, :boolean

      add :arc_nxt_pmt, :string

      add :arc_nxt_drft, :string

      add :arc_coll_mthd, :string

      add :arc_ext_drft_ref, :boolean

      add :arc_drft_min, :decimal

      add :arc_drft_max, :decimal

      add :arc__qadc01, :string

      add :arc__qadc02, :string

      add :arc_ex_ratetype, :string

      add :arc_sum_lvl, :integer

      add :arc_drft_sub, :string

      add :arc__qadc04, :string

      add :arc_domain, :string

      add :oid_arc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ANL_DET") do
      add :anl_code, :string

      add :anl_link_code, :string

      add :anl_type, :string

      add :anl_desc, :string

      add :anl_user1, :string

      add :anl_user2, :string

      add :anl__qadc01, :string

      add :anl__qadd01, :decimal

      add :anl_domain, :string

      add :oid_anl_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSD_DET") do
      add :absd_abs_id, :string

      add :absd_shipfrom, :string

      add :absd_abs_fld_name, :string

      add :absd_fld_name, :string

      add :absd_fld_value, :string

      add :absd_fld_prompt, :boolean

      add :absd_validate, :string

      add :absd_fld_seq, :integer

      add :absd_mod_userid, :string

      add :absd_mod_date, :naive_datetime

      add :absd_userc01, :string

      add :absd__qadc01, :string

      add :absd__qadc02, :string

      add :absd_domain, :string

      add :oid_absd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATG_MSTR") do
      add :oid_atg_mstr, :decimal

      add :atg_group_name, :string

      add :atg_group_type, :string

      add :atg_group_desc, :string

      add :atg_origin, :string

      add :atg_mod_date, :naive_datetime

      add :atg_mod_userid, :string

      add :atg_user1, :string

      add :atg_user2, :string

      add :atg__qadc01, :string

      add :atg__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ASC_MSTR") do
      add :asc_acc, :string

      add :asc_sub, :string

      add :asc_cc, :string

      add :asc_desc, :string

      add :asc_user1, :string

      add :asc_user2, :string

      add :asc_fpos, :integer

      add :asc__qadc01, :string

      add :asc_domain, :string

      add :oid_asc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_APMR_MSTR") do
      add :apmr_pricing, :integer

      add :apmr_rule, :integer

      add :apmr_seq, :integer

      add :apmr_type, :integer

      add :apmr_user1, :string

      add :apmr_user2, :string

      add :apmr__qadc01, :string

      add :apmr__qadc02, :string

      add :apmr__qadc03, :string

      add :apmr__qadd01, :decimal

      add :apmr__qadd02, :decimal

      add :apmr__qadi01, :integer

      add :apmr__qadi02, :integer

      add :apmr__qadl01, :boolean

      add :apmr__qadl02, :boolean

      add :apmr__qadt01, :naive_datetime

      add :apmr__qadt02, :naive_datetime

      add :apmr_domain, :string

      add :oid_apmr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ADX_DET") do
      add :adx_ext_appl, :string

      add :adx_ext_ref1, :string

      add :adx_ext_ref2, :string

      add :adx_mfg_addr, :string

      add :adx_mod_userid, :string

      add :adx_mod_date, :naive_datetime

      add :adx_user1, :string

      add :adx_user2, :string

      add :adx__qadc01, :string

      add :adx__qadi01, :integer

      add :adx__qadd01, :decimal

      add :adx__qadl01, :boolean

      add :adx__qadt01, :naive_datetime

      add :adx_domain, :string

      add :oid_adx_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABS_MSTR") do
      add :abs_shipfrom, :string

      add :abs_id, :string

      add :abs_par_id, :string

      add :abs_shipto, :string

      add :abs_type, :string

      add :abs_status, :string

      add :abs_timezone, :string

      add :abs_shp_date, :naive_datetime

      add :abs_shp_time, :integer

      add :abs_arr_date, :naive_datetime

      add :abs_arr_time, :integer

      add :abs_crt_date, :naive_datetime

      add :abs_crt_time, :integer

      add :abs_apr_date, :naive_datetime

      add :abs_apr_time, :integer

      add :abs_apr_userid, :string

      add :abs_gwt, :decimal

      add :abs_nwt, :decimal

      add :abs_vol, :decimal

      add :abs_wt_um, :string

      add :abs_vol_um, :string

      add :abs_dim_um, :string

      add :abs_fr_class, :string

      add :abs_est_fcst, :decimal

      add :abs_act_fcst, :decimal

      add :abs_fr_curr, :string

      add :abs_doc_data, :string

      add :abs_dataset, :string

      add :abs_order, :string

      add :abs_line, :string

      add :abs_inv_nbr, :string

      add :abs_item, :string

      add :abs_lotser, :string

      add :abs_ref, :string

      add :abs_qty, :decimal

      add :abs_ship_qty, :decimal

      add :abs_cum_qty, :decimal

      add :abs_site, :string

      add :abs_loc, :string

      add :abs_cust_ref, :string

      add :abs_cmtindx, :integer

      add :abs__chr01, :string

      add :abs__chr02, :string

      add :abs__chr03, :string

      add :abs__chr04, :string

      add :abs__chr05, :string

      add :abs__chr06, :string

      add :abs__chr07, :string

      add :abs__chr08, :string

      add :abs__chr09, :string

      add :abs__chr10, :string

      add :abs__dec01, :decimal

      add :abs__dec02, :decimal

      add :abs__dec03, :decimal

      add :abs__dec04, :decimal

      add :abs__dec05, :decimal

      add :abs__dec06, :decimal

      add :abs__dec07, :decimal

      add :abs__dec08, :decimal

      add :abs__dec09, :decimal

      add :abs__dec10, :decimal

      add :abs__qad01, :string

      add :abs__qad02, :string

      add :abs__qad03, :string

      add :abs__qad04, :string

      add :abs__qad05, :string

      add :abs__qad06, :string

      add :abs__qad07, :string

      add :abs__qad08, :string

      add :abs__qad09, :string

      add :abs__qad10, :string

      add :abs_user1, :string

      add :abs_user2, :string

      add :abs_master_id, :string

      add :abs_inv_mov, :string

      add :abs_nr_id, :string

      add :abs_format, :string

      add :abs_cons_ship, :string

      add :abs__qadc01, :string

      add :abs_lang, :string

      add :abs_canceled, :boolean

      add :abs__qadd01, :decimal

      add :abs_trl_cmtindx, :integer

      add :abs_eff_date, :naive_datetime

      add :abs_cancel_date, :naive_datetime

      add :abs_preship_nr_id, :string

      add :abs_preship_id, :string

      add :abs_fa_lot, :string

      add :abs_asn_crt_date, :naive_datetime

      add :abs_asn_crt_time, :integer

      add :abs_export_batch, :integer

      add :abs_export_date, :naive_datetime

      add :abs_export_time, :integer

      add :abs_charge_type, :string

      add :abs_price, :decimal

      add :abs_desc, :string

      add :abs_master_shipfrom, :string

      add :abs_domain, :string

      add :oid_abs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATERR_MSTR") do
      add :aterr_event_id, :decimal

      add :aterr_status, :string

      add :aterr_table_name, :string

      add :oid_erecord, :decimal

      add :oid_atap_mstr, :decimal

      add :aterr_date, :naive_datetime

      add :aterr_time, :integer

      add :aterr_timezone, :string

      add :aterr_event_type, :string

      add :aterr_source, :string

      add :aterr_userid, :string

      add :aterr_user_name, :string

      add :aterr_pgmi_exec, :string

      add :aterr_error_code, :string

      add :aterr_record_order, :integer

      add :aterr__qadd01, :decimal

      add :aterr__qadc01, :string

      add :aterr__qadc02, :string

      add :aterr_raw_image, :binary

      add :aterr_exclude_fields, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ART_MSTR") do
      add :art_desc, :string

      add :art_app_id, :string

      add :art_mfg_msg_code, :integer

      add :art_mod_date, :naive_datetime

      add :art_mod_userid, :string

      add :art_return_code, :string

      add :art_sev_lvl, :string

      add :art_user1, :string

      add :art_user2, :string

      add :art__dec01, :decimal

      add :art__dec02, :decimal

      add :art__int01, :integer

      add :art__int02, :integer

      add :art__log01, :boolean

      add :art__log02, :boolean

      add :art__dte01, :naive_datetime

      add :art__dte02, :naive_datetime

      add :art__qadc01, :string

      add :art__qadc02, :string

      add :art__qadc03, :string

      add :art__qadc04, :string

      add :art__qadd01, :decimal

      add :art__qadd02, :decimal

      add :art__qadi01, :integer

      add :art__qadi02, :integer

      add :art__qadl01, :boolean

      add :art__qadl02, :boolean

      add :art__qadt01, :naive_datetime

      add :art__qadt02, :naive_datetime

      add :art_mthd_name, :string

      add :art_domain, :string

      add :oid_art_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AN_MSTR") do
      add :an_userid, :string

      add :an_code, :string

      add :an_cmtindx, :integer

      add :an_desc, :string

      add :an_type, :string

      add :an_sec_group, :string

      add :an_mod_date, :naive_datetime

      add :an_active, :boolean

      add :an_user1, :string

      add :an_user2, :string

      add :an__qadc01, :string

      add :an__qadd01, :decimal

      add :an_domain, :string

      add :oid_an_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSR_DET") do
      add :absr_qty, :decimal

      add :absr_date, :naive_datetime

      add :absr_interval, :string

      add :absr_line, :integer

      add :absr_nbr, :string

      add :absr_reference, :string

      add :absr_ship_id, :string

      add :absr_time, :string

      add :absr_type, :integer

      add :absr_cnfrmd, :boolean

      add :absr_shipfrom, :string

      add :absr_id, :string

      add :absr_rlse_id, :string

      add :absr_user1, :string

      add :absr_user2, :string

      add :absr__qadc01, :string

      add :absr_domain, :string

      add :oid_absr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATDC_MSTR") do
      add :oid_atdc_mstr, :decimal

      add :atdc_name, :string

      add :atdc_phy_name, :string

      add :atdc_dir, :string

      add :atdc_host, :string

      add :atdc_server, :string

      add :atdc_type, :string

      add :atdc_network, :string

      add :atdc_parmfile, :string

      add :atdc_online, :boolean

      add :atdc_desc, :string

      add :atdc__qadt01, :naive_datetime

      add :atdc__qadt02, :naive_datetime

      add :atdc_mod_date, :naive_datetime

      add :atdc_mod_userid, :string

      add :atdc_user1, :string

      add :atdc_user2, :string

      add :atdc__qadc01, :string

      add :atdc__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ARD_DET") do
      add :ard_nbr, :string

      add :ard_acct, :string

      add :ard_cc, :string

      add :ard_amt, :decimal

      add :ard_desc, :string

      add :ard_ref, :string

      add :ard_disc, :decimal

      add :ard_type, :string

      add :ard_user1, :string

      add :ard_user2, :string

      add :ard_tax, :string

      add :ard_tax_at, :string

      add :ard_entity, :string

      add :ard__qad02, :string

      add :ard__qad01, :naive_datetime

      add :ard_project, :string

      add :ard_cur_amt, :decimal

      add :ard_cur_disc, :decimal

      add :ard_ex_rate, :decimal

      add :ard_tax_usage, :string

      add :ard_taxc, :string

      add :ard_dy_code, :string

      add :ard_dy_num, :string

      add :ard_ex_rate2, :decimal

      add :ard_ex_ratetype, :string

      add :ard_ded_nbr, :integer

      add :ard_exru_seq, :integer

      add :ard_sub, :string

      add :ard_domain, :string

      add :oid_ard_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ANS_DET") do
      add :ans_code, :string

      add :ans_type, :string

      add :ans_include, :boolean

      add :ans_mask, :string

      add :ans_sel_high, :string

      add :ans_sel_low, :string

      add :ans_field, :string

      add :ans_user1, :string

      add :ans_user2, :string

      add :ans__qadc01, :string

      add :ans__qadd01, :decimal

      add :ans_domain, :string

      add :oid_ans_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACT_MSTR") do
      add :act_nbr, :string

      add :act_line, :integer

      add :act_cont_part, :string

      add :act_user1, :string

      add :act_user2, :string

      add :act__qadc01, :string

      add :act_charge_type, :string

      add :act_ord_mult, :integer

      add :act_domain, :string

      add :oid_act_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSI_MSTR") do
      add :absi_shipfrom, :string

      add :absi_abs_id, :string

      add :absi_voyage, :string

      add :absi_origin, :string

      add :absi_port_depart, :string

      add :absi_port_arrive, :string

      add :absi_due_date, :naive_datetime

      add :absi_contents, :string

      add :absi_mod_date, :naive_datetime

      add :absi_mod_userid, :string

      add :absi_user1, :string

      add :absi_user2, :string

      add :absi__qadc01, :string

      add :absi__qadc02, :string

      add :absi_carrier_ref2, :string

      add :absi_domain, :string

      add :oid_absi_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_APRM_MSTR") do
      add :aprm_app_id, :string

      add :aprm_mthd_name, :string

      add :aprm_mod_date, :naive_datetime

      add :aprm_mod_userid, :string

      add :aprm_code, :string

      add :aprm_desc, :string

      add :aprm_seq, :integer

      add :aprm_val, :string

      add :aprm_user1, :string

      add :aprm_user2, :string

      add :aprm__dec01, :decimal

      add :aprm__dec02, :decimal

      add :aprm__int01, :integer

      add :aprm__int02, :integer

      add :aprm__log01, :boolean

      add :aprm__log02, :boolean

      add :aprm__dte01, :naive_datetime

      add :aprm__dte02, :naive_datetime

      add :aprm__qadc01, :string

      add :aprm__qadc02, :string

      add :aprm__qadc03, :string

      add :aprm__qadc04, :string

      add :aprm__qadd01, :decimal

      add :aprm__qadd02, :decimal

      add :aprm__qadi01, :integer

      add :aprm__qadi02, :integer

      add :aprm__qadl01, :boolean

      add :aprm__qadl02, :boolean

      add :aprm__qadt01, :naive_datetime

      add :aprm__qadt02, :naive_datetime

      add :aprm_doc_std, :string

      add :aprm_domain, :string

      add :oid_aprm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACDF_MSTR") do
      add :acdf_type, :string

      add :acdf_key1, :string

      add :acdf_key2, :string

      add :acdf_key3, :string

      add :acdf_key4, :string

      add :acdf_key5, :string

      add :acdf_key6, :string

      add :acdf_acct, :string

      add :acdf_sub, :string

      add :acdf_cc, :string

      add :acdf_module, :string

      add :acdf_mod_userid, :string

      add :acdf_mod_date, :naive_datetime

      add :acdf_userc01, :string

      add :acdf_userc02, :string

      add :acdf_userd01, :decimal

      add :acdf_useri01, :integer

      add :acdf_userl01, :boolean

      add :acdf_usert01, :naive_datetime

      add :acdf__qadc01, :string

      add :acdf__qadd01, :decimal

      add :acdf__qadi01, :integer

      add :acdf__qadl01, :boolean

      add :acdf__qadt01, :naive_datetime

      add :acdf_domain, :string

      add :oid_acdf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABD_DET") do
      add :abd_book, :string

      add :abd_asset, :string

      add :abd_type, :string

      add :abd_active, :boolean

      add :abd_cost, :decimal

      add :abd_curr_cost, :decimal

      add :abd_ex_rate, :decimal

      add :abd_ent_ex, :decimal

      add :abd_life_yr, :integer

      add :abd_life_mnth, :integer

      add :abd_rem_yr, :integer

      add :abd_rem_mnth, :integer

      add :abd_method, :string

      add :abd_salvage, :decimal

      add :abd_dtd, :decimal

      add :abd_ytd, :decimal

      add :abd_pd_depr, :decimal

      add :abd_last_depr, :naive_datetime

      add :abd_expense, :decimal

      add :abd_bonus, :decimal

      add :abd_credit, :decimal

      add :abd_cr_amt, :decimal

      add :abd_conv, :string

      add :abd_db_pct, :decimal

      add :abd_uint1, :integer

      add :abd_uint2, :integer

      add :abd_uint3, :integer

      add :abd_udec1, :decimal

      add :abd_udec2, :decimal

      add :abd_udec3, :decimal

      add :abd_prior_ast, :decimal

      add :abd_user1, :string

      add :abd_user2, :string

      add :abd__qad01, :string

      add :abd__qad02, :string

      add :abd_rep_pct, :decimal

      add :abd_date, :naive_datetime

      add :abd_periods, :integer

      add :abd_ytd_total, :decimal

      add :abd_first_mnth, :decimal

      add :abd_rt_date, :naive_datetime

      add :abd__qad03, :string

      add :abd_sched_depr, :decimal

      add :abd_udec4, :decimal

      add :abd_ex_rate2, :decimal

      add :abd_ex_ratetype, :string

      add :abd_exru_seq, :integer

      add :oid_abd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AST_MSTR") do
      add :ast_asset, :string

      add :ast_desc, :string

      add :ast_entity, :string

      add :ast_date, :naive_datetime

      add :ast_pur_date, :naive_datetime

      add :ast_serial, :string

      add :ast_inv_nbr, :string

      add :ast_qty, :integer

      add :ast_fa_loc, :string

      add :ast_cust, :string

      add :ast_acct, :string

      add :ast_sub, :string

      add :ast_cc, :string

      add :ast_proj, :string

      add :ast_ac_acct, :string

      add :ast_ac_sub, :string

      add :ast_ac_cc, :string

      add :ast_ac_proj, :string

      add :ast_exp_acct, :string

      add :ast_exp_sub, :string

      add :ast_exp_cc, :string

      add :ast_exp_proj, :string

      add :ast_po_nbr, :string

      add :ast_vend, :string

      add :ast_at_risk, :decimal

      add :ast_warranty, :naive_datetime

      add :ast_class, :string

      add :ast_retire, :string

      add :ast_rt_price, :decimal

      add :ast_rt_date, :naive_datetime

      add :ast_rt_reason, :string

      add :ast_report, :boolean

      add :ast_sp_ac_acct, :string

      add :ast_sp_ac_sub, :string

      add :ast_sp_ac_cc, :string

      add :ast_sp_ac_proj, :string

      add :ast_ins_nbr, :string

      add :ast_ins_co, :string

      add :ast_ins_date, :naive_datetime

      add :ast_ins_value, :decimal

      add :ast_udate1, :naive_datetime

      add :ast_udate2, :naive_datetime

      add :ast_udate3, :naive_datetime

      add :ast_udate4, :naive_datetime

      add :ast_uchar1, :string

      add :ast_uchar2, :string

      add :ast_uchar3, :string

      add :ast_uchar4, :string

      add :ast_uint1, :integer

      add :ast_uint2, :integer

      add :ast_uint3, :integer

      add :ast_uint4, :integer

      add :ast_udec1, :decimal

      add :ast_udec2, :decimal

      add :ast_userid, :string

      add :ast_mod_date, :naive_datetime

      add :ast_sus_beg, :naive_datetime

      add :ast_sus_end, :naive_datetime

      add :ast_sp_exp_acct, :string

      add :ast_sp_exp_sub, :string

      add :ast_sp_exp_cc, :string

      add :ast_sp_exp_proj, :string

      add :ast_prev_method, :string

      add :ast__qad01, :boolean

      add :ast__qad02, :string

      add :ast__qad03, :string

      add :ast_user1, :string

      add :ast_user2, :string

      add :oid_ast_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_APM_CTRL") do
      add :apm__qadi03, :integer

      add :apm_div, :string

      add :apm_multi_div, :boolean

      add :apm_prig1, :boolean

      add :apm_prig2, :boolean

      add :apm_plpri, :boolean

      add :apm_plpri_sseq, :string

      add :apm_plpri_dseq, :string

      add :apm_manual, :boolean

      add :apm_line_rel, :boolean

      add :apm_user1, :string

      add :apm_user2, :string

      add :apm__qadc01, :string

      add :apm__qadc02, :string

      add :apm__qadc03, :string

      add :apm__qadd01, :decimal

      add :apm__qadd02, :decimal

      add :apm__qadi01, :integer

      add :apm__qadi02, :integer

      add :apm__qadl01, :boolean

      add :apm__qadl02, :boolean

      add :apm__qadl03, :boolean

      add :apm__qadt01, :naive_datetime

      add :apm__qadt02, :naive_datetime

      add :apm_domain, :string

      add :oid_apm_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AD_MSTR") do
      add :ad_addr, :string

      add :ad_name, :string

      add :ad_line1, :string

      add :ad_line2, :string

      add :ad_city, :string

      add :ad_state, :string

      add :ad_zip, :string

      add :ad_type, :string

      add :ad_attn, :string

      add :ad_phone, :string

      add :ad_ext, :string

      add :ad_ref, :string

      add :ad_sort, :string

      add :ad_country, :string

      add :ad_attn2, :string

      add :ad_phone2, :string

      add :ad_ext2, :string

      add :ad_fax, :string

      add :ad_fax2, :string

      add :ad_line3, :string

      add :ad_user1, :string

      add :ad_user2, :string

      add :ad_lang, :string

      add :ad_pst_id, :string

      add :ad_date, :naive_datetime

      add :ad_county, :string

      add :ad_temp, :boolean

      add :ad_bk_acct1, :string

      add :ad_bk_acct2, :string

      add :ad_format, :integer

      add :ad_vat_reg, :string

      add :ad_coc_reg, :string

      add :ad_gst_id, :string

      add :ad_tax_type, :string

      add :ad_taxc, :string

      add :ad_taxable, :boolean

      add :ad_tax_in, :boolean

      add :ad_edi_tpid, :string

      add :ad_timezone, :string

      add :ad_mod_date, :naive_datetime

      add :ad_userid, :string

      add :ad_edi_id, :string

      add :ad_edi_ctrl, :string

      add :ad_conrep, :string

      add :ad_barlbl_prt, :string

      add :ad_barlbl_val, :string

      add :ad_calendar, :string

      add :ad_edi_std, :string

      add :ad_edi_level, :string

      add :ad__qad01, :string

      add :ad__qad02, :string

      add :ad__qad03, :string

      add :ad__qad04, :string

      add :ad__qad05, :string

      add :ad__chr01, :string

      add :ad__chr02, :string

      add :ad__chr03, :string

      add :ad__chr04, :string

      add :ad__chr05, :string

      add :ad_tp_loc_code, :string

      add :ad_ctry, :string

      add :ad_tax_zone, :string

      add :ad_tax_usage, :string

      add :ad_misc1_id, :string

      add :ad_misc2_id, :string

      add :ad_misc3_id, :string

      add :ad_wk_offset, :integer

      add :ad_inv_mthd, :string

      add :ad_sch_mthd, :string

      add :ad_po_mthd, :string

      add :ad_asn_data, :string

      add :ad_intr_division, :string

      add :ad_tax_report, :boolean

      add :ad_name_control, :string

      add :ad_last_file, :boolean

      add :ad_domain, :string

      add :oid_ad_mstr, :decimal

      add :ad_email, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACCD_DET") do
      add :accd_asset, :string

      add :accd_desc, :string

      add :accd_book, :string

      add :accd_date, :naive_datetime

      add :accd_amt, :decimal

      add :accd_curr, :string

      add :accd_curr_amt, :decimal

      add :accd_ex_rate, :decimal

      add :accd_ent_ex, :decimal

      add :accd_life_yr, :integer

      add :accd_life_mnth, :integer

      add :accd_userid, :string

      add :accd_mod_date, :naive_datetime

      add :accd_line, :integer

      add :accd_user1, :string

      add :accd_user2, :string

      add :accd__qadc01, :string

      add :accd_ex_rate2, :decimal

      add :accd_ex_ratetype, :string

      add :accd_exru_seq, :integer

      add :oid_accd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AP_MSTR") do
      add :ap_type, :string

      add :ap_ref, :string

      add :ap_batch, :string

      add :ap_vend, :string

      add :ap_effdate, :naive_datetime

      add :ap_date, :naive_datetime

      add :ap_amt, :decimal

      add :ap_acct, :string

      add :ap_cc, :string

      add :ap_disc_acct, :string

      add :ap_disc_cc, :string

      add :ap_open, :boolean

      add :ap_rmk, :string

      add :ap_user1, :string

      add :ap_user2, :string

      add :ap_curr, :string

      add :ap_ex_rate, :decimal

      add :ap_bank, :string

      add :ap_sort, :string

      add :ap_expt_date, :naive_datetime

      add :ap_entity, :string

      add :ap_ent_ex, :decimal

      add :ap_ckfrm, :string

      add :ap__qad01, :string

      add :ap__qad02, :string

      add :ap__qad03, :boolean

      add :ap_dy_code, :string

      add :ap_remit, :string

      add :ap_ex_rate2, :decimal

      add :ap_ex_ratetype, :string

      add :ap_base_amt, :decimal

      add :ap_exru_seq, :integer

      add :ap_sub, :string

      add :ap_disc_sub, :string

      add :ap_unapplied_ref, :string

      add :ap_domain, :string

      add :oid_ap_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AL_MSTR") do
      add :al_code, :string

      add :al_desc, :string

      add :al_user1, :string

      add :al_user2, :string

      add :al_userid, :string

      add :al__qad01, :naive_datetime

      add :al_domain, :string

      add :oid_al_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACM_MSTR") do
      add :acm_site, :string

      add :acm_part, :string

      add :acm_prod_line, :string

      add :acm_method, :string

      add :acm_user1, :string

      add :acm_user2, :string

      add :acm__qadc01, :string

      add :acm_domain, :string

      add :oid_acm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSC_DET") do
      add :absc_abs_id, :string

      add :absc_seq, :integer

      add :absc_carrier, :string

      add :absc_user1, :string

      add :absc_user2, :string

      add :absc__qadc01, :string

      add :absc_domain, :string

      add :oid_absc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_APC_CTRL") do
      add :apc_batch, :integer

      add :apc_voucher, :integer

      add :apc_jrnl, :integer

      add :apc_vchr_all, :boolean

      add :apc_gl_sum, :boolean

      add :apc__qad01, :integer

      add :apc_ckfrm, :string

      add :apc_user1, :string

      add :apc_user2, :string

      add :apc_ship, :string

      add :apc__qad03, :string

      add :apc__qad02, :naive_datetime

      add :apc__qadi01, :integer

      add :apc_ex_tol, :decimal

      add :apc_bank, :string

      add :apc__qadc03, :string

      add :apc__qadc05, :string

      add :apc_confirm, :boolean

      add :apc_pip, :boolean

      add :apc_vo_pre, :string

      add :apc__qadc01, :string

      add :apc__qadc02, :string

      add :apc_use_drft, :boolean

      add :apc_expvar, :boolean

      add :apc_rv_conf, :boolean

      add :apc_approv, :boolean

      add :apc_ext_ref, :boolean

      add :apc__qad04, :boolean

      add :apc_ers_ps_err, :boolean

      add :apc_gl_avg_cst, :boolean

      add :apc_ers_vo_tp, :integer

      add :apc_ex_ratetype, :string

      add :apc_sum_lvl, :integer

      add :apc__qadc04, :string

      add :apc_multi_entity_pay, :boolean

      add :apc_domain, :string

      add :oid_apc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ADC_CTRL") do
      add :adc_format, :integer

      add :adc_user1, :string

      add :adc_user2, :string

      add :adc__qadi01, :integer

      add :adc__qadc01, :string

      add :adc_domain, :string

      add :oid_adc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSS_DET") do
      add :abss_abs_id, :string

      add :abss_shipfrom, :string

      add :abss_shipto, :string

      add :abss_rlse_id, :string

      add :abss_cust_job, :string

      add :abss_cust_seq, :string

      add :abss_part, :string

      add :abss_qty, :decimal

      add :abss_date, :naive_datetime

      add :abss_time, :string

      add :abss_cust_ref, :string

      add :abss_ship_id, :string

      add :abss_dock, :string

      add :abss_line_feed, :string

      add :abss_confirmed, :boolean

      add :abss_status, :string

      add :abss_order, :string

      add :abss_line, :integer

      add :abss_invoice, :string

      add :abss_mod_userid, :string

      add :abss_mod_date, :naive_datetime

      add :abss_mod_pgm, :string

      add :abss_user1, :string

      add :abss_user2, :string

      add :abss__qadc01, :string

      add :abss__qadc02, :string

      add :abss__qadd01, :decimal

      add :abss__qadd02, :decimal

      add :abss__qadi01, :integer

      add :abss__qadi02, :integer

      add :abss__qadl01, :boolean

      add :abss__qadl02, :boolean

      add :abss__qadt01, :naive_datetime

      add :abss__qadt02, :naive_datetime

      add :abss_domain, :string

      add :oid_abss_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ALM_MSTR") do
      add :alm_lot_grp, :string

      add :alm_site, :string

      add :alm_lead, :string

      add :alm_len, :integer

      add :alm_trail, :string

      add :alm_pgm, :string

      add :alm_userid, :string

      add :alm_date, :naive_datetime

      add :alm_seq, :decimal

      add :alm_user1, :string

      add :alm_user2, :string

      add :alm__qadc01, :string

      add :alm_domain, :string

      add :oid_alm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACD_DET") do
      add :acd_acc, :string

      add :acd_cc, :string

      add :acd_entity, :string

      add :acd_project, :string

      add :acd_year, :integer

      add :acd_per, :integer

      add :acd_amt, :decimal

      add :acd_curr_amt, :decimal

      add :acd_user1, :string

      add :acd_user2, :string

      add :acd_sub, :string

      add :acd_ecur_amt, :decimal

      add :acd__qadc01, :string

      add :acd_dr_amt, :decimal

      add :acd_cr_amt, :decimal

      add :acd_cr_curr_amt, :decimal

      add :acd_dr_curr_amt, :decimal

      add :acd_domain, :string

      add :oid_acd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSCC_DET") do
      add :abscc_abs_id, :string

      add :abscc_abs_shipfrom, :string

      add :abscc_order, :string

      add :abscc_ord_line, :integer

      add :abscc_container, :string

      add :abscc_qty, :decimal

      add :abscc_cont_price, :decimal

      add :abscc_inv_nbr, :string

      add :abscc_charge_type, :string

      add :abscc_ref, :string

      add :abscc_shipto, :string

      add :abscc_shp_date, :naive_datetime

      add :abscc_confirmed, :boolean

      add :abscc_inv_post, :boolean

      add :abscc_fr_class, :string

      add :abscc_ship_wt, :decimal

      add :abscc_ship_wt_um, :string

      add :abscc_sls_acct, :string

      add :abscc_sls_cc, :string

      add :abscc_taxc, :string

      add :abscc_taxable, :boolean

      add :abscc_sls_sub, :string

      add :abscc_project, :string

      add :abscc_mod_userid, :string

      add :abscc_mod_date, :naive_datetime

      add :abscc_userc01, :string

      add :abscc_userc02, :string

      add :abscc__qadc01, :string

      add :abscc__qadc02, :string

      add :abscc_domain, :string

      add :oid_abscc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WR_ROUTE") do
      add :wr_nbr, :string

      add :wr_op, :integer

      add :wr_desc, :string

      add :wr_wkctr, :string

      add :wr_mch_op, :decimal

      add :wr_setup, :decimal

      add :wr_run, :decimal

      add :wr_move, :decimal

      add :wr_act_setup, :decimal

      add :wr_act_run, :decimal

      add :wr_qty_ord, :decimal

      add :wr_qty_wip, :decimal

      add :wr_qty_comp, :decimal

      add :wr_qty_rjct, :decimal

      add :wr_qty_rwrk, :decimal

      add :wr_status, :string

      add :wr_tool, :string

      add :wr_vend, :string

      add :wr_po_nbr, :string

      add :wr_start, :naive_datetime

      add :wr_due, :naive_datetime

      add :wr_lot, :string

      add :wr_sub_act, :decimal

      add :wr_yield_pct, :decimal

      add :wr_part, :string

      add :wr_bdn_std, :decimal

      add :wr_bdn_act, :decimal

      add :wr_lbr_std, :decimal

      add :wr_lbr_act, :decimal

      add :wr_sub_std, :decimal

      add :wr_cmtindx, :integer

      add :wr_mch, :string

      add :wr_milestone, :boolean

      add :wr_user1, :string

      add :wr_user2, :string

      add :wr_std_op, :string

      add :wr_setup_men, :decimal

      add :wr_men_mch, :decimal

      add :wr_tran_qty, :integer

      add :wr_lbr_ovhd, :decimal

      add :wr_queue, :decimal

      add :wr_wait, :decimal

      add :wr_sub_lead, :integer

      add :wr_qty_move, :decimal

      add :wr__chr01, :string

      add :wr__chr02, :string

      add :wr__chr03, :string

      add :wr__chr04, :string

      add :wr__chr05, :string

      add :wr__dte01, :naive_datetime

      add :wr__dte02, :naive_datetime

      add :wr__dec01, :decimal

      add :wr__dec02, :decimal

      add :wr__log01, :boolean

      add :wr_mtl_totx, :decimal

      add :wr_lbr_totx, :decimal

      add :wr_bdn_totx, :decimal

      add :wr_sub_totx, :decimal

      add :wr_ovh_totx, :decimal

      add :wr_lvuse_post, :decimal

      add :wr_bvuse_post, :decimal

      add :wr_svuse_post, :decimal

      add :wr_sub_comp, :decimal

      add :wr_lvrte_post, :decimal

      add :wr_bvrte_post, :decimal

      add :wr_svrte_post, :decimal

      add :wr_lvrte_accr, :decimal

      add :wr_lvuse_accr, :decimal

      add :wr_bvrte_accr, :decimal

      add :wr_bvuse_accr, :decimal

      add :wr_svrte_accr, :decimal

      add :wr_svuse_accr, :decimal

      add :wr_lvrte_rval, :decimal

      add :wr_lvuse_rval, :decimal

      add :wr_bvrte_rval, :decimal

      add :wr_bvuse_rval, :decimal

      add :wr_svrte_rval, :decimal

      add :wr_svuse_rval, :decimal

      add :wr_sub_cost, :decimal

      add :wr_setup_rte, :decimal

      add :wr_lbr_rate, :decimal

      add :wr_bdn_pct, :decimal

      add :wr_bdn_rate, :decimal

      add :wr_mch_bdn, :decimal

      add :wr_slvuse_post, :decimal

      add :wr_sbvuse_post, :decimal

      add :wr_qty_inque, :decimal

      add :wr_qty_outque, :decimal

      add :wr_qty_rejque, :decimal

      add :wr_qty_inqueb, :decimal

      add :wr_qty_outqueb, :decimal

      add :wr_qty_rejqueb, :decimal

      add :wr_qty_cumrjct, :decimal

      add :wr_qty_cumoscrap, :decimal

      add :wr_qty_cumrscrap, :decimal

      add :wr_qty_cumoadj, :decimal

      add :wr_qty_cumradj, :decimal

      add :wr_qty_cummove, :decimal

      add :wr_qty_cumproc, :decimal

      add :wr_qty_cumrwrk, :decimal

      add :wr_po_line, :integer

      add :wr_wipmtl_part, :string

      add :wr_mtl_act, :decimal

      add :wr_mv_nxt_op, :boolean

      add :wr_lbr_ll_act, :decimal

      add :wr_bdn_ll_act, :decimal

      add :wr_sub_ll_act, :decimal

      add :wr_mtl_ll_act, :decimal

      add :wr_ovh_act, :decimal

      add :wr_ovh_ll_act, :decimal

      add :wr_lbr_ll_totx, :decimal

      add :wr_bdn_ll_totx, :decimal

      add :wr_sub_ll_totx, :decimal

      add :wr_mtl_ll_totx, :decimal

      add :wr_ovh_ll_totx, :decimal

      add :wr_auto_lbr, :boolean

      add :wr_ca_int_type, :string

      add :wr_covered_amt, :decimal

      add :wr_curr, :string

      add :wr_end_time, :string

      add :wr_eng_code, :string

      add :wr_fcg_code, :string

      add :wr_fcg_index, :integer

      add :wr_fis_column, :integer

      add :wr_fis_sort, :string

      add :wr_fsc_code, :string

      add :wr_fsm_type, :string

      add :wr_list_pr, :decimal

      add :wr_price, :decimal

      add :wr_prod_line, :string

      add :wr_st_time, :string

      add :wr_act_posted, :decimal

      add :wr_expense, :boolean

      add :wr_covered_post, :decimal

      add :wr__qadd05, :decimal

      add :wr_sv_code, :string

      add :wr_posted_run, :decimal

      add :wr_flbr_std, :decimal

      add :wr_flbr_cstd, :decimal

      add :wr_project, :string

      add :wr_um, :string

      add :wr_fbdn_std, :decimal

      add :wr_itm_line, :integer

      add :wr__qadc01, :string

      add :wr__qadc02, :string

      add :wr__qadc03, :string

      add :wr__qadc04, :string

      add :wr__qade01, :decimal

      add :wr__qade02, :decimal

      add :wr__qade03, :decimal

      add :wr__qade04, :decimal

      add :wr__qadi01, :integer

      add :wr__qadi02, :integer

      add :wr__qadl01, :boolean

      add :wr__qadl02, :boolean

      add :wr_unprocessed_amt, :decimal

      add :wr_domain, :string

      add :oid_wr_route, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WOC_CTRL") do
      add :woc_auto_nbr, :boolean

      add :woc_nbr, :integer

      add :woc__qadi01, :integer

      add :woc_wcmmts, :boolean

      add :woc_rcmmts, :boolean

      add :woc_move, :boolean

      add :woc_paper_lt, :integer

      add :woc__qadl02, :boolean

      add :woc__qadl01, :boolean

      add :woc_user1, :string

      add :woc_user2, :string

      add :woc__qadi02, :integer

      add :woc_sched, :string

      add :woc_time_ind, :string

      add :woc_lbr_up, :boolean

      add :woc_bdn_up, :boolean

      add :woc_gl_lbr, :boolean

      add :woc_gl_bdn, :boolean

      add :woc_var, :boolean

      add :woc_nbr_pre, :string

      add :woc_domain, :string

      add :oid_woc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WL_MSTR") do
      add :wl_prodby_id, :string

      add :wl_prodby_op, :integer

      add :wl_lotser, :string

      add :wl_cert_status, :string

      add :wl_qty_cumprod, :decimal

      add :wl_qty_cumcons, :decimal

      add :wl_qty_cumrjct, :decimal

      add :wl_qty_cumrwrk, :decimal

      add :wl_qty_cumscrap, :decimal

      add :wl_qty_cumadj, :decimal

      add :wl_qty_cumtrin, :decimal

      add :wl_qty_cumtrout, :decimal

      add :wl_cr_date, :naive_datetime

      add :wl_cr_time, :integer

      add :wl_mod_date, :naive_datetime

      add :wl_mod_time, :integer

      add :wl_mod_userid, :string

      add :wl__qadc01, :string

      add :wl__qadc02, :string

      add :wl__qadc03, :string

      add :wl__qadc04, :string

      add :wl__qadd01, :decimal

      add :wl__qadd02, :decimal

      add :wl__qadi01, :integer

      add :wl__qadi02, :integer

      add :wl__qadl01, :boolean

      add :wl__qadl02, :boolean

      add :wl__qadt01, :naive_datetime

      add :wl__qadt02, :naive_datetime

      add :wl__chr01, :string

      add :wl__chr02, :string

      add :wl__chr03, :string

      add :wl__chr04, :string

      add :wl__dec01, :decimal

      add :wl__dec02, :decimal

      add :wl__int01, :integer

      add :wl__int02, :integer

      add :wl__log01, :boolean

      add :wl__log02, :boolean

      add :wl__dte01, :naive_datetime

      add :wl__dte02, :naive_datetime

      add :wl_user1, :string

      add :wl_user2, :string

      add :wl_domain, :string

      add :oid_wl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLC_CTRL") do
      add :wlc_trc_parents, :boolean

      add :wlc_maxlotsize, :decimal

      add :wlc_nrm_id, :string

      add :wlc_wip_split_ok, :boolean

      add :wlc_wip_cmb_ok, :boolean

      add :wlc_overissue, :boolean

      add :wlc_trc_comps, :boolean

      add :wlc_trc_ref, :boolean

      add :wlc_comp_cmb_ok, :boolean

      add :wlc__qadi03, :integer

      add :wlc_mod_date, :naive_datetime

      add :wlc_mod_userid, :string

      add :wlc__qadc01, :string

      add :wlc__qadc02, :string

      add :wlc__qadc03, :string

      add :wlc__qadc04, :string

      add :wlc__qadd01, :decimal

      add :wlc__qadd02, :decimal

      add :wlc__qadi01, :integer

      add :wlc__qadi02, :integer

      add :wlc__qadl01, :boolean

      add :wlc__qadl02, :boolean

      add :wlc__qadt01, :naive_datetime

      add :wlc__qadt02, :naive_datetime

      add :wlc__chr01, :string

      add :wlc__chr02, :string

      add :wlc__chr03, :string

      add :wlc__chr04, :string

      add :wlc__dec01, :decimal

      add :wlc__dec02, :decimal

      add :wlc__int01, :integer

      add :wlc__int02, :integer

      add :wlc__log01, :boolean

      add :wlc__log02, :boolean

      add :wlc__dte01, :naive_datetime

      add :wlc__dte02, :naive_datetime

      add :wlc_user1, :string

      add :wlc_user2, :string

      add :wlc_enable_wlt, :boolean

      add :wlc_domain, :string

      add :oid_wlc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WLBD_DET") do
      add :wlbd_bom_code, :string

      add :wlbd_comp, :string

      add :wlbd_start, :naive_datetime

      add :wlbd_trc_comps, :boolean

      add :wlbd_trc_ref, :boolean

      add :wlbd_comp_cmb_ok, :boolean

      add :wlbd_mod_date, :naive_datetime

      add :wlbd_mod_userid, :string

      add :wlbd__qadc01, :string

      add :wlbd__qadc02, :string

      add :wlbd__qadc03, :string

      add :wlbd__qadc04, :string

      add :wlbd__qadd01, :decimal

      add :wlbd__qadd02, :decimal

      add :wlbd__qadi01, :integer

      add :wlbd__qadi02, :integer

      add :wlbd__qadl01, :boolean

      add :wlbd__qadl02, :boolean

      add :wlbd__qadt01, :naive_datetime

      add :wlbd__qadt02, :naive_datetime

      add :wlbd__chr01, :string

      add :wlbd__chr02, :string

      add :wlbd__chr03, :string

      add :wlbd__chr04, :string

      add :wlbd__dec01, :decimal

      add :wlbd__dec02, :decimal

      add :wlbd__int01, :integer

      add :wlbd__int02, :integer

      add :wlbd__log01, :boolean

      add :wlbd__log02, :boolean

      add :wlbd__dte01, :naive_datetime

      add :wlbd__dte02, :naive_datetime

      add :wlbd_user1, :string

      add :wlbd_user2, :string

      add :wlbd_domain, :string

      add :oid_wlbd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WHL_MSTR") do
      add :whl_site, :string

      add :whl_loc, :string

      add :whl_src_dest_id, :string

      add :whl_date, :naive_datetime

      add :whl_act, :boolean

      add :whl_um_exp, :boolean

      add :whl_po_exp, :boolean

      add :whl_so_exp, :boolean

      add :whl_wo_exp, :boolean

      add :whl_do_exp, :boolean

      add :whl_do_req_exp, :boolean

      add :whl_cust_exp, :boolean

      add :whl_sup_exp, :boolean

      add :whl_cust_item_nbr_exp, :boolean

      add :whl_rps_exp, :boolean

      add :whl_sup_item_nbr_exp, :boolean

      add :whl_do_req_cmt_exp, :boolean

      add :whl_do_cmt_exp, :boolean

      add :whl_po_cmt_exp, :boolean

      add :whl_wo_cmt_exp, :boolean

      add :whl_so_cmt_exp, :boolean

      add :whl_user1, :string

      add :whl_user2, :string

      add :whl__qadc01, :string

      add :whl__qadc02, :string

      add :whl__qadd03, :decimal

      add :whl__qadt04, :naive_datetime

      add :whl__qadl05, :boolean

      add :whl__chr01, :string

      add :whl__dec01, :decimal

      add :whl__dte01, :naive_datetime

      add :whl__log01, :boolean

      add :whl_pt_exp, :boolean

      add :whl_wo_rcpt_exp, :boolean

      add :whl_domain, :string

      add :oid_whl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LOCC_DET") do
      add :locc_site, :string

      add :locc_loc, :string

      add :locc_addr, :string

      add :locc_primary_loc, :boolean

      add :locc_mod_date, :naive_datetime

      add :locc_mod_userid, :string

      add :locc_userc01, :string

      add :locc_userc02, :string

      add :locc_userd01, :decimal

      add :locc_usert01, :naive_datetime

      add :locc_useri01, :integer

      add :locc_userl01, :boolean

      add :locc__qadc01, :string

      add :locc__qadd01, :decimal

      add :locc__qadi01, :integer

      add :locc__qadl01, :boolean

      add :locc__qadt01, :naive_datetime

      add :locc_domain, :string

      add :oid_locc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WC_MSTR") do
      add :wc_wkctr, :string

      add :wc_desc, :string

      add :wc_dept, :string

      add :wc__qad01, :decimal

      add :wc_mch_wkctr, :decimal

      add :wc_mch_op, :integer

      add :wc_men_mch, :decimal

      add :wc_lbr_rate, :decimal

      add :wc_bdn_rate, :decimal

      add :wc_bdn_pct, :decimal

      add :wc_mch_bdn, :decimal

      add :wc_queue, :decimal

      add :wc_wait, :decimal

      add :wc_wk_loc, :string

      add :wc_mch, :string

      add :wc_pct_util, :decimal

      add :wc_pct_eff, :decimal

      add :wc__qad02, :decimal

      add :wc_user1, :string

      add :wc_user2, :string

      add :wc_setup_men, :decimal

      add :wc_setup_rte, :decimal

      add :wc_mod_date, :naive_datetime

      add :wc_userid, :string

      add :wc_bdn_surate, :decimal

      add :wc_bdn_supct, :decimal

      add :wc_mch_subdn, :decimal

      add :wc_fsm_type, :string

      add :wc__qadc01, :string

      add :wc__qadc02, :string

      add :wc__qadc03, :string

      add :wc__qade01, :decimal

      add :wc__qade02, :decimal

      add :wc__qadl01, :boolean

      add :wc__chr01, :string

      add :wc__chr02, :string

      add :wc__chr03, :string

      add :wc__dec01, :decimal

      add :wc__dec02, :decimal

      add :wc__log01, :boolean

      add :wc_domain, :string

      add :oid_wc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VEC_MSTR") do
      add :vec_category, :string

      add :vec_active_flag, :boolean

      add :vec_name, :string

      add :vec_desc, :string

      add :vec_max_points, :integer

      add :vec_threshold_points, :integer

      add :vec_comp_method, :string

      add :vec_pp_factor, :integer

      add :vec_pp_counter, :boolean

      add :vec_discrete_type, :boolean

      add :vec_table_lookup_flag, :boolean

      add :vec_mod_userid, :string

      add :vec_mod_date, :naive_datetime

      add :vec_user1, :string

      add :vec_user2, :string

      add :vec_user3, :string

      add :vec_user4, :string

      add :vec__qadc01, :string

      add :vec__qadc02, :string

      add :vec__qadc03, :string

      add :vec__qadc04, :string

      add :vec__qadd01, :decimal

      add :vec__qadd02, :decimal

      add :vec__qadl01, :boolean

      add :vec__qadl02, :boolean

      add :vec__qadt01, :naive_datetime

      add :vec__qadt02, :naive_datetime

      add :vec__qadi01, :integer

      add :vec__qadi02, :integer

      add :vec_domain, :string

      add :oid_vec_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TOTD_DET") do
      add :totd_terms_code, :string

      add :totd_lc_charge, :string

      add :totd_responsibility, :string

      add :totd_mod_userid, :string

      add :totd_mod_date, :naive_datetime

      add :totd_user1, :string

      add :totd_user2, :string

      add :totd__qadc01, :string

      add :totd__qadc02, :string

      add :totd_domain, :string

      add :oid_totd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SYP_MSTR") do
      add :syp_profl_id, :string

      add :syp_profl_desc, :string

      add :syp_dbname, :string

      add :syp_tblname, :string

      add :syp_publ_proc, :string

      add :syp_exp_dump, :boolean

      add :syp_exp_add, :boolean

      add :syp_add_as_chg, :boolean

      add :syp_exp_del, :boolean

      add :syp_del_as_chg, :boolean

      add :syp_exp_chg, :boolean

      add :syp_flt_crit, :string

      add :syp_mod_userid, :string

      add :syp_mod_date, :naive_datetime

      add :syp_user1, :string

      add :syp_user2, :string

      add :syp__chr01, :string

      add :syp__chr02, :string

      add :syp__dec01, :decimal

      add :syp__dec02, :decimal

      add :syp__int01, :integer

      add :syp__int02, :integer

      add :syp__log01, :boolean

      add :syp__log02, :boolean

      add :syp__dte01, :naive_datetime

      add :syp__dte02, :naive_datetime

      add :syp__qadc01, :string

      add :syp__qadc02, :string

      add :syp__qadc03, :string

      add :syp__qadc04, :string

      add :syp__qadd01, :decimal

      add :syp__qadd02, :decimal

      add :syp__qadi01, :integer

      add :syp__qadi02, :integer

      add :syp__qadl01, :boolean

      add :syp__qadl02, :boolean

      add :syp__qadt01, :naive_datetime

      add :syp__qadt02, :naive_datetime

      add :syp_exp_rowid_only, :boolean

      add :oid_syp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_STTQ_MSTR") do
      add :sttq_status_code, :string

      add :sttq_desc, :string

      add :sttq_measurement_type, :integer

      add :sttq__qadc01, :string

      add :sttq__qadc02, :string

      add :sttq_mod_userid, :string

      add :sttq_mod_date, :naive_datetime

      add :sttq_user1, :string

      add :sttq_user2, :string

      add :sttq_domain, :string

      add :oid_sttq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_WCR_ROUTE") do
      add :wcr_wkctr, :string

      add :wcr_part, :string

      add :wcr_op, :integer

      add :wcr_rate, :integer

      add :wcr_mch, :string

      add :wcr_user1, :string

      add :wcr_user2, :string

      add :wcr__qadc01, :string

      add :wcr_domain, :string

      add :oid_wcr_route, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VT_MSTR") do
      add :vt_class, :string

      add :vt_start, :naive_datetime

      add :vt_end, :naive_datetime

      add :vt_tax_pct, :decimal

      add :vt_ap_acct, :string

      add :vt_ap_cc, :string

      add :vt_ar_acct, :string

      add :vt_ar_cc, :string

      add :vt_project, :string

      add :vt_user1, :string

      add :vt_user2, :string

      add :vt_desc, :string

      add :vt__qadc01, :string

      add :oid_vt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VTC_CTRL") do
      add :vtc_vt_class, :string

      add :vtc_disc, :boolean

      add :vtc_user1, :string

      add :vtc_user2, :string

      add :vtc_index1, :integer

      add :vtc_round, :string

      add :vtc_pmt_disc, :boolean

      add :vtc_val_reg, :boolean

      add :vtc__qadc01, :string

      add :oid_vtc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VP_MSTR") do
      add :vp_part, :string

      add :vp_vend, :string

      add :vp_vend_part, :string

      add :vp_um, :string

      add :vp_vend_lead, :integer

      add :vp_q_price, :decimal

      add :vp_q_date, :naive_datetime

      add :vp_q_qty, :decimal

      add :vp_mfgr, :string

      add :vp_mfgr_part, :string

      add :vp_comment, :string

      add :vp_pr_list, :string

      add :vp_user1, :string

      add :vp_user2, :string

      add :vp_curr, :string

      add :vp_bkage_amt, :decimal

      add :vp_duty_amt, :decimal

      add :vp_duty_type, :string

      add :vp_frt_amt, :decimal

      add :vp_sch_pct, :decimal

      add :vp_appr_date, :naive_datetime

      add :vp__chr01, :string

      add :vp__chr02, :string

      add :vp__chr03, :string

      add :vp__chr04, :string

      add :vp__chr05, :string

      add :vp__dte01, :naive_datetime

      add :vp__dte02, :naive_datetime

      add :vp__dec01, :decimal

      add :vp__dec02, :decimal

      add :vp__log01, :boolean

      add :vp_mod_date, :naive_datetime

      add :vp_userid, :string

      add :vp_pkg_code, :string

      add :vp_ins_rqd, :boolean

      add :vp_rcpt_stat, :string

      add :vp_tp_use_pct, :boolean

      add :vp_tp_pct, :decimal

      add :vp_domain, :string

      add :oid_vp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VESD_DET") do
      add :vesd_vendor, :string

      add :vesd_vendor_source, :string

      add :vesd_category, :string

      add :vesd_ves_from_date, :naive_datetime

      add :vesd_ves_to_date, :naive_datetime

      add :vesd_rec_type, :string

      add :vesd_part, :string

      add :vesd_type, :string

      add :vesd_sub_type, :string

      add :vesd_tran_id, :integer

      add :vesd_event, :string

      add :vesd_weight_code, :string

      add :vesd_event_qty, :decimal

      add :vesd_tran_date, :naive_datetime

      add :vesd_mod_userid, :string

      add :vesd_mod_date, :naive_datetime

      add :vesd_user1, :string

      add :vesd_user2, :string

      add :vesd_user3, :string

      add :vesd_user4, :string

      add :vesd__qadc01, :string

      add :vesd__qadc02, :string

      add :vesd__qadc03, :string

      add :vesd__qadc04, :string

      add :vesd__qadd01, :decimal

      add :vesd__qadd02, :decimal

      add :vesd__qadl01, :boolean

      add :vesd__qadl02, :boolean

      add :vesd__qadt01, :naive_datetime

      add :vesd__qadt02, :naive_datetime

      add :vesd__qadi01, :integer

      add :vesd__qadi02, :integer

      add :vesd_site, :string

      add :vesd_domain, :string

      add :oid_vesd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VPH_HIST") do
      add :vph_ref, :string

      add :vph__qadc02, :string

      add :vph__qadi01, :integer

      add :vph_nbr, :string

      add :vph_curr_amt, :decimal

      add :vph_inv_cost, :decimal

      add :vph_inv_qty, :decimal

      add :vph_inv_date, :naive_datetime

      add :vph_user1, :string

      add :vph_user2, :string

      add :vph_avg_post, :string

      add :vph_acct, :string

      add :vph_cc, :string

      add :vph_amt, :decimal

      add :vph_element, :string

      add :vph__qadc01, :string

      add :vph_project, :string

      add :vph_costadj_acct, :string

      add :vph_costadj_sub, :string

      add :vph_costadj_cc, :string

      add :vph_dscr_acct, :string

      add :vph_dscr_sub, :string

      add :vph_dscr_cc, :string

      add :vph_sub, :string

      add :vph_adj_inv, :boolean

      add :vph_adj_wip, :boolean

      add :vph_adj_amt, :decimal

      add :vph_dscr_amt, :decimal

      add :vph_cf_adj_amt, :decimal

      add :vph_cf_dscr_amt, :decimal

      add :vph_adj_prv_cst, :decimal

      add :vph_qoh_at_adj, :decimal

      add :vph_pvo_id, :integer

      add :vph_pvod_id_line, :integer

      add :vph_domain, :string

      add :oid_vph_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_UMSG_DET") do
      add :umsg_call_pgm, :string

      add :umsg_site, :string

      add :umsg_addr, :string

      add :umsg_nbr, :integer

      add :umsg_seq, :integer

      add :umsg_level, :integer

      add :umsg_exec_pgm, :string

      add :umsg_lang, :string

      add :umsg_user1, :string

      add :umsg_user2, :string

      add :umsg__qadc01, :string

      add :umsg_domain, :string

      add :oid_umsg_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SUF_MSTR") do
      add :suf_abs_fld_name, :string

      add :suf_fld_name, :string

      add :suf_fld_value, :string

      add :suf_fld_prompt, :boolean

      add :suf_level, :integer

      add :suf_validate, :string

      add :suf_fld_seq, :integer

      add :suf_mod_userid, :string

      add :suf_mod_date, :naive_datetime

      add :suf_userc01, :string

      add :suf_userc02, :string

      add :suf__qadc01, :string

      add :suf__qadc02, :string

      add :suf_domain, :string

      add :oid_suf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHM_MSTR") do
      add :shm_code, :string

      add :shm_src_site, :string

      add :shm_rec_site, :string

      add :shm_start, :naive_datetime

      add :shm_end, :naive_datetime

      add :shm_load_lt, :decimal

      add :shm_transit, :decimal

      add :shm_unld_lt, :decimal

      add :shm_ship_day, :boolean

      add :shm_rec_day, :boolean

      add :shm_cmtindx, :integer

      add :shm_no_units, :integer

      add :shm_user1, :string

      add :shm_user2, :string

      add :shm__qadc01, :string

      add :shm_domain, :string

      add :oid_shm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAP_DET") do
      add :sap_sched_date, :naive_datetime

      add :sap_prefix, :string

      add :sap_nbr, :string

      add :sap_desc, :string

      add :sap_line, :integer

      add :sap_ca_nbr, :string

      add :sap_act_date, :naive_datetime

      add :sap_bom_type, :string

      add :sap_user1, :string

      add :sap_user2, :string

      add :sap_confirmed, :boolean

      add :sap_group, :string

      add :sap_mrp, :boolean

      add :sap_assign, :string

      add :sap_mod_userid, :string

      add :sap_mod_date, :naive_datetime

      add :sap__qadc01, :string

      add :sap__qadc02, :string

      add :sap__qadd01, :naive_datetime

      add :sap__qadd02, :naive_datetime

      add :sap__qadl01, :boolean

      add :sap__qadl02, :boolean

      add :sap__qadi01, :integer

      add :sap__qadi02, :integer

      add :sap_domain, :string

      add :oid_sap_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QQC_CTRL") do
      add :qqc_email_flg, :boolean

      add :qqc_email_userid, :string

      add :qqc_email_notlvl, :string

      add :qqc_ex_map_flg, :boolean

      add :qqc_send_flg, :boolean

      add :qqc_publ_flg, :boolean

      add :qqc_mfgpro_site, :string

      add :qqc_im_map_flg, :boolean

      add :qqc_proc_flg, :boolean

      add :qqc_rcv_flg, :boolean

      add :qqc__qadi03, :integer

      add :qqc_mod_date, :naive_datetime

      add :qqc_mod_userid, :string

      add :qqc_msg_ack_lvl, :string

      add :qqc_msg_clnt_ord, :string

      add :qqc_msg_priority, :string

      add :qqc_msg_routing, :string

      add :qqc_msg_ttl, :string

      add :qqc_pause_sev, :string

      add :qqc_ack_lvl_reqd, :string

      add :qqc_start_proc, :string

      add :qqc_shut_proc, :string

      add :qqc_sys_id, :string

      add :qqc_sys_ver, :string

      add :qqc_timezone, :string

      add :qqc_act, :boolean

      add :qqc_code_pg, :string

      add :qqc_date_form, :string

      add :qqc_num_form, :string

      add :qqc_user1, :string

      add :qqc_user2, :string

      add :qqc__dec01, :decimal

      add :qqc__dec02, :decimal

      add :qqc__int01, :integer

      add :qqc__int02, :integer

      add :qqc__log01, :boolean

      add :qqc__log02, :boolean

      add :qqc__dte01, :naive_datetime

      add :qqc__dte02, :naive_datetime

      add :qqc__qadc01, :string

      add :qqc__qadc02, :string

      add :qqc__qadc03, :string

      add :qqc__qadc04, :string

      add :qqc__qadd01, :decimal

      add :qqc__qadd02, :decimal

      add :qqc__qadi01, :integer

      add :qqc__qadi02, :integer

      add :qqc__qadl01, :boolean

      add :qqc__qadl02, :boolean

      add :qqc__qadt01, :naive_datetime

      add :qqc__qadt02, :naive_datetime

      add :qqc_msg_sync, :string

      add :qqc_msg_secur, :string

      add :qqc_msg_persist, :string

      add :qqc_queue_pub, :string

      add :qqc_mom_cmd, :string

      add :qqc_mom_start, :boolean

      add :qqc_im_arch_dir, :string

      add :qqc_ex_arch_dir, :string

      add :qqc_domain, :string

      add :oid_qqc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTR_DET") do
      add :ptr_part, :string

      add :ptr_site, :string

      add :ptr_routing, :string

      add :ptr_start, :naive_datetime

      add :ptr_end, :naive_datetime

      add :ptr_user1, :string

      add :ptr_user2, :string

      add :ptr_userid, :string

      add :ptr_bom_code, :string

      add :ptr_mod_date, :naive_datetime

      add :ptr_batch, :decimal

      add :ptr_apprdate, :naive_datetime

      add :ptr_appr_id, :string

      add :ptr_cmtindx, :integer

      add :ptr_material, :decimal

      add :ptr_labor, :decimal

      add :ptr_burden, :decimal

      add :ptr_subcontract, :decimal

      add :ptr_overhead, :decimal

      add :ptr_total_cost, :decimal

      add :ptr__qadc01, :string

      add :ptr_domain, :string

      add :oid_ptr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VOD_DET") do
      add :vod_ref, :string

      add :vod_acct, :string

      add :vod_cc, :string

      add :vod_project, :string

      add :vod_desc, :string

      add :vod_amt, :decimal

      add :vod_ln, :integer

      add :vod_type, :string

      add :vod_user1, :string

      add :vod_user2, :string

      add :vod_entity, :string

      add :vod_tax_at, :string

      add :vod_tax, :string

      add :vod_tax_usage, :string

      add :vod_taxc, :string

      add :vod_exp_acct, :string

      add :vod_exp_cc, :string

      add :vod__qadc01, :string

      add :vod_taxable, :boolean

      add :vod_tax_env, :string

      add :vod_tax_in, :boolean

      add :vod_dy_code, :string

      add :vod_dy_num, :string

      add :vod_base_amt, :decimal

      add :vod_sub, :string

      add :vod_exp_sub, :string

      add :vod_pjs_line, :integer

      add :vod_domain, :string

      add :oid_vod_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_VER_MSTR") do
      add :ver_vendor, :string

      add :ver_vendor_source, :string

      add :ver_site, :string

      add :ver_part, :string

      add :ver_comm_code, :string

      add :ver_active_flag, :boolean

      add :ver_start, :naive_datetime

      add :ver_end, :naive_datetime

      add :ver_asn_leadtime, :string

      add :ver_days_early, :integer

      add :ver_days_late, :integer

      add :ver_use_shippct, :boolean

      add :ver_overship_pct, :decimal

      add :ver_undership_pct, :decimal

      add :ver_use_shipqty, :boolean

      add :ver_overship_qty, :integer

      add :ver_undership_qty, :integer

      add :ver_use_shippct_cost, :boolean

      add :ver_overship_pct_cost, :decimal

      add :ver_use_shipqty_cost, :boolean

      add :ver_overship_qty_cost, :decimal

      add :ver_contact, :string

      add :ver_email_address, :string

      add :ver_mod_userid, :string

      add :ver_mod_date, :naive_datetime

      add :ver_user1, :string

      add :ver_user2, :string

      add :ver_user3, :string

      add :ver_user4, :string

      add :ver__qadc01, :string

      add :ver__qadc02, :string

      add :ver__qadc03, :string

      add :ver__qadc04, :string

      add :ver__qadd01, :decimal

      add :ver__qadd02, :decimal

      add :ver__qadl01, :boolean

      add :ver__qadl02, :boolean

      add :ver__qadt02, :naive_datetime

      add :ver__qadt01, :naive_datetime

      add :ver__qadi01, :integer

      add :ver__qadi02, :integer

      add :ver_domain, :string

      add :oid_ver_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXC_CTRL") do
      add :txc_index1, :integer

      add :txc_ctry_code, :string

      add :txc_round, :string

      add :txc_inv_hist, :boolean

      add :txc_edit_hist, :boolean

      add :txc_method, :string

      add :txc_by_line, :boolean

      add :txc_inv_disc, :boolean

      add :txc_pmt_disc, :boolean

      add :txc_update_tax, :boolean

      add :txc_tax_code, :string

      add :txc_user1, :string

      add :txc_user2, :string

      add :txc__chr01, :string

      add :txc__chr02, :string

      add :txc__dec01, :decimal

      add :txc__dec02, :decimal

      add :txc__dte01, :naive_datetime

      add :txc__log01, :boolean

      add :txc__qad01, :string

      add :txc__qad02, :string

      add :txc__qad03, :boolean

      add :txc__qad04, :decimal

      add :txc__qad05, :naive_datetime

      add :txc_rcpt_tax_point, :boolean

      add :txc_val_vat_reg, :boolean

      add :txc_prt_vat_reg, :boolean

      add :txc_tax_zone, :string

      add :txc_tax_env, :string

      add :txc_detrp, :boolean

      add :txc_usage_tax_point, :boolean

      add :txc_domain, :string

      add :oid_txc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TRQ_MSTR") do
      add :trq_id, :integer

      add :trq_doc_type, :string

      add :trq_doc_ref, :string

      add :trq_add_ref, :string

      add :trq_msg_type, :string

      add :trq_mod_userid, :string

      add :trq_mod_date, :naive_datetime

      add :trq_user1, :string

      add :trq_user2, :string

      add :trq__qadc01, :string

      add :trq_domain, :string

      add :oid_trq_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SWC_DET") do
      add :swc_sim, :string

      add :swc_wkctr, :string

      add :swc_mch, :string

      add :swc_element, :string

      add :swc_set_rate, :decimal

      add :swc_run_rate, :decimal

      add :swc_cat, :string

      add :swc_user1, :string

      add :swc_user2, :string

      add :swc_bdn_pct, :decimal

      add :swc_mch_wkctr, :decimal

      add :swc_mch_op, :integer

      add :swc_men_mch, :decimal

      add :swc_lbr_rate, :decimal

      add :swc_bdn_rate, :decimal

      add :swc_mch_bdn, :decimal

      add :swc_pct_util, :decimal

      add :swc_pct_eff, :decimal

      add :swc_setup_men, :decimal

      add :swc_setup_rte, :decimal

      add :swc_bdn_surate, :decimal

      add :swc_bdn_supct, :decimal

      add :swc_mch_subdn, :decimal

      add :swc_mod_date, :naive_datetime

      add :swc_userid, :string

      add :swc__qadc01, :string

      add :swc_domain, :string

      add :oid_swc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SR_WKFL") do
      add :sr_userid, :string

      add :sr_lineid, :string

      add :sr_loc, :string

      add :sr_lotser, :string

      add :sr_qty, :decimal

      add :sr_assay, :decimal

      add :sr_expire, :naive_datetime

      add :sr_site, :string

      add :sr_user1, :string

      add :sr_user2, :string

      add :sr_ref, :string

      add :sr_rev, :string

      add :sr_vend_lot, :string

      add :sr_to_loc, :string

      add :sr_to_site, :string

      add :sr_status, :string

      add :sr__qadc01, :string

      add :sr_domain, :string

      add :oid_sr_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USR_MSTR") do
      add :usr_userid, :string

      add :usr_lang, :string

      add :usr_user1, :string

      add :usr_user2, :string

      add :usr_site, :string

      add :usr__qadc05, :string

      add :usr_passwd, :string

      add :usr_name, :string

      add :usr_last_date, :naive_datetime

      add :usr__qad01, :string

      add :usr__qad02, :string

      add :usr_restrict, :boolean

      add :usr__qadc03, :string

      add :usr__qadl03, :boolean

      add :usr_addr, :string

      add :usr__qadc02, :string

      add :usr__qadi02, :integer

      add :usr__qadc01, :string

      add :usr__qadl01, :boolean

      add :usr__qadl02, :boolean

      add :usr__qadi01, :integer

      add :usr__qadc04, :string

      add :usr_mail_address, :string

      add :usr_type, :string

      add :usr_timezone, :string

      add :usr_access_type, :string

      add :usr_access_loc, :string

      add :usr_ctry_code, :string

      add :usr_variant_code, :string

      add :usr_failed_attempts, :integer

      add :usr_force_change, :boolean

      add :usr_logon_date, :naive_datetime

      add :usr_active, :boolean

      add :usr_active_by, :string

      add :usr_active_reason, :string

      add :usr_active_date, :naive_datetime

      add :usr_logon_timezone, :string

      add :usr_remark, :string

      add :usr_logon_time, :integer

      add :oid_usr_mstr, :decimal

      add :usr_tzdb, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TRL_MSTR") do
      add :trl_code, :string

      add :trl_desc, :string

      add :trl_acct, :string

      add :trl_cc, :string

      add :trl_project, :string

      add :trl_taxable, :boolean

      add :trl_taxc, :string

      add :trl_fst, :boolean

      add :trl_pst, :boolean

      add :trl_user1, :string

      add :trl_user2, :string

      add :trl__qadc01, :string

      add :trl_sub, :string

      add :trl_domain, :string

      add :oid_trl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SM_MSTR") do
      add :sm_part, :string

      add :sm_sup_site, :string

      add :sm_mktg_site, :string

      add :sm_start, :naive_datetime

      add :sm_end, :naive_datetime

      add :sm_pct, :decimal

      add :sm_trans, :string

      add :sm_lead, :decimal

      add :sm_user1, :string

      add :sm_user2, :string

      add :sm_type, :string

      add :sm__qadc01, :string

      add :sm_domain, :string

      add :oid_sm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCH_MSTR") do
      add :sch_type, :integer

      add :sch_nbr, :string

      add :sch_line, :integer

      add :sch_rlse_id, :string

      add :sch_cr_date, :naive_datetime

      add :sch_cr_time, :integer

      add :sch_ship, :string

      add :sch_sd_pat, :string

      add :sch_sd_time, :string

      add :sch_raw_qty, :decimal

      add :sch_fab_qty, :decimal

      add :sch_raw_strt, :naive_datetime

      add :sch_raw_end, :naive_datetime

      add :sch_fab_strt, :naive_datetime

      add :sch_fab_end, :naive_datetime

      add :sch_pcr_qty, :decimal

      add :sch_pcs_date, :naive_datetime

      add :sch_cmtindx, :integer

      add :sch__chr01, :string

      add :sch__chr02, :string

      add :sch__chr03, :string

      add :sch__chr04, :string

      add :sch__chr05, :string

      add :sch__chr06, :string

      add :sch__chr07, :string

      add :sch__chr08, :string

      add :sch__chr09, :string

      add :sch__chr10, :string

      add :sch__dec01, :decimal

      add :sch__dec02, :decimal

      add :sch__dec03, :decimal

      add :sch__dec04, :decimal

      add :sch__dec05, :decimal

      add :sch__dec06, :decimal

      add :sch__dec07, :decimal

      add :sch__dec08, :decimal

      add :sch__dec09, :decimal

      add :sch__dec10, :decimal

      add :sch__dte01, :naive_datetime

      add :sch__dte02, :naive_datetime

      add :sch__log01, :boolean

      add :sch__log02, :boolean

      add :sch_cumulative, :boolean

      add :sch_user1, :string

      add :sch_user2, :string

      add :sch_lr_asn, :string

      add :sch_lr_date, :naive_datetime

      add :sch_lr_qty, :decimal

      add :sch_lr_cum_qty, :decimal

      add :sch_eff_start, :naive_datetime

      add :sch_eff_end, :naive_datetime

      add :sch_pdr_qty, :decimal

      add :sch_lr_time, :string

      add :sch_from_pid, :string

      add :sch_from_sid, :string

      add :sch_sd_dates, :boolean

      add :sch_prp_ext, :string

      add :sch_prp_int, :string

      add :sch_domain, :string

      add :oid_sch_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQCD_DET") do
      add :rqcd_category, :string

      add :rqcd_acct_from, :string

      add :rqcd_acct_to, :string

      add :rqcd__chr01, :string

      add :rqcd__chr02, :string

      add :rqcd__chr03, :string

      add :rqcd__chr04, :string

      add :rqcd__qadc01, :string

      add :rqcd__qadc02, :string

      add :rqcd__qadc03, :string

      add :rqcd__qadc04, :string

      add :rqcd_sub_from, :string

      add :rqcd_sub_to, :string

      add :rqcd_domain, :string

      add :oid_rqcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_USG_DET") do
      add :usg_product, :string

      add :usg_exec, :string

      add :usg_count, :integer

      add :usg_userid, :string

      add :usg_date, :naive_datetime

      add :usg_clear_date, :naive_datetime

      add :usg_user1, :string

      add :usg_user2, :string

      add :usg__qadc01, :string

      add :usg__qadc02, :string

      add :usg__qadd01, :decimal

      add :usg__qadt01, :naive_datetime

      add :oid_usg_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SYPD_DET") do
      add :sypd_profl_id, :string

      add :sypd_fldname, :string

      add :sypd_seq, :integer

      add :sypd_reqd_add, :boolean

      add :sypd_reqd_chgdel, :boolean

      add :sypd_mod_userid, :string

      add :sypd_mod_date, :naive_datetime

      add :sypd_user1, :string

      add :sypd_user2, :string

      add :sypd__chr01, :string

      add :sypd__chr02, :string

      add :sypd__dec01, :decimal

      add :sypd__dec02, :decimal

      add :sypd__int01, :integer

      add :sypd__int02, :integer

      add :sypd__log01, :boolean

      add :sypd__log02, :boolean

      add :sypd__dte01, :naive_datetime

      add :sypd__dte02, :naive_datetime

      add :sypd__qadc01, :string

      add :sypd__qadc02, :string

      add :sypd__qadc03, :string

      add :sypd__qadc04, :string

      add :sypd__qadd01, :decimal

      add :sypd__qadd02, :decimal

      add :sypd__qadi01, :integer

      add :sypd__qadi02, :integer

      add :sypd__qadl01, :boolean

      add :sypd__qadl02, :boolean

      add :sypd__qadt01, :naive_datetime

      add :sypd__qadt02, :naive_datetime

      add :sypd_prereq_add, :boolean

      add :oid_sypd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHP_HIST") do
      add :shp_nbr, :string

      add :shp_line, :integer

      add :shp_shipfrom, :string

      add :shp_part, :string

      add :shp_cust_part, :string

      add :shp_open_qty, :decimal

      add :shp_ext_price, :decimal

      add :shp_due_date, :naive_datetime

      add :shp_req_date, :naive_datetime

      add :shp_perf_date, :naive_datetime

      add :shp_ship_date, :naive_datetime

      add :shp_cust, :string

      add :shp_ship_qty, :decimal

      add :shp_ship_price, :decimal

      add :shp_abs_id, :string

      add :shp_include, :boolean

      add :shp_tran_id, :integer

      add :shp_mod_date, :naive_datetime

      add :shp_mod_userid, :string

      add :shp_shipto, :string

      add :shp_ship_time, :string

      add :shp_rel_id, :string

      add :shp_cmtindx, :integer

      add :shp_order_category, :string

      add :shp_customer_source, :string

      add :shp_ship_um, :string

      add :shp_ship_um_conv, :decimal

      add :shp_currency, :string

      add :shp_ord_um, :string

      add :shp_ord_um_conv, :decimal

      add :shp_sched_time, :string

      add :shp_do_req, :string

      add :shp__qadc01, :string

      add :shp__qadc02, :string

      add :shp_user1, :string

      add :shp_user2, :string

      add :shp_qty_pct, :decimal

      add :shp_domain, :string

      add :oid_shp_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SCX_REF") do
      add :scx_type, :integer

      add :scx_shipfrom, :string

      add :scx_shipto, :string

      add :scx_part, :string

      add :scx_po, :string

      add :scx_order, :string

      add :scx_line, :integer

      add :scx_qkey, :string

      add :scx_user1, :string

      add :scx_user2, :string

      add :scx__qadc01, :string

      add :scx_modelyr, :string

      add :scx_custref, :string

      add :scx_domain, :string

      add :oid_scx_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RBM_MSTR") do
      add :rbm_ar_nbr, :string

      add :rbm_status, :string

      add :rbm_rsn, :string

      add :rbm_newprice, :decimal

      add :rbm_eff, :naive_datetime

      add :rbm_auth, :string

      add :rbm_cust, :string

      add :rbm_cmtindx, :integer

      add :rbm_user1, :string

      add :rbm_user2, :string

      add :rbm__qadc01, :string

      add :rbm_domain, :string

      add :oid_rbm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TXED_DET") do
      add :txed_tax_env, :string

      add :txed_tax_type, :string

      add :txed_seq, :integer

      add :txed_round, :string

      add :txed_user1, :string

      add :txed_user2, :string

      add :txed__log01, :boolean

      add :txed__qad01, :string

      add :txed__qad02, :string

      add :txed__qad03, :boolean

      add :txed_domain, :string

      add :oid_txed_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_TRCS_DET") do
      add :trcs_mtl_std, :decimal

      add :trcs_lbr_std, :decimal

      add :trcs_bdn_std, :decimal

      add :trcs_price, :decimal

      add :trcs_trnbr, :integer

      add :trcs_sub_std, :decimal

      add :trcs_userid, :string

      add :trcs_user1, :string

      add :trcs_user2, :string

      add :trcs_curr, :string

      add :trcs_ex_rate, :decimal

      add :trcs_ovh_std, :decimal

      add :trcs__qad01, :string

      add :trcs__qad02, :string

      add :trcs__qad03, :string

      add :trcs__qad07, :naive_datetime

      add :trcs__qad08, :naive_datetime

      add :trcs__qad09, :naive_datetime

      add :trcs__qad04, :decimal

      add :trcs__qad05, :decimal

      add :trcs__qad06, :decimal

      add :trcs__qad10, :boolean

      add :trcs_set, :string

      add :trcs_domain, :string

      add :oid_trcs_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SUFD_DET") do
      add :sufd_shipfrom, :string

      add :sufd_shipto, :string

      add :sufd_abs_fld_name, :string

      add :sufd_fld_name, :string

      add :sufd_fld_value, :string

      add :sufd_fld_prompt, :boolean

      add :sufd_level, :integer

      add :sufd_validate, :string

      add :sufd_fld_seq, :integer

      add :sufd_mod_userid, :string

      add :sufd_mod_date, :naive_datetime

      add :sufd_userc01, :string

      add :sufd_userc02, :string

      add :sufd__qadc01, :string

      add :sufd__qadc02, :string

      add :sufd_domain, :string

      add :oid_sufd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SEOC_CTRL") do
      add :seoc_bo_advice, :integer

      add :seoc_dnote, :integer

      add :seoc_immed_ship, :boolean

      add :seoc__chr01, :string

      add :seoc__chr02, :string

      add :seoc__chr03, :string

      add :seoc__chr04, :string

      add :seoc__chr05, :string

      add :seoc__dec01, :decimal

      add :seoc__dec02, :decimal

      add :seoc__dte01, :naive_datetime

      add :seoc__dte02, :naive_datetime

      add :seoc__log01, :boolean

      add :seoc__log02, :boolean

      add :seoc_index1, :integer

      add :seoc_hcmmts, :boolean

      add :seoc_lcmmts, :boolean

      add :seoc_confirm, :boolean

      add :seoc_kit_nbr, :integer

      add :seoc_det_all, :boolean

      add :seoc_all_days, :integer

      add :seoc_ln_fmt, :boolean

      add :seoc_so_hist, :boolean

      add :seoc_kit_auto, :boolean

      add :seoc__qadl02, :boolean

      add :seoc_req, :boolean

      add :seoc_shp_lead, :integer

      add :seoc_so, :integer

      add :seoc_so_pre, :string

      add :seoc_consume, :boolean

      add :seoc_ship_to, :boolean

      add :seoc__qadd01, :decimal

      add :seoc_user1, :string

      add :seoc_user2, :string

      add :seoc_mod_date, :naive_datetime

      add :seoc_mod_userid, :string

      add :seoc_kit_pre, :string

      add :seoc__qadc02, :string

      add :seoc__qadl01, :boolean

      add :seoc_int_cust, :string

      add :seoc__qadi01, :integer

      add :seoc_ex_ratetype, :string

      add :seoc__qadc03, :string

      add :seoc__qadd02, :decimal

      add :seoc__qadi02, :integer

      add :seoc__qadt01, :naive_datetime

      add :seoc__qadt02, :naive_datetime

      add :seoc_domain, :string

      add :oid_seoc_ctrl, :decimal

      add :seoc_consume_shipped, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RPC_CTRL") do
      add :rpc__qadi01, :integer

      add :rpc_nbr, :integer

      add :rpc_nbr_pre, :string

      add :rpc_sch_bck, :integer

      add :rpc_sch_fwd, :integer

      add :rpc_wk_start, :integer

      add :rpc_user1, :string

      add :rpc_user2, :string

      add :rpc_eff_days, :integer

      add :rpc_eff_dflt, :string

      add :rpc_inc_yld, :boolean

      add :rpc_using_new, :boolean

      add :rpc_wxfer_acct, :string

      add :rpc_wxfer_cc, :string

      add :rpc_xfer_wip, :boolean

      add :rpc__qadc01, :string

      add :rpc_wxfer_sub, :string

      add :rpc_domain, :string

      add :oid_rpc_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QPS_DET") do
      add :qps_routing, :string

      add :qps_op, :integer

      add :qps_part, :string

      add :qps_user1, :string

      add :qps_qty, :decimal

      add :qps_user2, :string

      add :qps__chr01, :string

      add :qps__chr03, :string

      add :qps__dec01, :decimal

      add :qps__log01, :boolean

      add :qps__chr04, :string

      add :qps__chr05, :string

      add :qps__dec02, :decimal

      add :qps__dec03, :decimal

      add :qps_domain, :string

      add :oid_qps_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SYPS_DET") do
      add :syps_profl_id, :string

      add :syps_app_id, :string

      add :syps_doc_std, :string

      add :syps_doc_typ, :string

      add :syps_doc_rev, :string

      add :syps_tradptr_id, :string

      add :syps_trig_updt, :boolean

      add :syps_im_doc, :boolean

      add :syps_mod_userid, :string

      add :syps_mod_date, :naive_datetime

      add :syps_user1, :string

      add :syps_user2, :string

      add :syps__chr01, :string

      add :syps__chr02, :string

      add :syps__dec01, :decimal

      add :syps__dec02, :decimal

      add :syps__int01, :integer

      add :syps__int02, :integer

      add :syps__log01, :boolean

      add :syps__log02, :boolean

      add :syps__dte01, :naive_datetime

      add :syps__dte02, :naive_datetime

      add :syps__qadc01, :string

      add :syps__qadc02, :string

      add :syps__qadc03, :string

      add :syps__qadc04, :string

      add :syps__qadd01, :decimal

      add :syps__qadd02, :decimal

      add :syps__qadi01, :integer

      add :syps__qadi02, :integer

      add :syps__qadl01, :boolean

      add :syps__qadl02, :boolean

      add :syps__qadt01, :naive_datetime

      add :syps__qadt02, :naive_datetime

      add :oid_syps_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SHV_MSTR") do
      add :shv_mode_transp, :string

      add :shv_name, :string

      add :shv_port_mandatory, :boolean

      add :shv_shipvia, :string

      add :shv_mod_date, :naive_datetime

      add :shv_mod_userid, :string

      add :shv_user1, :string

      add :shv_user2, :string

      add :shv__qadc01, :string

      add :shv__qadc02, :string

      add :shv_domain, :string

      add :oid_shv_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SBID_DET") do
      add :sbid_line, :integer

      add :sbid_nbr, :string

      add :sbid_type, :string

      add :sbid_origin, :string

      add :sbid_part, :string

      add :sbid_bill, :string

      add :sbid_cust, :string

      add :sbid_qty, :decimal

      add :sbid_um, :string

      add :sbid_price, :decimal

      add :sbid_amt, :decimal

      add :sbid_ship_id, :string

      add :sbid_authorization, :string

      add :sbid_po, :string

      add :sbid_trnbr, :integer

      add :sbid_inv_nbr, :string

      add :sbid_tax_amt, :decimal

      add :sbid_tax_pct, :decimal

      add :sbid_order, :string

      add :sbid_user6, :string

      add :sbid_user7, :string

      add :sbid_mod_userid, :string

      add :sbid_mod_date, :naive_datetime

      add :sbid_user1, :string

      add :sbid_user2, :string

      add :sbid_user3, :string

      add :sbid_user4, :string

      add :sbid_user5, :string

      add :sbid__qadc01, :string

      add :sbid__qadc02, :string

      add :sbid__qadc03, :string

      add :sbid__qadc04, :string

      add :sbid__qadc05, :string

      add :sbid__qadc06, :string

      add :sbid__qadc07, :string

      add :sbid__qadc08, :string

      add :sbid__qadc09, :string

      add :sbid__qadc10, :string

      add :sbid__qadi01, :integer

      add :sbid__qadi02, :integer

      add :sbid__qadi03, :integer

      add :sbid__qadi04, :integer

      add :sbid__qadi05, :integer

      add :sbid__qadd01, :decimal

      add :sbid__qadd02, :decimal

      add :sbid__qadd03, :decimal

      add :sbid__qadd04, :decimal

      add :sbid__qadd05, :decimal

      add :sbid__qadl01, :boolean

      add :sbid__qadl02, :boolean

      add :sbid__qadl03, :boolean

      add :sbid__qadl04, :boolean

      add :sbid__qadl05, :boolean

      add :sbid__qadt01, :naive_datetime

      add :sbid__qadt02, :naive_datetime

      add :sbid__qadt03, :naive_datetime

      add :sbid__qadt04, :naive_datetime

      add :sbid__qadt05, :naive_datetime

      add :sbid_remarks, :string

      add :sbid_modelyr, :string

      add :sbid_custref, :string

      add :sbid_domain, :string

      add :oid_sbid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSD_DET") do
      add :rsd_rsc, :string

      add :rsd_ref, :string

      add :rsd_cap, :decimal

      add :rsd_start, :naive_datetime

      add :rsd_end, :naive_datetime

      add :rsd_user1, :string

      add :rsd_user2, :string

      add :rsd_site, :string

      add :rsd_shift1, :decimal

      add :rsd_shift2, :decimal

      add :rsd_shift3, :decimal

      add :rsd_shift4, :decimal

      add :rsd__qadc01, :string

      add :rsd_domain, :string

      add :oid_rsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PVO_MSTR") do
      add :pvo_id, :integer

      add :pvo_buyer, :string

      add :pvo_lc_charge, :string

      add :pvo_supplier, :string

      add :pvo_internal_ref_type, :string

      add :pvo_internal_ref, :string

      add :pvo_external_ref, :string

      add :pvo_trans_date, :naive_datetime

      add :pvo_eff_date, :naive_datetime

      add :pvo_cost_update, :boolean

      add :pvo_last_voucher, :string

      add :pvo_ers_status, :integer

      add :pvo_ers_opt, :integer

      add :pvo_ers_price_lst_opt, :integer

      add :pvo_shipfrom, :string

      add :pvo_shipto, :string

      add :pvo_order_type, :string

      add :pvo_order, :string

      add :pvo_line, :integer

      add :pvo_part, :string

      add :pvo_trans_qty, :decimal

      add :pvo_vouchered_qty, :decimal

      add :pvo_curr, :string

      add :pvo_ex_rate, :decimal

      add :pvo_ex_rate2, :decimal

      add :pvo_ex_ratetype, :string

      add :pvo_exru_seq, :integer

      add :pvo_accrued_amt, :decimal

      add :pvo_vouchered_amt, :decimal

      add :pvo_accrual_acct, :string

      add :pvo_accrual_sub, :string

      add :pvo_accrual_cc, :string

      add :pvo_project, :string

      add :pvo_taxable, :boolean

      add :pvo_taxc, :string

      add :pvo_tax_env, :string

      add :pvo_tax_in, :boolean

      add :pvo_tax_usage, :string

      add :pvo_approver, :string

      add :pvo_consignment, :boolean

      add :pvo_mod_userid, :string

      add :pvo_mod_date, :naive_datetime

      add :pvo_user1, :string

      add :pvo_user2, :string

      add :pvo__qadc01, :string

      add :pvo__qadc02, :string

      add :pvo__qadc03, :string

      add :pvo__qadd01, :decimal

      add :pvo_domain, :string

      add :oid_pvo_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PGH_HIST") do
      add :pgh_trnbr, :integer

      add :pgh_status, :string

      add :pgh_time_init, :string

      add :pgh_date, :naive_datetime

      add :pgh_phone, :string

      add :pgh_ca_nbr, :string

      add :pgh_eng_code, :string

      add :pgh_time_paged, :string

      add :pgh_user1, :string

      add :pgh_user2, :string

      add :pgh__qadc01, :string

      add :pgh__qadc02, :string

      add :pgh__qadt01, :naive_datetime

      add :pgh__chr01, :string

      add :pgh__chr02, :string

      add :pgh__dte01, :naive_datetime

      add :pgh__log01, :boolean

      add :pgh__qadl01, :boolean

      add :pgh_domain, :string

      add :oid_pgh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SYPJ_DET") do
      add :sypj_profl_id, :string

      add :sypj_join_profl, :string

      add :sypj_relation, :string

      add :sypj_join_crit, :string

      add :sypj_mod_userid, :string

      add :sypj_mod_date, :naive_datetime

      add :sypj_user1, :string

      add :sypj_user2, :string

      add :sypj__chr01, :string

      add :sypj__chr02, :string

      add :sypj__dec01, :decimal

      add :sypj__dec02, :decimal

      add :sypj__int01, :integer

      add :sypj__int02, :integer

      add :sypj__log01, :boolean

      add :sypj__log02, :boolean

      add :sypj__dte01, :naive_datetime

      add :sypj__dte02, :naive_datetime

      add :sypj__qadc01, :string

      add :sypj__qadc02, :string

      add :sypj__qadc03, :string

      add :sypj__qadc04, :string

      add :sypj__qadd01, :decimal

      add :sypj__qadd02, :decimal

      add :sypj__qadi01, :integer

      add :sypj__qadi02, :integer

      add :sypj__qadl01, :boolean

      add :sypj__qadl02, :boolean

      add :sypj__qadt01, :naive_datetime

      add :sypj__qadt02, :naive_datetime

      add :sypj_reqd_join, :boolean

      add :sypj_publ_joined, :boolean

      add :sypj_seq, :integer

      add :oid_sypj_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SPD_DET") do
      add :spd_addr, :string

      add :spd_prod_ln, :string

      add :spd_part, :string

      add :spd_cust, :string

      add :spd_comm_pct, :decimal

      add :spd_user1, :string

      add :spd_user2, :string

      add :spd__chr01, :string

      add :spd__chr02, :string

      add :spd__chr03, :string

      add :spd__chr04, :string

      add :spd__chr05, :string

      add :spd__dte01, :naive_datetime

      add :spd__dte02, :naive_datetime

      add :spd__dec01, :decimal

      add :spd__dec02, :decimal

      add :spd_mod_date, :naive_datetime

      add :spd_userid, :string

      add :spd_domain, :string

      add :oid_spd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SGID_DET") do
      add :sgid_grp, :string

      add :sgid_inv_mov, :string

      add :sgid_preship_nr_id, :string

      add :sgid_ship_nr_id, :string

      add :sgid_format, :string

      add :sgid__qadc02, :string

      add :sgid_user1, :string

      add :sgid_user2, :string

      add :sgid__qadc01, :string

      add :sgid_default, :boolean

      add :sgid_domain, :string

      add :oid_sgid_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQD_DET") do
      add :rqd_nbr, :string

      add :rqd_line, :integer

      add :rqd_part, :string

      add :rqd_req_qty, :decimal

      add :rqd_um_conv, :decimal

      add :rqd_vend, :string

      add :rqd_ship, :string

      add :rqd_vpart, :string

      add :rqd_taxable, :boolean

      add :rqd_disc_pct, :decimal

      add :rqd_due_date, :naive_datetime

      add :rqd_desc, :string

      add :rqd_type, :string

      add :rqd_max_cost, :decimal

      add :rqd_category, :string

      add :rqd_status, :string

      add :rqd_rev, :string

      add :rqd_loc, :string

      add :rqd_insp_rqd, :boolean

      add :rqd_acct, :string

      add :rqd_cc, :string

      add :rqd_project, :string

      add :rqd_need_date, :naive_datetime

      add :rqd_pur_cost, :decimal

      add :rqd_aprv_stat, :string

      add :rqd_rel_date, :naive_datetime

      add :rqd_site, :string

      add :rqd_um, :string

      add :rqd_cmtindx, :integer

      add :rqd_oot_ponetcst, :decimal

      add :rqd_oot_poum, :string

      add :rqd_oot_rqnetcst, :decimal

      add :rqd_oot_rqum, :string

      add :rqd_pr_list, :string

      add :rqd_pr_list2, :string

      add :rqd_grade, :string

      add :rqd_expire, :naive_datetime

      add :rqd_rctstat, :string

      add :rqd_assay, :decimal

      add :rqd_lot_rcpt, :boolean

      add :rqd__chr01, :string

      add :rqd__chr02, :string

      add :rqd__chr03, :string

      add :rqd__chr04, :string

      add :rqd__qadc01, :string

      add :rqd__qadc02, :string

      add :rqd__qadc03, :string

      add :rqd__qadc04, :string

      add :rqd_open, :boolean

      add :rqd_oot_extra, :string

      add :rqd_domain, :string

      add :oid_rqd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTC_DET") do
      add :ptc_part, :string

      add :ptc_charge, :boolean

      add :ptc_charge_type, :string

      add :ptc_container_desc, :string

      add :ptc_container_type, :string

      add :ptc_container_ref, :string

      add :ptc_mod_userid, :string

      add :ptc_mod_date, :naive_datetime

      add :ptc_userc01, :string

      add :ptc_userc02, :string

      add :ptc__qadc01, :string

      add :ptc__qadc02, :string

      add :ptc_domain, :string

      add :oid_ptc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PI_MSTR") do
      add :pi_list, :string

      add :pi_desc, :string

      add :pi_cs_code, :string

      add :pi_part_code, :string

      add :pi_start, :naive_datetime

      add :pi_expire, :naive_datetime

      add :pi_comb_type, :string

      add :pi_amt_type, :string

      add :pi_break_cat, :string

      add :pi_um, :string

      add :pi_curr, :string

      add :pi_qty_type, :string

      add :pi_manual, :boolean

      add :pi_max_qty, :decimal

      add :pi_cost_set, :string

      add :pi_disc_acct, :string

      add :pi_disc_sub, :string

      add :pi_disc_proj, :string

      add :pi_list_id, :string

      add :pi_confg_disc, :boolean

      add :pi_min_net, :decimal

      add :pi_max_ord, :integer

      add :pi_list_price, :decimal

      add :pi_min_price, :decimal

      add :pi_max_price, :decimal

      add :pi_userid, :string

      add :pi_mod_date, :naive_datetime

      add :pi_cs_type, :string

      add :pi_part_type, :string

      add :pi_disc_cc, :string

      add :pi_terms, :string

      add :pi_cmtindx, :integer

      add :pi_srch_type, :integer

      add :pi_print, :boolean

      add :pi_accr_acct, :string

      add :pi_accr_cc, :string

      add :pi_accr_proj, :string

      add :pi_accr_sub, :string

      add :pi_disc_seq, :decimal

      add :pi_user1, :string

      add :pi_user2, :string

      add :pi__qadc01, :string

      add :pi__qadd01, :decimal

      add :pi__dte01, :naive_datetime

      add :pi__dte02, :naive_datetime

      add :pi__dec01, :decimal

      add :pi__dec02, :decimal

      add :pi__log01, :boolean

      add :pi__chr01, :string

      add :pi__chr02, :string

      add :pi__chr03, :string

      add :pi__chr04, :string

      add :pi__chr05, :string

      add :pi__chr06, :string

      add :pi__chr07, :string

      add :pi__chr08, :string

      add :pi__chr09, :string

      add :pi__chr10, :string

      add :pi_extrec, :boolean

      add :pi_promo1, :string

      add :pi_promo2, :string

      add :pi_promo3, :string

      add :pi_promo4, :string

      add :pi_pig_code, :string

      add :pi_domain, :string

      add :oid_pi_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MPP_DET") do
      add :mpp_program, :string

      add :mpp_sequence, :integer

      add :mpp_parm, :string

      add :mpp_desc, :string

      add :mpp_field_type, :string

      add :mpp_line, :integer

      add :mpp_mod_date, :naive_datetime

      add :mpp_mod_userid, :string

      add :mpp_user1, :string

      add :mpp_user2, :string

      add :mpp__chr01, :string

      add :mpp__log01, :boolean

      add :mpp__qadc01, :string

      add :mpp__qadt01, :naive_datetime

      add :mpp__qade01, :decimal

      add :mpp__qadl01, :boolean

      add :mpp_domain, :string

      add :oid_mpp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_STX_MSTR") do
      add :stx_paid, :boolean

      add :stx_key, :string

      add :stx_tax_code, :string

      add :stx_tran_type, :string

      add :stx_use_st, :boolean

      add :stx_mod_userid, :string

      add :stx_mod_date, :naive_datetime

      add :stx_user1, :string

      add :stx_user2, :string

      add :stx__qadc01, :string

      add :stx__qadc02, :string

      add :stx_domain, :string

      add :oid_stx_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SIX_REF") do
      add :six_trnbr, :integer

      add :six_type, :string

      add :six_order, :string

      add :six_line, :integer

      add :six_site, :string

      add :six_ship, :string

      add :six_cust, :string

      add :six_bill, :string

      add :six_part, :string

      add :six_sopart, :string

      add :six_qty, :decimal

      add :six_um, :string

      add :six_price, :decimal

      add :six_amt, :decimal

      add :six_curr, :string

      add :six_ship_id, :string

      add :six_authorization, :string

      add :six_po, :string

      add :six_shipdt, :naive_datetime

      add :six_inv_nbr, :string

      add :six_qty_paid, :decimal

      add :six_amt_paid, :decimal

      add :six_closed, :boolean

      add :six_mod_userid, :string

      add :six_mod_date, :naive_datetime

      add :six_user1, :string

      add :six_user2, :string

      add :six_user3, :string

      add :six_user4, :string

      add :six_user5, :string

      add :six__qadc01, :string

      add :six__qadc02, :string

      add :six__qadc03, :string

      add :six__qadc04, :string

      add :six__qadc05, :string

      add :six__qadc06, :string

      add :six__qadc07, :string

      add :six__qadc08, :string

      add :six__qadc09, :string

      add :six__qadc10, :string

      add :six__qadi01, :integer

      add :six__qadi02, :integer

      add :six__qadi03, :integer

      add :six__qadi04, :integer

      add :six__qadi05, :integer

      add :six__qadd01, :decimal

      add :six__qadd02, :decimal

      add :six__qadd03, :decimal

      add :six__qadd04, :decimal

      add :six__qadd05, :decimal

      add :six__qadl01, :boolean

      add :six__qadl02, :boolean

      add :six__qadl03, :boolean

      add :six__qadl04, :boolean

      add :six__qadl05, :boolean

      add :six__qadt01, :naive_datetime

      add :six__qadt02, :naive_datetime

      add :six__qadt03, :naive_datetime

      add :six__qadt04, :naive_datetime

      add :six__qadt05, :naive_datetime

      add :six_amt_appld, :decimal

      add :six_modelyr, :string

      add :six_custref, :string

      add :six_domain, :string

      add :oid_six_ref, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSTD_DET") do
      add :rstd_appr_code, :string

      add :rstd_group, :string

      add :rstd_sequence, :integer

      add :rstd_mod_date, :naive_datetime

      add :rstd_userid, :string

      add :rstd_user1, :string

      add :rstd_user2, :string

      add :rstd_notify_nxt, :boolean

      add :rstd_canreroute, :boolean

      add :rstd_svrty_lvl, :integer

      add :rstd__qadc01, :string

      add :rstd_domain, :string

      add :oid_rstd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQJ_MSTR") do
      add :rqj_job, :string

      add :rqj_desc, :string

      add :rqj_start, :naive_datetime

      add :rqj_end, :naive_datetime

      add :rqj__chr01, :string

      add :rqj__chr02, :string

      add :rqj__chr03, :string

      add :rqj__chr04, :string

      add :rqj__qadc01, :string

      add :rqj__qadc02, :string

      add :rqj__qadc03, :string

      add :rqj__qadc04, :string

      add :rqj_domain, :string

      add :oid_rqj_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SOB_DET") do
      add :sob_nbr, :string

      add :sob_line, :integer

      add :sob_feature, :string

      add :sob_part, :string

      add :sob_iss_date, :naive_datetime

      add :sob_qty_req, :decimal

      add :sob_qty_all, :decimal

      add :sob_qty_pick, :decimal

      add :sob_qty_iss, :decimal

      add :sob_tot_std, :decimal

      add :sob_qty_chg, :decimal

      add :sob_bo_chg, :decimal

      add :sob_price, :decimal

      add :sob_loc, :string

      add :sob_serial, :string

      add :sob_cmtindx, :integer

      add :sob_user1, :string

      add :sob_user2, :string

      add :sob_site, :string

      add :sob_parent, :string

      add :sob_scrp_pct, :decimal

      add :sob__qadc01, :string

      add :sob_cfg_type, :string

      add :sob_domain, :string

      add :oid_sob_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SAB_DET") do
      add :sab_nbr, :string

      add :sab_prefix, :string

      add :sab_line, :integer

      add :sab_billed_date, :naive_datetime

      add :sab_billed_time, :string

      add :sab_line_type, :string

      add :sab_eu_nbr, :string

      add :sab_so_nbr, :string

      add :sab_sod_line, :integer

      add :sab_cust, :string

      add :sab_bill_to, :string

      add :sab_amt_type, :string

      add :sab_cycle, :string

      add :sab_desc, :string

      add :sab_end_cover, :naive_datetime

      add :sab_end_date, :naive_datetime

      add :sab_ext_price, :decimal

      add :sab_for, :string

      add :sab_list_pr, :decimal

      add :sab_lstcover, :naive_datetime

      add :sab_sv_code, :string

      add :sab_price, :decimal

      add :sab_qty_chg, :decimal

      add :sab_qty_per, :decimal

      add :sab_ref, :integer

      add :sab_serial, :string

      add :sab_st_cover, :naive_datetime

      add :sab_st_date, :naive_datetime

      add :sab_taxable, :boolean

      add :sab_taxc, :string

      add :sab_tax_env, :string

      add :sab_tax_in, :boolean

      add :sab_tax_usage, :string

      add :sab_line_seq, :integer

      add :sab_curr, :string

      add :sab_ui_line, :integer

      add :sab_user1, :string

      add :sab_user2, :string

      add :sab_userd01, :decimal

      add :sab_useri01, :integer

      add :sab_userl01, :boolean

      add :sab_usert01, :naive_datetime

      add :sab__qadc01, :string

      add :sab__qadd01, :decimal

      add :sab__qadi01, :integer

      add :sab__qadl01, :boolean

      add :sab__qadt01, :naive_datetime

      add :sab_mod_userid, :string

      add :sab_mod_date, :naive_datetime

      add :sab_ex_rate, :decimal

      add :sab_ex_rate2, :decimal

      add :sab_ex_ratetype, :string

      add :sab_exru_seq, :integer

      add :sab__qadc02, :string

      add :sab_domain, :string

      add :oid_sab_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RQC_MSTR") do
      add :rqc_category, :string

      add :rqc_desc, :string

      add :rqc__chr01, :string

      add :rqc__chr02, :string

      add :rqc__chr03, :string

      add :rqc__chr04, :string

      add :rqc__qadc01, :string

      add :rqc__qadc02, :string

      add :rqc__qadc03, :string

      add :rqc__qadc04, :string

      add :rqc_domain, :string

      add :oid_rqc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTV_DET") do
      add :ptv_part, :string

      add :ptv_ctry_exp, :string

      add :ptv_ctry_imp, :string

      add :ptv_stat_value, :decimal

      add :ptv_user1, :string

      add :ptv_user2, :string

      add :ptv__chr01, :string

      add :ptv__dec01, :decimal

      add :ptv__log01, :boolean

      add :ptv__qad01, :string

      add :ptv__qad02, :string

      add :ptv__qad03, :decimal

      add :ptv__qad04, :boolean

      add :ptv_domain, :string

      add :oid_ptv_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PK_DET") do
      add :pk_user, :string

      add :pk_part, :string

      add :pk_qty, :decimal

      add :pk_loc, :string

      add :pk_lot, :string

      add :pk_start, :naive_datetime

      add :pk_end, :naive_datetime

      add :pk_user1, :string

      add :pk_user2, :string

      add :pk_reference, :string

      add :pk__qadc01, :string

      add :pk_domain, :string

      add :oid_pk_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PFC_DET") do
      add :pfc_part, :string

      add :pfc_site, :string

      add :pfc_date, :naive_datetime

      add :pfc_peg_part, :string

      add :pfc_qty, :decimal

      add :pfc_id_num, :integer

      add :pfc_user1, :string

      add :pfc_user2, :string

      add :pfc__qadc01, :string

      add :pfc_domain, :string

      add :oid_pfc_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_SBI_MSTR") do
      add :sbi_nbr, :string

      add :sbi_bill, :string

      add :sbi_xmission, :string

      add :sbi_resp_date, :naive_datetime

      add :sbi_amt, :decimal

      add :sbi_curr, :string

      add :sbi_lines, :integer

      add :sbi_ctrl_amt, :decimal

      add :sbi_check, :string

      add :sbi_mod_userid, :string

      add :sbi_mod_date, :naive_datetime

      add :sbi_user1, :string

      add :sbi_user2, :string

      add :sbi_user3, :string

      add :sbi_user4, :string

      add :sbi_user5, :string

      add :sbi__qadc01, :string

      add :sbi__qadc02, :string

      add :sbi__qadc03, :string

      add :sbi__qadc04, :string

      add :sbi__qadc05, :string

      add :sbi__qadc06, :string

      add :sbi__qadc07, :string

      add :sbi__qadc08, :string

      add :sbi__qadc09, :string

      add :sbi__qadc10, :string

      add :sbi__qadi01, :integer

      add :sbi__qadi02, :integer

      add :sbi__qadi03, :integer

      add :sbi__qadi04, :integer

      add :sbi__qadi05, :integer

      add :sbi__qadd01, :decimal

      add :sbi__qadd02, :decimal

      add :sbi__qadd03, :decimal

      add :sbi__qadd04, :decimal

      add :sbi__qadd05, :decimal

      add :sbi__qadl01, :boolean

      add :sbi__qadl02, :boolean

      add :sbi__qadl03, :boolean

      add :sbi__qadl04, :boolean

      add :sbi__qadl05, :boolean

      add :sbi__qadt01, :naive_datetime

      add :sbi__qadt02, :naive_datetime

      add :sbi__qadt03, :naive_datetime

      add :sbi__qadt04, :naive_datetime

      add :sbi__qadt05, :naive_datetime

      add :sbi_domain, :string

      add :oid_sbi_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTLS_DET") do
      add :ptls_part, :string

      add :ptls_lotser, :string

      add :ptls_assay, :decimal

      add :ptls_cmtindx, :integer

      add :ptls_expire, :naive_datetime

      add :ptls_grade, :string

      add :ptls_status, :string

      add :ptls_user1, :string

      add :ptls_user2, :string

      add :ptls__chr01, :string

      add :ptls__chr02, :string

      add :ptls__chr03, :string

      add :ptls__chr04, :string

      add :ptls__chr05, :string

      add :ptls__dec01, :decimal

      add :ptls__dec02, :decimal

      add :ptls_ref, :string

      add :ptls_domain, :string

      add :oid_ptls_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJD_DET") do
      add :pjd_nbr, :string

      add :pjd_sub_nbr, :integer

      add :pjd_budget_type, :integer

      add :pjd_ca_int_type, :string

      add :pjd_cmtindx, :integer

      add :pjd_comm_pct, :decimal

      add :pjd_cr_terms, :string

      add :pjd_desc, :string

      add :pjd_disc_pct, :decimal

      add :pjd_end_date, :naive_datetime

      add :pjd_end_orig, :naive_datetime

      add :pjd_eng_nbr, :string

      add :pjd_eu_nbr, :string

      add :pjd_global_inv, :boolean

      add :pjd_inv_det, :boolean

      add :pjd_inv_det_pr, :boolean

      add :pjd_inv_lvl, :boolean

      add :pjd_list_pr, :decimal

      add :pjd_loc, :string

      add :pjd_pjt_code, :string

      add :pjd_pr_list, :string

      add :pjd_prepaid, :decimal

      add :pjd_prep_tax, :decimal

      add :pjd_prod_line, :string

      add :pjd_site, :string

      add :pjd_slspsn, :string

      add :pjd_st_date, :naive_datetime

      add :pjd_st_orig, :naive_datetime

      add :pjd_status, :string

      add :pjd_total_price, :decimal

      add :pjd_variation, :boolean

      add :pjd_mod_date, :naive_datetime

      add :pjd_mod_userid, :string

      add :pjd_user1, :string

      add :pjd_user2, :string

      add :pjd__qadc01, :string

      add :pjd__qadc02, :string

      add :pjd__qadd01, :decimal

      add :pjd__qadi01, :integer

      add :pjd__qadl01, :boolean

      add :pjd__qadt01, :naive_datetime

      add :pjd_domain, :string

      add :oid_pjd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PCD_DET") do
      add :pcd_nbr, :string

      add :pcd_line, :integer

      add :pcd_element, :string

      add :pcd_amt, :decimal

      add :pcd_curr, :string

      add :pcd__qad01, :naive_datetime

      add :pcd__qad02, :string

      add :pcd__qad03, :boolean

      add :pcd__qad04, :decimal

      add :pcd__qad05, :decimal

      add :pcd_user1, :string

      add :pcd_user2, :string

      add :pcd_domain, :string

      add :oid_pcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MP_MSTR") do
      add :mp_nbr, :string

      add :mp_desc, :string

      add :mp_expire, :naive_datetime

      add :mp_user1, :string

      add :mp_user2, :string

      add :mp__chr01, :string

      add :mp__chr02, :string

      add :mp__chr03, :string

      add :mp__chr04, :string

      add :mp__chr05, :string

      add :mp__dec01, :decimal

      add :mp__dec02, :decimal

      add :mp_domain, :string

      add :oid_mp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_RSU_MSTR") do
      add :rsu_appr_code, :string

      add :rsu_index, :integer

      add :rsu_doc_nbr, :string

      add :rsu_doc_type, :string

      add :rsu_appr_date, :naive_datetime

      add :rsu_route_date, :naive_datetime

      add :rsu_notify2, :string

      add :rsu_user1, :string

      add :rsu_user2, :string

      add :rsu_notify2_mail, :string

      add :rsu__qadc01, :string

      add :rsu_domain, :string

      add :oid_rsu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QRO_DET") do
      add :qro_routing, :string

      add :qro_op, :integer

      add :qro_desc, :string

      add :qro_wkctr, :string

      add :qro_tool, :string

      add :qro_cmtindx, :integer

      add :qro_mch, :string

      add :qro_user1, :string

      add :qro_user2, :string

      add :qro_mch_op, :integer

      add :qro_queue, :decimal

      add :qro__chr01, :string

      add :qro__chr02, :string

      add :qro__chr03, :string

      add :qro__chr04, :string

      add :qro__chr05, :string

      add :qro__dte01, :naive_datetime

      add :qro__dte02, :naive_datetime

      add :qro__dec01, :decimal

      add :qro__dec02, :decimal

      add :qro__log01, :boolean

      add :qro_domain, :string

      add :oid_qro_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTS_DET") do
      add :pts_part, :string

      add :pts_par, :string

      add :pts_sub_part, :string

      add :pts_qty_per, :decimal

      add :pts_rmks, :string

      add :pts_cmtindx, :integer

      add :pts_user1, :string

      add :pts_user2, :string

      add :pts_userid, :string

      add :pts_mod_date, :naive_datetime

      add :pts__qadc01, :string

      add :pts_domain, :string

      add :oid_pts_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PIGP_DET") do
      add :pigp_amt_type, :string

      add :pigp_code, :string

      add :pigp_div, :string

      add :pigp_expire, :naive_datetime

      add :pigp_include, :boolean

      add :pigp_list_id, :string

      add :pigp_prod_ref, :string

      add :pigp_prod_type, :integer

      add :pigp_start, :naive_datetime

      add :pigp_user1, :string

      add :pigp_user2, :string

      add :pigp__qadc01, :string

      add :pigp__qadc02, :string

      add :pigp__qadc03, :string

      add :pigp__qadd01, :decimal

      add :pigp__qadd02, :decimal

      add :pigp__qadi01, :integer

      add :pigp__qadi02, :integer

      add :pigp__qadl01, :boolean

      add :pigp__qadl02, :boolean

      add :pigp__qadt01, :naive_datetime

      add :pigp__qadt02, :naive_datetime

      add :pigp_curr, :string

      add :pigp_srch_type, :integer

      add :pigp_domain, :string

      add :oid_pigp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OPS_CTRL") do
      add :ops_cover, :decimal

      add :ops_plan, :boolean

      add :ops_move, :boolean

      add :ops__qadi01, :integer

      add :ops_user1, :string

      add :ops_user2, :string

      add :ops_round, :boolean

      add :ops__qadc01, :string

      add :ops_domain, :string

      add :oid_ops_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LNG_MSTR") do
      add :lng_lang, :string

      add :lng_dir, :string

      add :lng_nbr, :integer

      add :lng_desc, :string

      add :lng_user1, :string

      add :lng_user2, :string

      add :lng__qad01, :string

      add :lng__qad02, :string

      add :oid_lng_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_QC_MSTR") do
      add :qc_cmtindx, :integer

      add :qc_due_date, :naive_datetime

      add :qc_insp_loc, :string

      add :qc_inv_stat, :string

      add :qc_lead_time, :decimal

      add :qc_loc, :string

      add :qc_lot, :string

      add :qc_nbr, :string

      add :qc_ord_date, :naive_datetime

      add :qc_part, :string

      add :qc_project, :string

      add :qc_qty_comp, :decimal

      add :qc_qty_ord, :decimal

      add :qc_qty_rjct, :decimal

      add :qc_ref, :string

      add :qc_rel_date, :naive_datetime

      add :qc_rmks, :string

      add :qc_serial, :string

      add :qc_site, :string

      add :qc_status, :string

      add :qc_teststep, :string

      add :qc_type, :string

      add :qc_user1, :string

      add :qc_user2, :string

      add :qc__chr01, :string

      add :qc__chr02, :string

      add :qc__chr03, :string

      add :qc__chr04, :string

      add :qc__chr05, :string

      add :qc__dec01, :decimal

      add :qc__dec02, :decimal

      add :qc__dte01, :naive_datetime

      add :qc__dte02, :naive_datetime

      add :qc__log01, :boolean

      add :qc_autoissue, :boolean

      add :qc_job, :string

      add :qc_domain, :string

      add :oid_qc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTT_DET") do
      add :ptt_part, :string

      add :ptt_tax_type, :string

      add :ptt_taxc, :string

      add :ptt_taxable, :boolean

      add :ptt_user1, :string

      add :ptt_user2, :string

      add :ptt_userid, :string

      add :ptt_mod_date, :naive_datetime

      add :ptt__qadc01, :string

      add :ptt_domain, :string

      add :oid_ptt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_POULD_DET") do
      add :pould_poul_ref_key, :integer

      add :pould_loc, :string

      add :pould_preference, :integer

      add :pould_mod_userid, :string

      add :pould_mod_date, :naive_datetime

      add :pould_user1, :string

      add :pould_user2, :string

      add :pould__qadc01, :string

      add :pould__qadc02, :string

      add :pould_domain, :string

      add :oid_pould_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MU_MSTR") do
      add :mu_union_curr, :string

      add :mu_member_curr, :string

      add :mu_start_date, :naive_datetime

      add :mu_end_date, :naive_datetime

      add :mu_mod_userid, :string

      add :mu_mod_date, :naive_datetime

      add :mu_user1, :string

      add :mu_user2, :string

      add :mu__qadc01, :string

      add :mu__qadl01, :boolean

      add :mu__qadt01, :naive_datetime

      add :mu__qadd01, :decimal

      add :mu_domain, :string

      add :oid_mu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBRS_MSTR") do
      add :knbrs_dispatch_id, :string

      add :knbrs_dispatch_date, :naive_datetime

      add :knbrs_dispatch_time, :integer

      add :knbrs_proc_sess, :integer

      add :knbrs_export_batch, :integer

      add :knbrs_mod_date, :naive_datetime

      add :knbrs_mod_userid, :string

      add :knbrs_user1, :string

      add :knbrs_user2, :string

      add :knbrs__qadc01, :string

      add :knbrs__qadc02, :string

      add :knbrs__qadc03, :string

      add :knbrs__qadc04, :string

      add :knbrs__qadl01, :boolean

      add :knbrs__qadl02, :boolean

      add :knbrs_domain, :string

      add :oid_knbrs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PTA_DET") do
      add :pta_assoc_type, :string

      add :pta_item, :string

      add :pta_um, :string

      add :pta_assoc_item, :string

      add :pta_assoc_um, :string

      add :pta_assoc_qty, :decimal

      add :pta_curr, :string

      add :pta_net_price, :decimal

      add :pta_pri_type, :string

      add :pta_min_ord, :decimal

      add :pta_qty_mult, :decimal

      add :pta_max_qty, :decimal

      add :pta_start, :naive_datetime

      add :pta_expire, :naive_datetime

      add :pta_user1, :string

      add :pta_user2, :string

      add :pta__qadc01, :string

      add :pta__qadc02, :string

      add :pta__qadd01, :decimal

      add :pta__qadd02, :decimal

      add :pta__qadl01, :boolean

      add :pta__dte01, :naive_datetime

      add :pta__dte02, :naive_datetime

      add :pta__dec01, :decimal

      add :pta__dec02, :decimal

      add :pta__log01, :boolean

      add :pta__chr01, :string

      add :pta__chr02, :string

      add :pta__chr03, :string

      add :pta__chr04, :string

      add :pta__chr05, :string

      add :pta__chr06, :string

      add :pta__chr07, :string

      add :pta__chr08, :string

      add :pta__chr09, :string

      add :pta__chr10, :string

      add :pta_cmtindx, :integer

      add :pta_extrec, :boolean

      add :pta_domain, :string

      add :oid_pta_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PLD_DET") do
      add :pld_prodline, :string

      add :pld_site, :string

      add :pld_loc, :string

      add :pld_inv_acct, :string

      add :pld_scrpacct, :string

      add :pld_dscracct, :string

      add :pld_inv_cc, :string

      add :pld_scrp_cc, :string

      add :pld_dscr_cc, :string

      add :pld_user1, :string

      add :pld_user2, :string

      add :pld_userid, :string

      add :pld_mod_date, :naive_datetime

      add :pld_cchg_acc, :string

      add :pld_cchg_cc, :string

      add :pld__qadc01, :string

      add :pld_cchg_sub, :string

      add :pld_dscr_sub, :string

      add :pld_inv_sub, :string

      add :pld_scrp_sub, :string

      add :pld_domain, :string

      add :oid_pld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PFD_DET") do
      add :pfd_part, :string

      add :pfd_site, :string

      add :pfd_warr_cd, :string

      add :pfd_rp_vendor, :string

      add :pfd_pvm_um, :string

      add :pfd_obs_date, :naive_datetime

      add :pfd_pvm_bom, :string

      add :pfd_pvm_route, :string

      add :pfd_rp_route, :string

      add :pfd_rp_bom, :string

      add :pfd_unit_isb, :boolean

      add :pfd_cover, :boolean

      add :pfd_inst_call, :boolean

      add :pfd_tariff, :string

      add :pfd_origin, :string

      add :pfd_sttr, :decimal

      add :pfd_mfg_mtbf, :decimal

      add :pfd_mfg_mttr, :decimal

      add :pfd_fru, :boolean

      add :pfd_ven_warr, :boolean

      add :pfd_svc_group, :string

      add :pfd_mtbf, :decimal

      add :pfd_mttr, :decimal

      add :pfd_isb, :boolean

      add :pfd_pvm_days, :integer

      add :pfd_user1, :string

      add :pfd_user2, :string

      add :pfd_cus_install, :boolean

      add :pfd_life_cycle, :string

      add :pfd_repairable, :boolean

      add :pfd_rp_site, :string

      add :pfd_field_lead, :decimal

      add :pfd_pvm_exceed, :boolean

      add :pfd_pvm_limit, :decimal

      add :pfd_pvm_replace, :boolean

      add :pfd_pvm_saftey, :decimal

      add :pfd_bench_lead, :integer

      add :pfd_trace_active, :boolean

      add :pfd_pm_mrp, :boolean

      add :pfd__qadl01, :boolean

      add :pfd__qadl02, :boolean

      add :pfd__qadc01, :string

      add :pfd__qadc02, :string

      add :pfd__qadi01, :integer

      add :pfd__qadi02, :integer

      add :pfd__qadd01, :naive_datetime

      add :pfd__chr01, :string

      add :pfd__chr02, :string

      add :pfd__log01, :boolean

      add :pfd__log02, :boolean

      add :pfd__int01, :integer

      add :pfd__int02, :integer

      add :pfd__dte01, :naive_datetime

      add :pfd__dte02, :naive_datetime

      add :pfd_mod_userid, :string

      add :pfd_mod_date, :naive_datetime

      add :pfd_ins_bom, :string

      add :pfd_ins_route, :string

      add :pfd_domain, :string

      add :oid_pfd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LOC_MSTR") do
      add :loc_loc, :string

      add :loc__qad01, :boolean

      add :loc_date, :naive_datetime

      add :loc_perm, :boolean

      add :loc__qadc01, :string

      add :loc__qadc02, :string

      add :loc_project, :string

      add :loc_site, :string

      add :loc_status, :string

      add :loc_user1, :string

      add :loc_user2, :string

      add :loc_single, :boolean

      add :loc_type, :string

      add :loc_cap, :decimal

      add :loc_cap_um, :string

      add :loc_desc, :string

      add :loc_phys_addr, :string

      add :loc_xfer_ownership, :boolean

      add :loc_domain, :string

      add :oid_loc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LD_DET") do
      add :ld_loc, :string

      add :ld_part, :string

      add :ld_date, :naive_datetime

      add :ld_qty_oh, :decimal

      add :ld_lot, :string

      add :ld_ref, :string

      add :ld_cnt_date, :naive_datetime

      add :ld_assay, :decimal

      add :ld_expire, :naive_datetime

      add :ld_user1, :string

      add :ld_user2, :string

      add :ld_site, :string

      add :ld_status, :string

      add :ld_qty_all, :decimal

      add :ld_grade, :string

      add :ld_qty_frz, :decimal

      add :ld_date_frz, :naive_datetime

      add :ld_vd_lot, :string

      add :ld_cmtindx, :integer

      add :ld_work, :decimal

      add :ld__chr01, :string

      add :ld__chr02, :string

      add :ld__chr03, :string

      add :ld__chr04, :string

      add :ld__chr05, :string

      add :ld__dte01, :naive_datetime

      add :ld__dte02, :naive_datetime

      add :ld__dec01, :decimal

      add :ld__dec02, :decimal

      add :ld__log01, :boolean

      add :ld_cost, :decimal

      add :ld_rev, :string

      add :ld_cust_consign_qty, :decimal

      add :ld_supp_consign_qty, :decimal

      add :ld_domain, :string

      add :oid_ld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EA_MSTR") do
      add :ea_earn, :string

      add :ea_desc, :string

      add :ea_type, :string

      add :ea_rate, :decimal

      add :ea_fed_yn, :boolean

      add :ea__qad01, :boolean

      add :ea__qad02, :boolean

      add :ea__qad05, :boolean

      add :ea__qad04, :boolean

      add :ea__qad06, :boolean

      add :ea__qad03, :boolean

      add :ea_user1, :string

      add :ea_user2, :string

      add :ea_acc, :string

      add :ea_cc, :string

      add :ea_piece, :boolean

      add :ea_reg_earn, :string

      add :ea_userid, :string

      add :ea_mod_date, :naive_datetime

      add :ea_sub, :string

      add :ea_domain, :string

      add :oid_ea_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PLT_DET") do
      add :plt_prod_line, :string

      add :plt_tax_type, :string

      add :plt_taxc, :string

      add :plt_taxable, :boolean

      add :plt_user1, :string

      add :plt_user2, :string

      add :plt_userid, :string

      add :plt_mod_date, :naive_datetime

      add :plt__qadc01, :string

      add :plt_domain, :string

      add :oid_plt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PJSH_HIST") do
      add :pjsh_trnbr, :integer

      add :pjsh_nbr, :string

      add :pjsh_pjs_line, :integer

      add :pjsh_tr_date, :naive_datetime

      add :pjsh_tr_time, :integer

      add :pjsh_tr_type, :string

      add :pjsh_tr_ind, :string

      add :pjsh_tr_qty, :decimal

      add :pjsh_tr_cost, :decimal

      add :pjsh_amt_inv, :decimal

      add :pjsh_amt_inv_chg, :decimal

      add :pjsh_cost_actual, :decimal

      add :pjsh_cost_act_chg, :decimal

      add :pjsh_cost_iss, :decimal

      add :pjsh_cost_iss_chg, :decimal

      add :pjsh_cost_planned, :decimal

      add :pjsh_cost_pln_chg, :decimal

      add :pjsh_cost_wip, :decimal

      add :pjsh_cost_wip_chg, :decimal

      add :pjsh_qty_actual, :decimal

      add :pjsh_qty_act_chg, :decimal

      add :pjsh_qty_budget, :decimal

      add :pjsh_qty_bg_chg, :decimal

      add :pjsh_qty_inv, :decimal

      add :pjsh_qty_inv_chg, :decimal

      add :pjsh_qty_iss, :decimal

      add :pjsh_qty_iss_chg, :decimal

      add :pjsh_qty_oh, :decimal

      add :pjsh_qty_oh_chg, :decimal

      add :pjsh_qty_planned, :decimal

      add :pjsh_qty_pln_chg, :decimal

      add :pjsh_qty_sel_inv, :decimal

      add :pjsh_qty_sel_chg, :decimal

      add :pjsh_qty_wip, :decimal

      add :pjsh_qty_wip_chg, :decimal

      add :pjsh_povar_amt, :decimal

      add :pjsh_povar_chg, :decimal

      add :pjsh_old_status, :string

      add :pjsh_status, :string

      add :pjsh_rel_nbr, :string

      add :pjsh_userid, :string

      add :pjsh_mod_date, :naive_datetime

      add :pjsh_mod_userid, :string

      add :pjsh_user1, :string

      add :pjsh_user2, :string

      add :pjsh__qadc01, :string

      add :pjsh__qadd01, :decimal

      add :pjsh__qadi01, :integer

      add :pjsh__qadl01, :boolean

      add :pjsh__qadt01, :naive_datetime

      add :pjsh_domain, :string

      add :oid_pjsh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PCLD_DET") do
      add :pcld_group, :string

      add :pcld_id, :string

      add :pcld_dev, :string

      add :pcld_copies, :integer

      add :pcld_user1, :string

      add :pcld_user2, :string

      add :pcld_expire, :naive_datetime

      add :pcld_mod_date, :naive_datetime

      add :pcld_userid, :string

      add :pcld__qadc01, :string

      add :pcld_domain, :string

      add :oid_pcld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LND_DET") do
      add :lnd_line, :string

      add :lnd_site, :string

      add :lnd_part, :string

      add :lnd_rate, :decimal

      add :lnd_start, :naive_datetime

      add :lnd_expire, :naive_datetime

      add :lnd_user1, :string

      add :lnd_user2, :string

      add :lnd_sequence, :decimal

      add :lnd_bom, :string

      add :lnd_prod_um, :string

      add :lnd_setup, :string

      add :lnd_run, :string

      add :lnd_tool, :string

      add :lnd_cmtindx, :integer

      add :lnd_run_size, :integer

      add :lnd_set_size, :integer

      add :lnd__chr01, :string

      add :lnd__chr02, :string

      add :lnd__chr03, :string

      add :lnd__chr04, :string

      add :lnd__chr05, :string

      add :lnd__dec01, :decimal

      add :lnd__dec02, :decimal

      add :lnd__dec03, :decimal

      add :lnd__log01, :boolean

      add :lnd__qadl01, :boolean

      add :lnd_run_seq1, :string

      add :lnd_run_seq2, :string

      add :lnd_domain, :string

      add :oid_lnd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBFD_DET") do
      add :knbfd_keyid, :decimal

      add :knbfd_knb_keyid, :decimal

      add :knbfd_seq, :integer

      add :knbfd_knp_keyid, :decimal

      add :knbfd_mod_date, :naive_datetime

      add :knbfd_mod_userid, :string

      add :knbfd_user1, :string

      add :knbfd_user2, :string

      add :knbfd__qadc01, :string

      add :knbfd__qadc02, :string

      add :knbfd_knbs_keyid, :decimal

      add :knbfd_domain, :string

      add :oid_knbfd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_PCL_MSTR") do
      add :pcl_group, :string

      add :pcl_type, :string

      add :pcl_desc, :string

      add :pcl_user1, :string

      add :pcl_user2, :string

      add :pcl_mod_date, :naive_datetime

      add :pcl_userid, :string

      add :pcl_index, :integer

      add :pcl_bsn_unit, :integer

      add :pcl__qadc01, :string

      add :pcl_domain, :string

      add :oid_pcl_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_MRPP_DET") do
      add :mrpp_demand_mrp_keyid, :integer

      add :mrpp_supply_mrp_keyid, :integer

      add :mrpp_qty_pegged, :decimal

      add :mrpp_demand_due_date, :naive_datetime

      add :mrpp_supply_due_date, :naive_datetime

      add :mrpp_mod_userid, :string

      add :mrpp_mod_date, :naive_datetime

      add :mrpp_user1, :string

      add :mrpp_user2, :string

      add :mrpp__qadc01, :string

      add :mrpp__qadc02, :string

      add :mrpp_domain, :string

      add :oid_mrpp_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LAC_CTRL") do
      add :lac_use_logistics, :boolean

      add :lac__qadi01, :integer

      add :lac_mod_date, :naive_datetime

      add :lac_mod_userid, :string

      add :lac_user1, :string

      add :lac_user2, :string

      add :lac__qadc01, :string

      add :lac__qadc02, :string

      add :lac_soship_nrm_id, :string

      add :lac_doship_nrm_id, :string

      add :lac_blank_suppliers, :boolean

      add :lac_domain, :string

      add :oid_lac_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBISM_DET") do
      add :knbism_keyid, :decimal

      add :knbism_knbi_keyid, :decimal

      add :knbism_knbsm_keyid, :decimal

      add :knbism_working_buffer, :decimal

      add :knbism_max_buf, :decimal

      add :knbism_buf_limit_chg, :naive_datetime

      add :knbism_buf_limit_disp, :string

      add :knbism_buf_method, :string

      add :knbism_buf_modified, :boolean

      add :knbism_critical_limit, :decimal

      add :knbism_warning_limit, :decimal

      add :knbism_daily_demand, :decimal

      add :knbism_demand_method, :string

      add :knbism_demand_modified, :boolean

      add :knbism_demand_pct, :decimal

      add :knbism_var_factor, :decimal

      add :knbism_template_used, :string

      add :knbism_pack_qty, :decimal

      add :knbism_pack_type, :string

      add :knbism_order_point, :decimal

      add :knbism_ss_method, :string

      add :knbism_safety_stock, :decimal

      add :knbism_safety_time, :decimal

      add :knbism_ss_total_qty, :decimal

      add :knbism_peak_period, :integer

      add :knbism_service_level, :decimal

      add :knbism_dest_fax, :string

      add :knbism_dest_fax2, :string

      add :knbism_dest_email, :string

      add :knbism_mod_date, :naive_datetime

      add :knbism_mod_userid, :string

      add :knbism_user1, :string

      add :knbism_user2, :string

      add :knbism__qadc01, :string

      add :knbism__qadc02, :string

      add :knbism_domain, :string

      add :knbism_avg_inv_method, :integer

      add :knbism_ss_template, :string

      add :knbism_count_tolerance, :decimal

      add :knbism_lag_factor, :decimal

      add :oid_knbism_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IB_DET") do
      add :ib_sys_seq, :integer

      add :ib_tag, :boolean

      add :ib_sys_part, :string

      add :ib_contract, :string

      add :ib_level, :string

      add :ib_eu_nbr, :string

      add :ib_desc, :string

      add :ib_cover, :string

      add :ib_config, :string

      add :ib_sys_ref, :integer

      add :ib_sys_serial, :string

      add :ib_comp_ref, :integer

      add :ib_comp_ser, :string

      add :ib_comp, :string

      add :ib_int_level, :integer

      add :ib_user1, :string

      add :ib_user2, :string

      add :ib__qadc01, :string

      add :ib_domain, :string

      add :oid_ib_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_OPM_MSTR") do
      add :opm_desc, :string

      add :opm_wkctr, :string

      add :opm_mch, :string

      add :opm_setup, :decimal

      add :opm_run, :decimal

      add :opm_move, :decimal

      add :opm_yld_pct, :decimal

      add :opm_tool, :string

      add :opm_vend, :string

      add :opm_sub_cost, :decimal

      add :opm_tran_qty, :integer

      add :opm_inv_val, :decimal

      add :opm_batch, :integer

      add :opm_cmtindx, :integer

      add :opm_mile, :boolean

      add :opm_std_op, :string

      add :opm_lbr_ovhd, :decimal

      add :opm_user1, :string

      add :opm_user2, :string

      add :opm_sub_lead, :integer

      add :opm_cyc_unit, :decimal

      add :opm_cyc_rate, :decimal

      add :opm__chr01, :string

      add :opm__chr02, :string

      add :opm__chr03, :string

      add :opm__chr04, :string

      add :opm__chr05, :string

      add :opm__dte01, :naive_datetime

      add :opm__dte02, :naive_datetime

      add :opm__dec01, :decimal

      add :opm__dec02, :decimal

      add :opm__log01, :boolean

      add :opm_fsc_code, :string

      add :opm_fsm_type, :string

      add :opm__qadc01, :string

      add :opm__qadc02, :string

      add :opm__qadc03, :string

      add :opm__qadt01, :naive_datetime

      add :opm__qade01, :decimal

      add :opm__qadl01, :boolean

      add :opm__qadl02, :boolean

      add :opm_bom_code, :string

      add :opm_domain, :string

      add :oid_opm_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LUA_DET") do
      add :lua_userid, :string

      add :lua_sid, :string

      add :lua_prog_user, :string

      add :lua_product, :string

      add :lua_in_date, :naive_datetime

      add :lua_in_time, :integer

      add :lua_named, :integer

      add :lua_concur, :integer

      add :lua_out_date, :naive_datetime

      add :lua_out_time, :integer

      add :lua__qadc01, :string

      add :lua__qadc02, :string

      add :lua__qadd01, :decimal

      add :lua__qadt01, :naive_datetime

      add :oid_lua_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBI_MSTR") do
      add :knbi_keyid, :decimal

      add :knbi_part, :string

      add :knbi_step, :integer

      add :knbi_routing, :string

      add :knbi_bom_code, :string

      add :knbi_mod_date, :naive_datetime

      add :knbi_mod_userid, :string

      add :knbi_user1, :string

      add :knbi_user2, :string

      add :knbi__qadc01, :string

      add :knbi__qadc02, :string

      add :knbi_domain, :string

      add :knbi_cmtindx, :integer

      add :knbi_min_epe_interval, :decimal

      add :knbi_run_out_material, :string

      add :knbi_run_out_option, :integer

      add :knbi_run_out_qty_per, :decimal

      add :knbi_run_out_qtyper_um, :string

      add :knbi_run_out_quantity, :decimal

      add :knbi_run_out_qty_um, :string

      add :knbi_run_out_setup, :decimal

      add :knbi_avg_inv_method, :integer

      add :knbi_cost_alloc, :decimal

      add :knbi_cont_type, :string

      add :knbi_um_conv, :decimal

      add :oid_knbi_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRIC_DET") do
      add :gric_run_id, :integer

      add :gric_col, :integer

      add :gric_width, :integer

      add :gric_year, :integer

      add :gric_per_from, :integer

      add :gric_quarter, :integer

      add :gric_activity, :string

      add :gric_label, :string

      add :gric_col_type, :string

      add :gric_bg_code, :string

      add :gric_print, :boolean

      add :gric_per_to, :integer

      add :gric_currency, :boolean

      add :gric_select, :boolean

      add :gric_symbol, :string

      add :gric_user1, :string

      add :gric_user2, :string

      add :gric__qadc01, :string

      add :gric_domain, :string

      add :oid_gric_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLRD_DET") do
      add :glrd_code, :string

      add :glrd_fpos, :integer

      add :glrd_acct, :string

      add :glrd_cc, :string

      add :glrd_desc, :string

      add :glrd_sums, :integer

      add :glrd_dr_cr, :boolean

      add :glrd_page, :boolean

      add :glrd_header, :boolean

      add :glrd_total, :boolean

      add :glrd_entity, :string

      add :glrd_user1, :string

      add :glrd_user2, :string

      add :glrd_underln, :boolean

      add :glrd_skip, :boolean

      add :glrd_sub, :string

      add :glrd_acct1, :string

      add :glrd_cc1, :string

      add :glrd_sub1, :string

      add :glrd_line, :integer

      add :glrd__qadc01, :string

      add :glrd_domain, :string

      add :oid_glrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLSCD_DET") do
      add :flscd_schedule_code, :string

      add :flscd_site, :string

      add :flscd_production_line, :string

      add :flscd_max_rate, :decimal

      add :flscd_target_rate, :decimal

      add :flscd_mod_date, :naive_datetime

      add :flscd_user1, :string

      add :flscd_user2, :string

      add :flscd_userc03, :string

      add :flscd_userd01, :decimal

      add :flscd_useri01, :integer

      add :flscd_mod_userid, :string

      add :flscd_userl01, :boolean

      add :flscd_usert01, :naive_datetime

      add :flscd__qadc01, :string

      add :flscd__qadc02, :string

      add :flscd__qadc03, :string

      add :flscd__qadd01, :decimal

      add :flscd__qadi01, :integer

      add :flscd__qadl01, :boolean

      add :flscd__qadt01, :naive_datetime

      add :flscd_domain, :string

      add :oid_flscd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LOTW_WKFL") do
      add :lotw_lotser, :string

      add :lotw_part, :string

      add :lotw_mfguser, :string

      add :lotw_userid, :string

      add :lotw_user1, :string

      add :lotw_user2, :string

      add :lotw__qadc01, :string

      add :lotw_domain, :string

      add :oid_lotw_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IMG_MSG") do
      add :img_app_id, :string

      add :img_doc_id, :integer

      add :img_email_sent, :boolean

      add :img_mod_date, :naive_datetime

      add :img_mod_userid, :string

      add :img_return_code, :string

      add :img_return_txt, :string

      add :img_sev_lvl, :string

      add :img_doc_sufx, :integer

      add :img_prcg_stage, :string

      add :img_user1, :string

      add :img_user2, :string

      add :img__dec01, :decimal

      add :img__dec02, :decimal

      add :img__int01, :integer

      add :img__int02, :integer

      add :img__log01, :boolean

      add :img__log02, :boolean

      add :img__dte01, :naive_datetime

      add :img__dte02, :naive_datetime

      add :img__qadc01, :string

      add :img__qadc02, :string

      add :img__qadc03, :string

      add :img__qadc04, :string

      add :img__qadd01, :decimal

      add :img__qadd02, :decimal

      add :img__qadi01, :integer

      add :img__qadi02, :integer

      add :img__qadl01, :boolean

      add :img__qadl02, :boolean

      add :img__qadt01, :naive_datetime

      add :img__qadt02, :naive_datetime

      add :img_domain, :string

      add :oid_img_msg, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_HD_MSTR") do
      add :hd_date, :naive_datetime

      add :hd_desc, :string

      add :hd_user1, :string

      add :hd_user2, :string

      add :hd_site, :string

      add :hd__qadc01, :string

      add :hd_domain, :string

      add :oid_hd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLCD_DET") do
      add :glcd_year, :integer

      add :glcd_per, :integer

      add :glcd_entity, :string

      add :glcd_gl_clsd, :boolean

      add :glcd_closed, :boolean

      add :glcd_yr_clsd, :boolean

      add :glcd_user1, :string

      add :glcd_user2, :string

      add :glcd__qadc01, :string

      add :glcd_domain, :string

      add :oid_glcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLDF_MSTR") do
      add :fldf_userid, :string

      add :fldf_field, :string

      add :fldf_call_pg, :string

      add :fldf_value, :string

      add :fldf_desc, :string

      add :fldf_user1, :string

      add :fldf_user2, :string

      add :fldf__qadc01, :string

      add :oid_fldf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAB_DET") do
      add :fab_fa_id, :string

      add :fab_fabk_seq, :integer

      add :fab_fabk_id, :string

      add :fab_famt_id, :string

      add :fab_life, :decimal

      add :fab_date, :naive_datetime

      add :fab_amt, :decimal

      add :fab_ovrdt, :naive_datetime

      add :fab_ovramt, :decimal

      add :fab_salvamt, :decimal

      add :fab_resrv, :integer

      add :fab_uplife, :integer

      add :fab_upper, :integer

      add :fab_um, :string

      add :fab_famtr_id, :string

      add :fab_upcost, :decimal

      add :fab_cst_adjper, :string

      add :fab_mod_userid, :string

      add :fab_mod_date, :naive_datetime

      add :fab_user1, :string

      add :fab_user2, :string

      add :fab__chr01, :string

      add :fab__dec01, :decimal

      add :fab__log01, :boolean

      add :fab__dte01, :naive_datetime

      add :fab__int01, :integer

      add :fab__qadc01, :string

      add :fab__int02, :integer

      add :fab__dec02, :decimal

      add :fab__qadd01, :decimal

      add :fab__qadl01, :boolean

      add :fab__qadi01, :integer

      add :fab__qadt01, :naive_datetime

      add :fab__qadc02, :string

      add :fab__qadd02, :decimal

      add :fab__qadi02, :integer

      add :fab__qadl02, :boolean

      add :fab__qadt02, :naive_datetime

      add :fab__qadc03, :string

      add :fab_domain, :string

      add :oid_fab_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_LGS_MSTR") do
      add :lgs_app_id, :string

      add :lgs_act, :boolean

      add :lgs_ship_exp, :boolean

      add :lgs_pt_cst_exp, :boolean

      add :lgs_inv_exp, :boolean

      add :lgs_lad_exp, :boolean

      add :lgs_pick_exp, :boolean

      add :lgs_pymt_exp, :boolean

      add :lgs_ar_bal_exp, :boolean

      add :lgs_so_imp, :boolean

      add :lgs_invc_exp, :boolean

      add :lgs_ar_imp, :boolean

      add :lgs_pt_mnt, :boolean

      add :lgs_cm_mnt, :boolean

      add :lgs_so_mnt, :boolean

      add :lgs_lad_mnt, :boolean

      add :lgs_invc_imp, :boolean

      add :lgs_mod_date, :naive_datetime

      add :lgs_mod_userid, :string

      add :lgs_user1, :string

      add :lgs_user2, :string

      add :lgs__dec01, :decimal

      add :lgs__dec02, :decimal

      add :lgs__int01, :integer

      add :lgs__int02, :integer

      add :lgs__log01, :boolean

      add :lgs__log02, :boolean

      add :lgs__dte01, :naive_datetime

      add :lgs__dte02, :naive_datetime

      add :lgs__qadc01, :string

      add :lgs__qadc02, :string

      add :lgs__qadc03, :string

      add :lgs__qadc04, :string

      add :lgs__qadd01, :decimal

      add :lgs__qadd02, :decimal

      add :lgs__qadi01, :integer

      add :lgs__qadi02, :integer

      add :lgs__qadl01, :boolean

      add :lgs__qadl02, :boolean

      add :lgs__qadt01, :naive_datetime

      add :lgs__qadt02, :naive_datetime

      add :lgs_tax_env, :string

      add :lgs_taxc, :string

      add :lgs_price_imp, :boolean

      add :lgs_tax_imp, :boolean

      add :lgs_domain, :string

      add :oid_lgs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IM_MSTR") do
      add :im_inv_mov, :string

      add :im_desc, :string

      add :im_tr_type, :string

      add :im_user1, :string

      add :im_user2, :string

      add :im__qadc01, :string

      add :im_unplanned_acct, :string

      add :im_unplanned_sub, :string

      add :im_unplanned_cc, :string

      add :im_domain, :string

      add :oid_im_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRC_MSTR") do
      add :grc_col_group, :string

      add :grc_desc, :string

      add :grc_add_id, :string

      add :grc_add_date, :naive_datetime

      add :grc_mod_id, :string

      add :grc_mod_date, :naive_datetime

      add :grc_group, :string

      add :grc_status, :boolean

      add :grc_cmtindx, :integer

      add :grc_user1, :string

      add :grc_user2, :string

      add :grc__qadc01, :string

      add :grc_domain, :string

      add :oid_grc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLTW_WKFL") do
      add :gltw_entity, :string

      add :gltw_acct, :string

      add :gltw_cc, :string

      add :gltw_ref, :string

      add :gltw_desc, :string

      add :gltw_date, :naive_datetime

      add :gltw_effdate, :naive_datetime

      add :gltw_amt, :decimal

      add :gltw_userid, :string

      add :gltw_project, :string

      add :gltw_batch, :string

      add :gltw_addr, :string

      add :gltw_doc, :string

      add :gltw_doc_typ, :string

      add :gltw_user1, :string

      add :gltw_user2, :string

      add :gltw_curr, :string

      add :gltw_curramt, :decimal

      add :gltw_tr_type, :string

      add :gltw_line, :integer

      add :gltw_ex_rate, :decimal

      add :gltw_fx_ind, :string

      add :gltw_sub, :string

      add :gltw_ecur_amt, :decimal

      add :gltw_rflag, :boolean

      add :gltw__qadc01, :string

      add :gltw_dy_code, :string

      add :gltw_dy_num, :string

      add :gltw_correction, :boolean

      add :gltw_ex_rate2, :decimal

      add :gltw_ex_ratetype, :string

      add :gltw_exru_seq, :integer

      add :gltw_domain, :string

      add :oid_gltw_wkfl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESS_MSTR") do
      add :ess_status, :string

      add :ess_available, :boolean

      add :ess_desc, :string

      add :ess_user1, :string

      add :ess_user2, :string

      add :ess_mod_date, :naive_datetime

      add :ess_mod_userid, :string

      add :ess__chr01, :string

      add :ess__log01, :boolean

      add :ess__qadc01, :string

      add :ess__qadl01, :boolean

      add :ess_domain, :string

      add :oid_ess_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNP_MSTR") do
      add :knp_site, :string

      add :knp_process_id, :string

      add :knp_desc, :string

      add :knp_keyid, :decimal

      add :knp_time_avail, :decimal

      add :knp_pct_uptime, :decimal

      add :knp_process_function, :string

      add :knp_production_line, :string

      add :knp_loc, :string

      add :knp_planner_id, :string

      add :knp_level_mix_seq, :string

      add :knp_takt_time_calc, :string

      add :knp_epei_disp, :integer

      add :knp_chg_over_avail, :decimal

      add :knp_co_per_interval, :decimal

      add :knp_cycle_time, :decimal

      add :knp_move_time, :decimal

      add :knp_epe_interval, :decimal

      add :knp_takt_time, :decimal

      add :knp_pitch_interval, :decimal

      add :knp_pitch_quantity, :decimal

      add :knp_pitch_um, :string

      add :knp_mod_date, :naive_datetime

      add :knp_mod_userid, :string

      add :knp_user1, :string

      add :knp_user2, :string

      add :knp__qadc01, :string

      add :knp__qadc02, :string

      add :knp_domain, :string

      add :knp_min_epe_interval, :decimal

      add :knp_resources, :decimal

      add :knp_load_limit, :decimal

      add :knp_lead_time_method, :integer

      add :knp_cmtindx, :integer

      add :oid_knp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KNBD_DET") do
      add :knbd_id, :integer

      add :knbd_keyid, :decimal

      add :knbd_knbl_keyid, :decimal

      add :knbd_active, :boolean

      add :knbd_kanban_quantity, :decimal

      add :knbd_status, :string

      add :knbd_source_type, :string

      add :knbd_ref1, :string

      add :knbd_ref2, :string

      add :knbd_ref3, :string

      add :knbd_ref4, :string

      add :knbd_ref5, :string

      add :knbd_authorize_date, :naive_datetime

      add :knbd_authorize_time, :decimal

      add :knbd_print_date, :naive_datetime

      add :knbd_print_time, :decimal

      add :knbd_routing, :string

      add :knbd_bom_code, :string

      add :knbd_print_dispatch, :boolean

      add :knbd_pou_site, :string

      add :knbd_pou_ref, :string

      add :knbd_active_code, :string

      add :knbd_cycles_allowed, :integer

      add :knbd_cycles_used, :integer

      add :knbd_active_start_date, :naive_datetime

      add :knbd_active_end_date, :naive_datetime

      add :knbd_next_process_id, :string

      add :knbd_mod_date, :naive_datetime

      add :knbd_mod_userid, :string

      add :knbd_user1, :string

      add :knbd_user2, :string

      add :knbd__qadc01, :string

      add :knbd__qadc02, :string

      add :knbd_domain, :string

      add :oid_knbd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRR_MSTR") do
      add :grr_row_group, :string

      add :grr_desc, :string

      add :grr_width, :integer

      add :grr_add_id, :string

      add :grr_add_date, :naive_datetime

      add :grr_mod_id, :string

      add :grr_mod_date, :naive_datetime

      add :grr_group, :string

      add :grr_status, :boolean

      add :grr_cmtindx, :integer

      add :grr_user1, :string

      add :grr_user2, :string

      add :grr_cont_pg, :boolean

      add :grr_brk_gl, :string

      add :grr_brk_ac, :string

      add :grr__qadc01, :string

      add :grr_domain, :string

      add :oid_grr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRDF_MTX") do
      add :grdf_run_id, :integer

      add :grdf_row, :integer

      add :grdf_col, :integer

      add :grdf_format, :string

      add :grdf_round, :string

      add :grdf_reverse, :boolean

      add :grdf_formula, :string

      add :grdf_print, :boolean

      add :grdf_user1, :string

      add :grdf_user2, :string

      add :grdf__qadc01, :string

      add :grdf_domain, :string

      add :oid_grdf_mtx, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGD_DET") do
      add :egd_status, :string

      add :egd_sched_type, :string

      add :egd_days, :boolean

      add :egd_end_time, :string

      add :egd_end_eff, :naive_datetime

      add :egd_start_time, :string

      add :egd_start_eff, :naive_datetime

      add :egd_eng_code, :string

      add :egd_esh_schedule, :string

      add :egd_oncall, :boolean

      add :egd_holidays, :boolean

      add :egd_user1, :string

      add :egd_user2, :string

      add :egd_mod_date, :naive_datetime

      add :egd_mod_userid, :string

      add :egd__chr01, :string

      add :egd__qadc01, :string

      add :egd__qadc02, :string

      add :egd__log01, :boolean

      add :egd__log02, :boolean

      add :egd__qadl01, :boolean

      add :egd__qadl02, :boolean

      add :egd__dte01, :naive_datetime

      add :egd__qadt01, :naive_datetime

      add :egd__qadt02, :naive_datetime

      add :egd__dec01, :decimal

      add :egd__qade01, :decimal

      add :egd_domain, :string

      add :oid_egd_det, :decimal

      add :egd_mid_etime, :string

      add :egd_mid_stime, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBTRR_DET") do
      add :oid_kbtrr_det, :decimal

      add :oid_kbtr_hist, :decimal

      add :kbtrr_domain, :string

      add :kbtrr_rjct_rsn_code, :string

      add :kbtrr_rjct_qty, :decimal

      add :kbtrr_mod_userid, :string

      add :kbtrr_mod_date, :naive_datetime

      add :kbtrr_user1, :string

      add :kbtrr_user2, :string

      add :kbtrr__qadc01, :string

      add :kbtrr__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ILD_DET") do
      add :ild_part, :string

      add :ild_site, :string

      add :ild_loc, :string

      add :ild_source_loc, :string

      add :ild_rop, :decimal

      add :ild_sfty_stk, :decimal

      add :ild_ord_mult, :decimal

      add :ild_mod_date, :naive_datetime

      add :ild_userid, :string

      add :ild_user1, :string

      add :ild_user2, :string

      add :ild__qadc01, :string

      add :ild_domain, :string

      add :oid_ild_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRIG_MTX") do
      add :grig_run_id, :integer

      add :grig_brk_gp, :string

      add :grig_row, :integer

      add :grig_col, :integer

      add :grig_line, :integer

      add :grig_stl, :integer

      add :grig_amt, :decimal

      add :grig_amt_txt, :string

      add :grig_print, :boolean

      add :grig_type, :string

      add :grig_user1, :string

      add :grig_user2, :string

      add :grig__qadc01, :string

      add :grig_domain, :string

      add :oid_grig_mtx, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLSD_MSTR") do
      add :glsd_nbr, :string

      add :glsd_select, :integer

      add :glsd_lang, :string

      add :glsd_src_desc, :string

      add :glsd_mod_userid, :string

      add :glsd_mod_date, :naive_datetime

      add :glsd_user1, :string

      add :glsd_user2, :string

      add :glsd__qadc01, :string

      add :glsd__qadc02, :string

      add :glsd_exec, :string

      add :glsd_domain, :string

      add :oid_glsd_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CILD_DET") do
      add :cild_cor_inv, :string

      add :cild_cor_so_nbr, :string

      add :cild_mod_date, :naive_datetime

      add :cild_mod_userid, :string

      add :cild_prev_inv, :string

      add :cild_prev_so_nbr, :string

      add :cild_user1, :string

      add :cild_user2, :string

      add :cild__qadc01, :string

      add :cild__qadc02, :string

      add :cild_cor_line, :integer

      add :cild_prev_line, :integer

      add :cild_line_type, :string

      add :cild_domain, :string

      add :oid_cild_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_KBTRD_DET") do
      add :kbtrd_kbtr_trans_nbr, :integer

      add :kbtrd_tr_trnbr, :integer

      add :kbtrd_mod_date, :naive_datetime

      add :kbtrd_mod_userid, :string

      add :kbtrd_user1, :string

      add :kbtrd_user2, :string

      add :kbtrd_useri01, :integer

      add :kbtrd__qadc01, :string

      add :kbtrd__qadc02, :string

      add :kbtrd__qadi01, :integer

      add :kbtrd_dataset, :string

      add :kbtrd_domain, :string

      add :oid_kbtrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IS_MSTR") do
      add :is_status, :string

      add :is_avail, :boolean

      add :is_nettable, :boolean

      add :is_frozen, :boolean

      add :is_overissue, :boolean

      add :is_user1, :string

      add :is_user2, :string

      add :is_userid, :string

      add :is_mod_date, :naive_datetime

      add :is_desc, :string

      add :is_cmtindx, :integer

      add :is__qadc01, :string

      add :is_domain, :string

      add :oid_is_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GIAP_MSTR") do
      add :giap_app_code, :string

      add :giap_app_desc, :string

      add :giap_ref_key, :integer

      add :giap_mod_date, :naive_datetime

      add :giap_mod_userid, :string

      add :giap_user1, :string

      add :giap_user2, :string

      add :giap__qadc01, :string

      add :giap__qadc02, :string

      add :giap_domain, :string

      add :oid_giap_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FPC_MSTR") do
      add :fpc_amt, :decimal

      add :fpc_amt_type, :string

      add :fpc_ca_int_type, :string

      add :fpc_curr, :string

      add :fpc_expire, :naive_datetime

      add :fpc_fsc_code, :string

      add :fpc_list, :string

      add :fpc_list_type, :string

      add :fpc_max_price, :decimal

      add :fpc_min_price, :decimal

      add :fpc_min_qty, :decimal

      add :fpc_mod_date, :naive_datetime

      add :fpc_part, :string

      add :fpc_prod_line, :string

      add :fpc_start, :naive_datetime

      add :fpc_svc_group, :string

      add :fpc_sv_code, :string

      add :fpc_tax_in, :boolean

      add :fpc_um, :string

      add :fpc_userid, :string

      add :fpc__chr01, :string

      add :fpc__chr02, :string

      add :fpc__chr03, :string

      add :fpc__chr04, :string

      add :fpc__dec01, :decimal

      add :fpc__dec02, :decimal

      add :fpc__dec03, :decimal

      add :fpc__dte01, :naive_datetime

      add :fpc__dte02, :naive_datetime

      add :fpc__dte03, :naive_datetime

      add :fpc__log01, :boolean

      add :fpc__log02, :boolean

      add :fpc__log03, :boolean

      add :fpc__qadc01, :string

      add :fpc__qadc02, :string

      add :fpc__qadc03, :string

      add :fpc__qadc04, :string

      add :fpc__qadd01, :naive_datetime

      add :fpc__qadd02, :naive_datetime

      add :fpc__qadd03, :naive_datetime

      add :fpc__qadde01, :decimal

      add :fpc__qadde02, :decimal

      add :fpc__qadde03, :decimal

      add :fpc__qadl01, :boolean

      add :fpc__qadl02, :boolean

      add :fpc__qadl03, :boolean

      add :fpc_user1, :string

      add :fpc_user2, :string

      add :fpc_domain, :string

      add :oid_fpc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EUC_CTRL") do
      add :euc_nbr, :integer

      add :euc_user1, :string

      add :euc_user2, :string

      add :euc__qadi02, :integer

      add :euc_mod_userid, :string

      add :euc_mod_date, :naive_datetime

      add :euc__chr01, :string

      add :euc__int01, :integer

      add :euc__dte01, :naive_datetime

      add :euc__log01, :boolean

      add :euc__qadc01, :string

      add :euc__qadi01, :integer

      add :euc__qadt01, :naive_datetime

      add :euc__qadl01, :boolean

      add :euc_create_isb, :boolean

      add :euc__qadl02, :boolean

      add :euc_domain, :string

      add :oid_euc_ctrl, :decimal

      add :euc_schedule, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IP_MSTR") do
      add :ip_part, :string

      add :ip_routing, :string

      add :ip_op, :integer

      add :ip_nbr, :string

      add :ip_user1, :string

      add :ip_user2, :string

      add :ip__chr01, :string

      add :ip__chr02, :string

      add :ip__chr03, :string

      add :ip__chr04, :string

      add :ip__chr05, :string

      add :ip__dec01, :decimal

      add :ip__dec02, :decimal

      add :ip_domain, :string

      add :oid_ip_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRA_MSTR") do
      add :gra_an_code, :string

      add :gra_link, :boolean

      add :gra_desc, :string

      add :gra_add_id, :string

      add :gra_add_date, :naive_datetime

      add :gra_mod_id, :string

      add :gra_mod_date, :naive_datetime

      add :gra_group, :string

      add :gra_status, :boolean

      add :gra_cmtindx, :integer

      add :gra_gl_type, :string

      add :gra_user1, :string

      add :gra_user2, :string

      add :gra__qadc01, :string

      add :gra_domain, :string

      add :oid_gra_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLCRH_HIST") do
      add :flcrh_site, :string

      add :flcrh_production_line, :string

      add :flcrh_schedule_code, :string

      add :flcrh_start_date, :naive_datetime

      add :flcrh_rate_code, :string

      add :flcrh_entry_mode, :boolean

      add :flcrh_mod_userid, :string

      add :flcrh_mod_date, :naive_datetime

      add :flcrh_user1, :string

      add :flcrh_user2, :string

      add :flcrh_userc03, :string

      add :flcrh_userd01, :decimal

      add :flcrh_useri01, :integer

      add :flcrh_userl01, :boolean

      add :flcrh_usert01, :naive_datetime

      add :flcrh__qadc01, :string

      add :flcrh__qadc02, :string

      add :flcrh__qadc03, :string

      add :flcrh__qadd01, :decimal

      add :flcrh__qadi01, :integer

      add :flcrh__qadl01, :boolean

      add :flcrh__qadt01, :naive_datetime

      add :flcrh_domain, :string

      add :oid_flcrh_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FABD_DET") do
      add :fabd_fa_id, :string

      add :fabd_fabk_id, :string

      add :fabd_faloc_id, :string

      add :fabd_facls_id, :string

      add :fabd_yrper, :string

      add :fabd_adj_yrper, :string

      add :fabd_post, :boolean

      add :fabd_accamt, :decimal

      add :fabd_peramt, :decimal

      add :fabd__qadl03, :boolean

      add :fabd_retired, :boolean

      add :fabd_transfer, :boolean

      add :fabd_resrv, :integer

      add :fabd_resrv_type, :string

      add :fabd_suspend, :boolean

      add :fabd_seq, :integer

      add :fabd_upper, :integer

      add :fabd_accup, :integer

      add :fabd_trn_loc, :string

      add :fabd_glseq, :integer

      add :fabd__qadl04, :boolean

      add :fabd_rt_period, :boolean

      add :fabd_mod_userid, :string

      add :fabd_mod_date, :naive_datetime

      add :fabd_user1, :string

      add :fabd_user2, :string

      add :fabd__chr01, :string

      add :fabd__dec01, :decimal

      add :fabd__log01, :boolean

      add :fabd__dte01, :naive_datetime

      add :fabd__int01, :integer

      add :fabd__qadc01, :string

      add :fabd__qadc02, :string

      add :fabd__qadd01, :decimal

      add :fabd__qadl01, :boolean

      add :fabd__qadi01, :integer

      add :fabd__qadt01, :naive_datetime

      add :fabd__qadd02, :decimal

      add :fabd__qadi02, :integer

      add :fabd__qadl02, :boolean

      add :fabd__qadt02, :naive_datetime

      add :fabd_entity, :string

      add :fabd_trn_glseq, :integer

      add :fabd_trn_entity, :string

      add :fabd_migrate, :boolean

      add :fabd_domain, :string

      add :oid_fabd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPFC_DET") do
      add :oid_esapfc_det, :decimal

      add :oid_esapfil_det, :decimal

      add :esapfc_value, :string

      add :oid_esapfs_det, :decimal

      add :esapfc_mod_date, :naive_datetime

      add :esapfc_mod_userid, :string

      add :esapfc_user1, :string

      add :esapfc_user2, :string

      add :esapfc__qadc01, :string

      add :esapfc__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IFS_MSTR") do
      add :ifs_app_id, :string

      add :ifs_grp_id, :integer

      add :ifs_doc_err_cnt, :integer

      add :ifs_doc_tot_cnt, :integer

      add :ifs__qadi03, :integer

      add :ifs__qadi04, :integer

      add :ifs_lst_doc_proc, :integer

      add :ifs_mod_date, :naive_datetime

      add :ifs_userid, :string

      add :ifs_sess_hndl, :string

      add :ifs_sess_id, :integer

      add :ifs_sess_stat, :string

      add :ifs_sess_typ, :string

      add :ifs_start_date, :naive_datetime

      add :ifs_start_time, :string

      add :ifs_start_userid, :string

      add :ifs_unit_wrk_typ, :string

      add :ifs_user1, :string

      add :ifs_user2, :string

      add :ifs__dec01, :decimal

      add :ifs__dec02, :decimal

      add :ifs__int01, :integer

      add :ifs__int02, :integer

      add :ifs__log01, :boolean

      add :ifs__log02, :boolean

      add :ifs__dte01, :naive_datetime

      add :ifs__dte02, :naive_datetime

      add :ifs__qadc01, :string

      add :ifs__qadc02, :string

      add :ifs__qadc03, :string

      add :ifs__qadc04, :string

      add :ifs__qadd01, :decimal

      add :ifs__qadd02, :decimal

      add :ifs__qadi01, :integer

      add :ifs__qadi02, :integer

      add :ifs__qadl01, :boolean

      add :ifs__qadl02, :boolean

      add :ifs__qadt01, :naive_datetime

      add :ifs__qadt02, :naive_datetime

      add :ifs_filename, :string

      add :ifs_domain, :string

      add :oid_ifs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRHD_DET") do
      add :grhd_group, :string

      add :grhd_type, :string

      add :grhd_seq, :integer

      add :grhd_code, :string

      add :grhd_link, :boolean

      add :grhd_link_type, :string

      add :grhd_explode, :boolean

      add :grhd_priority, :integer

      add :grhd_sub_indent, :integer

      add :grhd_user1, :string

      add :grhd_user2, :string

      add :grhd__qadc01, :string

      add :grhd_domain, :string

      add :oid_grhd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FR_MSTR") do
      add :fr_list, :string

      add :fr_desc, :string

      add :fr_site, :string

      add :fr_type, :boolean

      add :fr_um, :string

      add :fr_trl_cd, :string

      add :fr_curr, :string

      add :fr_user1, :string

      add :fr_user2, :string

      add :fr__chr01, :string

      add :fr__chr02, :string

      add :fr__chr03, :string

      add :fr__chr04, :string

      add :fr__chr05, :string

      add :fr__chr06, :string

      add :fr__chr07, :string

      add :fr__chr08, :string

      add :fr__dec01, :decimal

      add :fr__dec02, :decimal

      add :fr__dte01, :naive_datetime

      add :fr__dte02, :naive_datetime

      add :fr__log01, :boolean

      add :fr__log02, :boolean

      add :fr_mode, :string

      add :fr_domain, :string

      add :oid_fr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLPW_MSTR") do
      add :flpw_field, :string

      add :flpw_userid, :string

      add :flpw_cmmt, :string

      add :flpw_user1, :string

      add :flpw_user2, :string

      add :flpw__qadc01, :string

      add :flpw_domain, :string

      add :oid_flpw_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWP_MSTR") do
      add :oid_eswp_mstr, :decimal

      add :oid_escat_mstr, :decimal

      add :eswp_collection, :string

      add :eswp_esig_active, :boolean

      add :eswp_comment_prompt, :boolean

      add :eswp_filter_mode, :string

      add :eswp_profile_type, :string

      add :eswp_latest_display, :boolean

      add :eswp_data_frame_opt, :boolean

      add :eswp_preview_prompt, :boolean

      add :eswp_mod_date, :naive_datetime

      add :eswp_mod_userid, :string

      add :eswp_user1, :string

      add :eswp_user2, :string

      add :eswp__qadc01, :string

      add :eswp__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DBS_MSTR") do
      add :dbs_major, :decimal

      add :dbs_minor, :string

      add :dbs_status, :string

      add :dbs_userid, :string

      add :dbs_date, :naive_datetime

      add :dbs_time, :integer

      add :dbs_user1, :string

      add :dbs_user2, :string

      add :dbs__qadc01, :string

      add :oid_dbs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_IEC_CTRL") do
      add :iec_authority, :string

      add :iec_agent, :string

      add :iec_agent_id, :string

      add :iec_com_code, :string

      add :iec_declarant, :string

      add :iec_declarant_id, :string

      add :iec_flow_arr, :string

      add :iec_flow_disp, :string

      add :iec_incl_memo, :boolean

      add :iec_int_com_code, :string

      add :iec_mode_transp, :string

      add :iec_nat_trans, :string

      add :iec_net_wt_min, :decimal

      add :iec_net_wt_um, :string

      add :iec_port_arrdisp, :string

      add :iec_port_transh, :string

      add :iec_ref_logic, :string

      add :iec_stat_proc, :string

      add :iec_terms_deliv, :string

      add :iec_use_instat, :boolean

      add :iec__qadi02, :integer

      add :iec_userid, :string

      add :iec_mod_date, :naive_datetime

      add :iec__qadi01, :integer

      add :iec_region, :string

      add :iec_declaration_id, :integer

      add :iec__chr01, :string

      add :iec__chr02, :string

      add :iec__chr03, :string

      add :iec__chr04, :string

      add :iec__dec01, :decimal

      add :iec__log01, :boolean

      add :iec__log02, :boolean

      add :iec__qadc01, :string

      add :iec__qadc02, :string

      add :iec__qadc03, :string

      add :iec__qadc04, :string

      add :iec__qadd01, :decimal

      add :iec__qadl01, :boolean

      add :iec__qadl02, :boolean

      add :iec_impexp, :boolean

      add :iec_user1, :string

      add :iec_user2, :string

      add :iec_act_in_type_list, :string

      add :iec_act_ex_type_list, :string

      add :iec_corr_flow_arr, :string

      add :iec_corr_flow_disp, :string

      add :iec_use_extrastat, :boolean

      add :iec_container, :boolean

      add :iec_preference, :integer

      add :iec_domain, :string

      add :oid_iec_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GISI_MSTR") do
      add :gisi_app_code, :string

      add :gisi_site, :string

      add :gisi_part, :string

      add :gisi_model_name, :string

      add :gisi_ref_key, :integer

      add :gisi_mod_date, :naive_datetime

      add :gisi_mod_userid, :string

      add :gisi_user1, :string

      add :gisi_user2, :string

      add :gisi__qadc01, :string

      add :gisi__qadc02, :string

      add :gisi_domain, :string

      add :oid_gisi_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FRCD_DET") do
      add :frcd_fr_list, :string

      add :frcd_site, :string

      add :frcd_zone, :string

      add :frcd_class, :string

      add :frcd_min_wt, :decimal

      add :frcd_max_wt, :decimal

      add :frcd_min_wtc, :decimal

      add :frcd_tot_wtc, :decimal

      add :frcd_xtr_wtc, :decimal

      add :frcd_start, :naive_datetime

      add :frcd_end, :naive_datetime

      add :frcd_user1, :string

      add :frcd_user2, :string

      add :frcd__chr01, :string

      add :frcd__chr02, :string

      add :frcd__chr03, :string

      add :frcd__chr04, :string

      add :frcd__chr05, :string

      add :frcd__chr06, :string

      add :frcd__chr07, :string

      add :frcd__chr08, :string

      add :frcd__dec01, :decimal

      add :frcd__dec02, :decimal

      add :frcd__dte01, :naive_datetime

      add :frcd__dte02, :naive_datetime

      add :frcd__log01, :boolean

      add :frcd__log02, :boolean

      add :frcd_curr, :string

      add :frcd_domain, :string

      add :oid_frcd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLCR_MSTR") do
      add :flcr_site, :string

      add :flcr_production_line, :string

      add :flcr_schedule_code, :string

      add :flcr_type_code, :string

      add :flcr_type_value, :string

      add :flcr_rate_code, :string

      add :flcr_rate, :decimal

      add :flcr_mod_userid, :string

      add :flcr_mod_date, :naive_datetime

      add :flcr_user1, :string

      add :flcr_user2, :string

      add :flcr__qadc01, :string

      add :flcr__qadc02, :string

      add :flcr_userc03, :string

      add :flcr_userd01, :decimal

      add :flcr_useri01, :integer

      add :flcr_userl01, :boolean

      add :flcr_usert01, :naive_datetime

      add :flcr__qadc03, :string

      add :flcr__qadd01, :decimal

      add :flcr__qadi01, :integer

      add :flcr__qadl01, :boolean

      add :flcr__qadt01, :naive_datetime

      add :flcr_domain, :string

      add :oid_flcr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FABK_MSTR") do
      add :fabk_id, :string

      add :fabk_desc, :string

      add :fabk_seq, :integer

      add :fabk_post, :boolean

      add :fabk_calendar, :string

      add :fabk_mod_userid, :string

      add :fabk_mod_date, :naive_datetime

      add :fabk_user1, :string

      add :fabk_user2, :string

      add :fabk__chr01, :string

      add :fabk__dec01, :decimal

      add :fabk__log01, :boolean

      add :fabk__dte01, :naive_datetime

      add :fabk__int01, :integer

      add :fabk__qadc01, :string

      add :fabk__qadd01, :decimal

      add :fabk__qadl01, :boolean

      add :fabk__qadt01, :naive_datetime

      add :fabk__qadi01, :integer

      add :fabk__qadc02, :string

      add :fabk_domain, :string

      add :oid_fabk_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESWPFS_DET") do
      add :oid_eswpfs_det, :decimal

      add :oid_eswp_mstr, :decimal

      add :eswpfs_set_name, :string

      add :eswpfs_set_desc, :string

      add :eswpfs_mod_date, :naive_datetime

      add :eswpfs_mod_userid, :string

      add :eswpfs_user1, :string

      add :eswpfs_user2, :string

      add :eswpfs__qadc01, :string

      add :eswpfs__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GRIB_DET") do
      add :grib_run_id, :integer

      add :grib_an_code, :string

      add :grib_link_code, :string

      add :grib_link_type, :string

      add :grib_desc, :string

      add :grib_level, :integer

      add :grib_select, :boolean

      add :grib_basepage, :integer

      add :grib_pages, :integer

      add :grib_user1, :string

      add :grib_user2, :string

      add :grib__qadc01, :string

      add :grib_domain, :string

      add :oid_grib_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSC_MSTR") do
      add :fsc_code, :string

      add :fsc_con_parts, :boolean

      add :fsc_customer, :boolean

      add :fsc_cus_non_prod, :boolean

      add :fsc_desc, :string

      add :fsc_exg_parts, :boolean

      add :fsc_expense, :boolean

      add :fsc_fis_column, :integer

      add :fsc_fis_sort, :string

      add :fsc_labor, :boolean

      add :fsc_non_prod, :boolean

      add :fsc_other, :boolean

      add :fsc_parts, :boolean

      add :fsc_sick, :boolean

      add :fsc_training, :boolean

      add :fsc_travel_exp, :boolean

      add :fsc_travel_labor, :boolean

      add :fsc_vacation, :boolean

      add :fsc__chr01, :string

      add :fsc__chr02, :string

      add :fsc__chr03, :string

      add :fsc__chr04, :string

      add :fsc__dec01, :decimal

      add :fsc__dec02, :decimal

      add :fsc__dec03, :decimal

      add :fsc__dte01, :naive_datetime

      add :fsc__dte02, :naive_datetime

      add :fsc__dte03, :naive_datetime

      add :fsc__log01, :boolean

      add :fsc__log02, :boolean

      add :fsc__log03, :boolean

      add :fsc__qadc01, :string

      add :fsc__qadc02, :string

      add :fsc__qadc03, :string

      add :fsc__qadc04, :string

      add :fsc__qadd01, :naive_datetime

      add :fsc__qadd02, :naive_datetime

      add :fsc__qadd03, :naive_datetime

      add :fsc__qadde01, :decimal

      add :fsc__qadde02, :decimal

      add :fsc__qadde03, :decimal

      add :fsc__qadl01, :boolean

      add :fsc__qadl02, :boolean

      add :fsc__qadl03, :boolean

      add :fsc_user1, :string

      add :fsc_user2, :string

      add :fsc_lbr_rate, :decimal

      add :fsc_bdn_pct, :decimal

      add :fsc_bdn_rate, :decimal

      add :fsc_taxc, :string

      add :fsc_taxable, :boolean

      add :fsc_domain, :string

      add :oid_fsc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FLP_PLAN") do
      add :flp_site, :string

      add :flp_part, :string

      add :flp_year, :integer

      add :flp_line, :string

      add :flp_prod_act, :decimal

      add :flp_prod_fcst, :decimal

      add :flp_user1, :string

      add :flp_user2, :string

      add :flp__dec01, :decimal

      add :flp__dec02, :decimal

      add :flp__dec03, :decimal

      add :flp__dec04, :decimal

      add :flp_domain, :string

      add :oid_flp_plan, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ECD_DET") do
      add :ecd_nbr, :string

      add :ecd_part, :string

      add :ecd_old_rev, :string

      add :ecd_new_rev, :string

      add :ecd_start, :naive_datetime

      add :ecd_end, :naive_datetime

      add :ecd_user1, :string

      add :ecd_user2, :string

      add :ecd_cmtindx, :integer

      add :ecd_inv_dspn, :string

      add :ecd_new, :boolean

      add :ecd_prodline, :string

      add :ecd_group, :string

      add :ecd_status, :string

      add :ecd_draw, :string

      add :ecd_part_type, :string

      add :ecd_dsgn_grp, :string

      add :ecd_drwg_loc, :string

      add :ecd_drwg_size, :string

      add :ecd_process, :string

      add :ecd__qad01, :boolean

      add :ecd__qad02, :naive_datetime

      add :ecd__qad03, :string

      add :ecd__qad04, :string

      add :ecd__qad05, :string

      add :ecd_mod_date, :naive_datetime

      add :ecd_userid, :string

      add :ecd_domain, :string

      add :oid_ecd_det, :decimal

      add :ecd_break_cat, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DC_MSTR") do
      add :dc_name, :string

      add :dc_phy_name, :string

      add :dc_dir, :string

      add :dc_host, :string

      add :dc_server, :string

      add :dc_type, :string

      add :dc_network, :string

      add :dc_parmfile, :string

      add :dc_active, :boolean

      add :dc__chr01, :string

      add :dc__chr02, :string

      add :dc_desc, :string

      add :dc_cmtindx, :integer

      add :dc_user1, :string

      add :dc_user2, :string

      add :dc_use_app, :boolean

      add :dc__qadc01, :string

      add :dc__qadc02, :string

      add :dc__qadl01, :boolean

      add :dc__qadl02, :boolean

      add :oid_dc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLT_DET") do
      add :glt_entity, :string

      add :glt_acct, :string

      add :glt_cc, :string

      add :glt_ref, :string

      add :glt_desc, :string

      add :glt_date, :naive_datetime

      add :glt_effdate, :naive_datetime

      add :glt_amt, :decimal

      add :glt_userid, :string

      add :glt_project, :string

      add :glt_batch, :string

      add :glt_curr, :string

      add :glt_curr_amt, :decimal

      add :glt_unb, :boolean

      add :glt_tr_type, :string

      add :glt_error, :string

      add :glt_line, :integer

      add :glt_ex_rate, :decimal

      add :glt_addr, :string

      add :glt_doc, :string

      add :glt_doc_type, :string

      add :glt_user1, :string

      add :glt_user2, :string

      add :glt_fx_ind, :string

      add :glt_sub, :string

      add :glt_rflag, :boolean

      add :glt_ecur_amt, :decimal

      add :glt_en_exrate, :decimal

      add :glt_entr_exrate, :decimal

      add :glt_per, :integer

      add :glt_year, :integer

      add :glt__qadc01, :string

      add :glt_correction, :boolean

      add :glt_dy_code, :string

      add :glt_dy_num, :string

      add :glt_ex_rate2, :decimal

      add :glt_ex_ratetype, :string

      add :glt_en_exrate2, :decimal

      add :glt_exru_seq, :integer

      add :glt_en_exru_seq, :integer

      add :glt_src_desc, :string

      add :glt_domain, :string

      add :oid_glt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_GLC_CAL") do
      add :glc_year, :integer

      add :glc_per, :integer

      add :glc_start, :naive_datetime

      add :glc_end, :naive_datetime

      add :glc__qad01, :boolean

      add :glc__qad04, :boolean

      add :glc__qad03, :boolean

      add :glc__qad02, :string

      add :glc_user1, :string

      add :glc_user2, :string

      add :glc_yr_end, :boolean

      add :glc_domain, :string

      add :oid_glc_cal, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FAMTRD_DET") do
      add :famtrd_famtr_id, :string

      add :famtrd_seq, :integer

      add :famtrd_action, :string

      add :famtrd_date, :naive_datetime

      add :famtrd_reading, :integer

      add :famtrd_accum, :integer

      add :famtrd_usage, :integer

      add :famtrd_mod_userid, :string

      add :famtrd_mod_date, :naive_datetime

      add :famtrd_user1, :string

      add :famtrd_user2, :string

      add :famtrd__chr01, :string

      add :famtrd__dec01, :decimal

      add :famtrd__log01, :boolean

      add :famtrd__dte01, :naive_datetime

      add :famtrd__int01, :integer

      add :famtrd__qadc01, :string

      add :famtrd__qadd01, :decimal

      add :famtrd__qadl01, :boolean

      add :famtrd__qadi01, :integer

      add :famtrd__qadt01, :naive_datetime

      add :famtrd_domain, :string

      add :oid_famtrd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EXRU_USAGE") do
      add :exru_seq, :integer

      add :exru_step, :integer

      add :exru_curr1, :string

      add :exru_curr2, :string

      add :exru_ex_rate, :decimal

      add :exru_ex_rate2, :decimal

      add :exru__qadd01, :decimal

      add :exru__qadc01, :string

      add :exru__qadl01, :boolean

      add :exru__qadt01, :naive_datetime

      add :oid_exru_usage, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESAPMP_REF") do
      add :oid_esapmp_ref, :decimal

      add :oid_esap_mstr, :decimal

      add :esapmp_exec, :string

      add :esapmp_esig_active, :boolean

      add :esapmp_mod_date, :naive_datetime

      add :esapmp_mod_userid, :string

      add :esapmp_user1, :string

      add :esapmp_user2, :string

      add :esapmp__qadc01, :string

      add :esapmp__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSPD_DET") do
      add :fspd_domain, :string

      add :fspd_part, :string

      add :fspd_itm_qty, :decimal

      add :fspd_so_nbr, :string

      add :fspd_bom_code, :string

      add :oid_itm_det, :decimal

      add :oid_fspd_det, :decimal

      add :fspd_consumed, :boolean

      add :fspd_user1, :string

      add :fspd_user2, :string

      add :fspd__qadc01, :string

      add :fspd__qadc02, :string

      add :fspd_mod_userid, :string

      add :fspd_mod_date, :naive_datetime

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FCS_SUM") do
      add :fcs_part, :string

      add :fcs_year, :integer

      add :fcs_fcst_qty, :decimal

      add :fcs_sold_qty, :decimal

      add :fcs_pr_fcst, :decimal

      add :fcs_abnormal, :decimal

      add :fcs_site, :string

      add :fcs_user1, :string

      add :fcs_user2, :string

      add :fcs__qadc01, :string

      add :fcs_domain, :string

      add :oid_fcs_sum, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EXC_MSTR") do
      add :exc_curr, :string

      add :exc_acc, :string

      add :exc_xcc, :string

      add :exc_xac_type, :string

      add :exc_xall_cc, :boolean

      add :exc_user1, :string

      add :exc_user2, :string

      add :exc__qadc01, :string

      add :exc_curr2, :string

      add :exc_domain, :string

      add :oid_exc_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EGC_CTRL") do
      add :egc__qadc05, :string

      add :egc_index, :integer

      add :egc__qadc06, :string

      add :egc_by_calls, :boolean

      add :egc_prim_points, :integer

      add :egc_avail_points, :integer

      add :egc_prob_points, :integer

      add :egc_area_points, :integer

      add :egc_eng_lhr, :string

      add :egc_call_list, :string

      add :egc_user1, :string

      add :egc_user2, :string

      add :egc_hours_display, :boolean

      add :egc_tz_limit, :boolean

      add :egc_area_limit, :boolean

      add :egc_tz_eng_hours, :string

      add :egc_avail_limit, :string

      add :egc__qadi01, :integer

      add :egc_tz_points, :integer

      add :egc__chr01, :string

      add :egc__chr02, :string

      add :egc__int02, :integer

      add :egc__int01, :integer

      add :egc__log01, :boolean

      add :egc__log02, :boolean

      add :egc_mod_userid, :string

      add :egc_mod_date, :naive_datetime

      add :egc_prob_limit, :boolean

      add :egc_override_opt, :boolean

      add :egc__qadc03, :string

      add :egc__qadc04, :string

      add :egc_nbr, :integer

      add :egc__qadc07, :string

      add :egc__qadl05, :boolean

      add :egc__qadl06, :boolean

      add :egc__qadl07, :boolean

      add :egc__qadi04, :integer

      add :egc__qadi05, :integer

      add :egc__qadd01, :decimal

      add :egc__qadd02, :decimal

      add :egc__qadd03, :decimal

      add :egc__qadt01, :naive_datetime

      add :egc__qadt02, :naive_datetime

      add :egc__qadt03, :naive_datetime

      add :egc_domain, :string

      add :oid_egc_ctrl, :decimal

      add :egc_call_header, :boolean

      add :egc_create_visit, :boolean

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DSR_MSTR") do
      add :dsr_req_nbr, :string

      add :dsr_site, :string

      add :dsr_ord_date, :naive_datetime

      add :dsr_due_date, :naive_datetime

      add :dsr_part, :string

      add :dsr_qty_req, :decimal

      add :dsr_status, :string

      add :dsr_rmks, :string

      add :dsr_rev, :string

      add :dsr_project, :string

      add :dsr_cmtindx, :integer

      add :dsr_so_job, :string

      add :dsr_loc, :string

      add :dsr_user1, :string

      add :dsr_user2, :string

      add :dsr__chr01, :string

      add :dsr__chr02, :string

      add :dsr__chr03, :string

      add :dsr__chr04, :string

      add :dsr__chr05, :string

      add :dsr__dte01, :naive_datetime

      add :dsr__dte02, :naive_datetime

      add :dsr__dec01, :decimal

      add :dsr__dec02, :decimal

      add :dsr__log01, :boolean

      add :dsr_app_owner, :string

      add :dsr_domain, :string

      add :oid_dsr_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FSLP_PLN") do
      add :fslp_plan_id, :string

      add :fslp_site, :string

      add :fslp_part, :string

      add :fslp_year, :integer

      add :fslp_line, :string

      add :fslp_prod_fcst, :decimal

      add :fslp_prod_act, :decimal

      add :fslp_user1, :string

      add :fslp_user2, :string

      add :fslp__dec01, :decimal

      add :fslp__dec02, :decimal

      add :fslp__dec03, :decimal

      add :fslp__dec04, :decimal

      add :fslp_domain, :string

      add :oid_fslp_pln, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FKT_MSTR") do
      add :fkt_bom_code, :string

      add :fkt_eng_code, :string

      add :fkt_loc, :string

      add :fkt_mod_date, :naive_datetime

      add :fkt_part, :string

      add :fkt_type, :string

      add :fkt_serial, :string

      add :fkt_site, :string

      add :fkt__chr01, :string

      add :fkt__chr02, :string

      add :fkt__chr03, :string

      add :fkt__chr04, :string

      add :fkt__dec01, :decimal

      add :fkt__dec02, :decimal

      add :fkt__dec03, :decimal

      add :fkt__dte01, :naive_datetime

      add :fkt__dte02, :naive_datetime

      add :fkt__dte03, :naive_datetime

      add :fkt__log01, :boolean

      add :fkt__log02, :boolean

      add :fkt__log03, :boolean

      add :fkt__qadc01, :string

      add :fkt__qadc02, :string

      add :fkt__qadc03, :string

      add :fkt__qadc04, :string

      add :fkt__qadd01, :naive_datetime

      add :fkt__qadd02, :naive_datetime

      add :fkt__qadd03, :naive_datetime

      add :fkt__qadde01, :decimal

      add :fkt__qadde02, :decimal

      add :fkt__qadde03, :decimal

      add :fkt__qadl01, :boolean

      add :fkt__qadl02, :boolean

      add :fkt__qadl03, :boolean

      add :fkt_curr_site, :string

      add :fkt_curr_loc, :string

      add :fkt_eff_date, :naive_datetime

      add :fkt_in_use, :boolean

      add :fkt_complete, :boolean

      add :fkt_rev, :string

      add :fkt_order, :boolean

      add :fkt_mod_userid, :string

      add :fkt_user1, :string

      add :fkt_user2, :string

      add :fkt_domain, :string

      add :oid_fkt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_FA_MSTR") do
      add :fa_id, :string

      add :fa_entity, :string

      add :fa_post, :boolean

      add :fa_dep, :boolean

      add :fa_desc1, :string

      add :fa_receiver, :string

      add :fa_auth_number, :string

      add :fa_qty, :integer

      add :fa_code, :string

      add :fa_startdt, :naive_datetime

      add :fa_wardt, :naive_datetime

      add :fa_disp_dt, :naive_datetime

      add :fa_disp_rsn, :string

      add :fa_puramt, :decimal

      add :fa_replamt, :decimal

      add :fa_dispamt, :decimal

      add :fa_salvamt, :decimal

      add :fa_custodian, :string

      add :fa_facls_id, :string

      add :fa_parent, :string

      add :fa_vendsrc, :string

      add :fa_po, :string

      add :fa_fabch_id, :string

      add :fa_cmtindx, :integer

      add :fa_ins_co, :string

      add :fa_ins_date, :naive_datetime

      add :fa_ins_nbr, :string

      add :fa_insamt, :decimal

      add :fa_migrate, :boolean

      add :fa_mod_userid, :string

      add :fa_mod_date, :naive_datetime

      add :fa_user1, :string

      add :fa_user2, :string

      add :fa__chr01, :string

      add :fa__chr02, :string

      add :fa__chr03, :string

      add :fa__chr04, :string

      add :fa__dec01, :decimal

      add :fa__dec02, :decimal

      add :fa__dec03, :decimal

      add :fa__dec04, :decimal

      add :fa__log01, :boolean

      add :fa__log02, :boolean

      add :fa__log03, :boolean

      add :fa__log04, :boolean

      add :fa__dte01, :naive_datetime

      add :fa__dte02, :naive_datetime

      add :fa__dte03, :naive_datetime

      add :fa__dte04, :naive_datetime

      add :fa__int01, :integer

      add :fa__int02, :integer

      add :fa__int03, :integer

      add :fa__int04, :integer

      add :fa__qadc01, :string

      add :fa__qadd01, :decimal

      add :fa__qadl01, :boolean

      add :fa__qadi01, :integer

      add :fa__qadt01, :naive_datetime

      add :fa_split_from, :string

      add :fa_split_date, :naive_datetime

      add :fa_faloc_id, :string

      add :fa__qadc02, :string

      add :fa_domain, :string

      add :oid_fa_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ERS_MSTR") do
      add :ers_vend, :string

      add :ers_site, :string

      add :ers_part, :string

      add :ers_opt, :integer

      add :ers_pr_lst_tp, :integer

      add :ers_user1, :string

      add :ers_user2, :string

      add :ers__qadc01, :string

      add :ers__qadc02, :string

      add :ers_mod_date, :naive_datetime

      add :ers_mod_userid, :string

      add :ers_domain, :string

      add :oid_ers_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DELT_MSTR") do
      add :delt_site, :string

      add :delt_ctry, :string

      add :delt_state, :string

      add :delt_city, :string

      add :delt_transit, :integer

      add :delt_method, :string

      add :delt_userc01, :string

      add :delt_userc02, :string

      add :delt_userd01, :decimal

      add :delt_usert01, :naive_datetime

      add :delt_useri01, :integer

      add :delt_userl01, :boolean

      add :delt__qadc01, :string

      add :delt__qadd01, :decimal

      add :delt__qadi01, :integer

      add :delt__qadl01, :boolean

      add :delt__qadt01, :naive_datetime

      add :delt_mod_date, :naive_datetime

      add :delt_mod_userid, :string

      add :delt_use_category, :string

      add :delt_domain, :string

      add :oid_delt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESREC_DET") do
      add :oid_esrec_det, :decimal

      add :oid_erecord, :decimal

      add :oid_esig_mstr, :decimal

      add :oid_escd_det, :decimal

      add :esrec_table_name, :string

      add :esrec_record_order, :integer

      add :esrec_mod_date, :naive_datetime

      add :esrec_mod_userid, :string

      add :esrec_user1, :string

      add :esrec_user2, :string

      add :esrec__qadc01, :string

      add :esrec__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ESCAT_MSTR") do
      add :oid_escat_mstr, :decimal

      add :escat_category_code, :string

      add :escat_pplib, :string

      add :escat_top_table_name, :string

      add :escat_preview_prompt, :boolean

      add :escat_mod_date, :naive_datetime

      add :escat_mod_userid, :string

      add :escat_user1, :string

      add :escat_user2, :string

      add :escat__qadc01, :string

      add :escat__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DY_MSTR") do
      add :dy_dy_code, :string

      add :dy_desc, :string

      add :dy_type, :string

      add :dy_next_pgdet, :integer

      add :dy_next_pgcen, :integer

      add :dy_last_entdet, :string

      add :dy_last_entcen, :string

      add :dy_user1, :string

      add :dy_user2, :string

      add :dy__qadc01, :string

      add :dy_domain, :string

      add :oid_dy_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DPRD_DET") do
      add :dprd_asset, :string

      add :dprd_entity, :string

      add :dprd_book, :string

      add :dprd_pd, :integer

      add :dprd_pd_date, :naive_datetime

      add :dprd_amt, :decimal

      add :dprd_curr_amt, :decimal

      add :dprd_ex_rate, :decimal

      add :dprd_ent_ex, :decimal

      add :dprd_post, :boolean

      add :dprd_effdate, :naive_datetime

      add :dprd_acct, :string

      add :dprd_sub, :string

      add :dprd_cc, :string

      add :dprd_proj, :string

      add :dprd_type, :string

      add :dprd_line, :integer

      add :dprd_method, :string

      add :dprd__qad01, :string

      add :dprd__qad02, :string

      add :dprd_pd_closed, :boolean

      add :dprd_rflag, :boolean

      add :dprd_ref, :string

      add :dprd_gl_line, :integer

      add :dprd_user1, :string

      add :dprd_user2, :string

      add :dprd_desc, :string

      add :dprd_cost_pct, :decimal

      add :dprd_ex_rate2, :decimal

      add :dprd_ex_ratetype, :string

      add :dprd_exru_seq, :integer

      add :oid_dprd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CS_MSTR") do
      add :cs_set, :string

      add :cs_desc, :string

      add :cs_method, :string

      add :cs_type, :string

      add :cs_user1, :string

      add :cs_user2, :string

      add :cs__qadc01, :string

      add :cs_domain, :string

      add :oid_cs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_EDLG_HIST") do
      add :edlg_doc_id, :integer

      add :edlg_doc_sufx, :integer

      add :edlg_app_id, :string

      add :edlg_date_sent, :naive_datetime

      add :edlg_time_sent, :string

      add :edlg_err_stat, :string

      add :edlg_mod_userid, :string

      add :edlg_mod_date, :naive_datetime

      add :edlg_user1, :string

      add :edlg_user2, :string

      add :edlg__chr01, :string

      add :edlg__chr02, :string

      add :edlg__dec01, :decimal

      add :edlg__dec02, :decimal

      add :edlg__int01, :integer

      add :edlg__int02, :integer

      add :edlg__log01, :boolean

      add :edlg__log02, :boolean

      add :edlg__dte01, :naive_datetime

      add :edlg__dte02, :naive_datetime

      add :edlg__qadc01, :string

      add :edlg__qadc02, :string

      add :edlg__qadc03, :string

      add :edlg__qadc04, :string

      add :edlg__qadd01, :decimal

      add :edlg__qadd02, :decimal

      add :edlg__qadi01, :integer

      add :edlg__qadi02, :integer

      add :edlg__qadl01, :boolean

      add :edlg__qadl02, :boolean

      add :edlg__qadt01, :naive_datetime

      add :edlg__qadt02, :naive_datetime

      add :edlg_domain, :string

      add :oid_edlg_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DRP_CTRL") do
      add :drp_auto_req, :boolean

      add :drp_req_nbr, :integer

      add :drp_rcmmts, :boolean

      add :drp_user1, :string

      add :drp_user2, :string

      add :drp__qadi01, :integer

      add :drp_req_pre, :string

      add :drp_auto_nbr, :boolean

      add :drp_nbr, :integer

      add :drp_nbr_pre, :string

      add :drp_dcmmts, :boolean

      add :drp_mrp, :boolean

      add :drp__qadc01, :string

      add :drp_domain, :string

      add :oid_drp_ctrl, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNCS_MSTR") do
      add :cncs_shipto, :string

      add :cncs_part, :string

      add :cncs_consign_flag, :boolean

      add :cncs_max_aging_days, :integer

      add :cncs_consign_loc, :string

      add :cncs_intrans_loc, :string

      add :cncs_auto_replenish, :boolean

      add :cncs_mod_userid, :string

      add :cncs_mod_date, :naive_datetime

      add :cncs_user1, :string

      add :cncs_user2, :string

      add :cncs__qadc01, :string

      add :cncs__qadc02, :string

      add :cncs_domain, :string

      add :oid_cncs_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CDF_MSTR") do
      add :cdf_part, :string

      add :cdf_desc, :string

      add :cdf_ca_category, :string

      add :cdf_model, :string

      add :cdf_ca_int_type, :string

      add :cdf_ca_status, :string

      add :cdf_ca_nxtsts, :string

      add :cdf_ca_pri, :integer

      add :cdf_ca_severity, :string

      add :cdf_ca_que, :string

      add :cdf_ca_desc, :string

      add :cdf_ca_prob, :string

      add :cdf_ca_type, :string

      add :cdf_group, :string

      add :cdf_user1, :string

      add :cdf_user2, :string

      add :cdf_exec, :string

      add :cdf_status_type, :string

      add :cdf__chr01, :string

      add :cdf__chr02, :string

      add :cdf__chr03, :string

      add :cdf__chr04, :string

      add :cdf__dec01, :decimal

      add :cdf__dec02, :decimal

      add :cdf__dec03, :decimal

      add :cdf__dte01, :naive_datetime

      add :cdf__dte02, :naive_datetime

      add :cdf__dte03, :naive_datetime

      add :cdf__log01, :boolean

      add :cdf__log02, :boolean

      add :cdf__log03, :boolean

      add :cdf__qadc01, :string

      add :cdf__qadc02, :string

      add :cdf__qadc03, :string

      add :cdf__qadc04, :string

      add :cdf__qadd01, :naive_datetime

      add :cdf__qadd02, :naive_datetime

      add :cdf__qadd03, :naive_datetime

      add :cdf__qadde01, :decimal

      add :cdf__qadde02, :decimal

      add :cdf__qadde03, :decimal

      add :cdf__qadl01, :boolean

      add :cdf__qadl02, :boolean

      add :cdf__qadl03, :boolean

      add :cdf_ca_es_nbr, :string

      add :cdf_est_time, :string

      add :cdf_mod_userid, :string

      add :cdf_mod_date, :naive_datetime

      add :cdf_domain, :string

      add :oid_cdf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATAP_MSTR") do
      add :oid_atap_mstr, :decimal

      add :oid_att_mstr, :decimal

      add :atap_begin_date, :naive_datetime

      add :atap_audit_active, :boolean

      add :atap_table_name, :string

      add :atap_filter_criteria, :string

      add :atap_all_fields, :boolean

      add :atap_mod_date, :naive_datetime

      add :atap_mod_userid, :string

      add :atap_user1, :string

      add :atap_user2, :string

      add :atap__qadc01, :string

      add :atap__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DSS_MSTR") do
      add :dss_nbr, :string

      add :dss_shipsite, :string

      add :dss_rec_site, :string

      add :dss_created, :naive_datetime

      add :dss_due_date, :naive_datetime

      add :dss_shipdate, :naive_datetime

      add :dss_so_nbr, :string

      add :dss_po_nbr, :string

      add :dss_fob, :string

      add :dss_shipvia, :string

      add :dss_bol, :string

      add :dss_rmks, :string

      add :dss_status, :string

      add :dss_cmtindx, :integer

      add :dss_lang, :string

      add :dss_fr_list, :string

      add :dss_fr_terms, :string

      add :dss_cartons, :integer

      add :dss_user1, :string

      add :dss_user2, :string

      add :dss__qad01, :decimal

      add :dss__qad02, :decimal

      add :dss__qad03, :decimal

      add :dss__qad04, :integer

      add :dss__qad05, :decimal

      add :dss__chr01, :string

      add :dss__chr02, :string

      add :dss__chr03, :string

      add :dss__chr04, :string

      add :dss__chr05, :string

      add :dss__chr06, :string

      add :dss__chr07, :string

      add :dss__chr08, :string

      add :dss__chr09, :string

      add :dss__chr10, :string

      add :dss__dte01, :naive_datetime

      add :dss__dte02, :naive_datetime

      add :dss__dec01, :decimal

      add :dss__dec02, :decimal

      add :dss__log01, :boolean

      add :dss_app_owner, :string

      add :dss_weight, :decimal

      add :dss_weight_um, :string

      add :dss_fr_min_wt, :decimal

      add :dss_domain, :string

      add :oid_dss_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CONT_MSTR") do
      add :cont_type, :string

      add :cont_desc, :string

      add :cont_cmtindx, :integer

      add :cont_height, :decimal

      add :cont_width, :decimal

      add :cont_length, :decimal

      add :cont_hwl_um, :string

      add :cont_tare_weight, :decimal

      add :cont_max_load_weight, :decimal

      add :cont_weight_um, :string

      add :cont_volume, :decimal

      add :cont_volume_um, :string

      add :cont_size, :string

      add :cont_color, :string

      add :cont_class, :string

      add :cont_composition, :string

      add :cont_reusable, :boolean

      add :cont_returnable, :boolean

      add :cont_reference1, :string

      add :cont_reference2, :string

      add :cont_reference3, :string

      add :cont_reference4, :string

      add :cont_reference5, :string

      add :cont_mod_date, :naive_datetime

      add :cont_mod_userid, :string

      add :cont_user1, :string

      add :cont_user2, :string

      add :cont__qadc01, :string

      add :cont__qadc02, :string

      add :cont_thickness, :decimal

      add :cont_thickness_um, :string

      add :cont_owner, :integer

      add :cont_id_method, :string

      add :cont_special_reqmnts, :boolean

      add :cont_domain, :string

      add :oid_cont_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CF_MSTR") do
      add :cf_nbr, :string

      add :cf_type, :boolean

      add :cf_due_date, :naive_datetime

      add :cf_expt_date, :naive_datetime

      add :cf_entity, :string

      add :cf_curr, :string

      add :cf_ref, :string

      add :cf_expt_amt, :decimal

      add :cf_ref_amt, :decimal

      add :cf_cum_amt, :decimal

      add :cf_desc1, :string

      add :cf_desc2, :string

      add :cf_ldue_date, :naive_datetime

      add :cf_bank, :string

      add :cf_userid, :string

      add :cf_date, :naive_datetime

      add :cf_lastedit, :naive_datetime

      add :cf_cmtindx, :integer

      add :cf_ent_ex, :decimal

      add :cf_ex_rate, :decimal

      add :cf_user1, :string

      add :cf_user2, :string

      add :cf__chr01, :string

      add :cf__chr02, :string

      add :cf__chr03, :string

      add :cf__chr04, :string

      add :cf__chr05, :string

      add :cf__dte01, :naive_datetime

      add :cf__dte02, :naive_datetime

      add :cf__dec01, :decimal

      add :cf__dec02, :decimal

      add :cf__log01, :boolean

      add :cf_ex_rate2, :decimal

      add :cf_ex_ratetype, :string

      add :cf_exru_seq, :integer

      add :cf_domain, :string

      add :oid_cf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BKAD_DET") do
      add :bkad_bank, :string

      add :bkad_pay_method, :string

      add :bkad_module, :string

      add :bkad_addr, :string

      add :bkad_payment_nbr, :integer

      add :bkad_ref, :string

      add :bkad_processed, :boolean

      add :bkad_amt_chg, :decimal

      add :bkad_disc_chg, :decimal

      add :bkad_user1, :string

      add :bkad_user2, :string

      add :bkad_userc03, :string

      add :bkad_userc04, :string

      add :bkad_usert01, :naive_datetime

      add :bkad_usert02, :naive_datetime

      add :bkad_userl01, :boolean

      add :bkad_userl02, :boolean

      add :bkad__qadc01, :string

      add :bkad__qadc02, :string

      add :bkad_curr, :string

      add :bkad_alloc_id, :integer

      add :bkad_seq, :integer

      add :bkad_mod_date, :naive_datetime

      add :bkad_mod_userid, :string

      add :bkad_userc05, :string

      add :bkad_userd01, :decimal

      add :bkad_userd02, :decimal

      add :bkad_useri01, :integer

      add :bkad_useri02, :integer

      add :bkad__qadc03, :string

      add :bkad__qadc04, :string

      add :bkad__qadc05, :string

      add :bkad__qadd01, :decimal

      add :bkad__qadd02, :decimal

      add :bkad__qadi01, :integer

      add :bkad__qadi02, :integer

      add :bkad__qadl01, :boolean

      add :bkad__qadl02, :boolean

      add :bkad__qadt01, :naive_datetime

      add :bkad__qadt02, :naive_datetime

      add :bkad_domain, :string

      add :oid_bkad_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DSD_DET") do
      add :dsd_req_nbr, :string

      add :dsd_site, :string

      add :dsd_shipsite, :string

      add :dsd_shipdate, :naive_datetime

      add :dsd_due_date, :naive_datetime

      add :dsd_per_date, :naive_datetime

      add :dsd_part, :string

      add :dsd_qty_ord, :decimal

      add :dsd_qty_conf, :decimal

      add :dsd_qty_rcvd, :decimal

      add :dsd_qty_ship, :decimal

      add :dsd_transit, :decimal

      add :dsd_status, :string

      add :dsd_rmks, :string

      add :dsd_rev, :string

      add :dsd_git_site, :string

      add :dsd_git_acct, :string

      add :dsd_git_cc, :string

      add :dsd_project, :string

      add :dsd_cmtindx, :integer

      add :dsd_residual, :decimal

      add :dsd_loc, :string

      add :dsd_trans_id, :string

      add :dsd_updated, :boolean

      add :dsd_user1, :string

      add :dsd_user2, :string

      add :dsd__chr01, :string

      add :dsd__chr02, :string

      add :dsd__chr03, :string

      add :dsd__chr04, :string

      add :dsd__chr05, :string

      add :dsd__dte01, :naive_datetime

      add :dsd__dte02, :naive_datetime

      add :dsd__dec01, :decimal

      add :dsd__dec02, :decimal

      add :dsd__log01, :boolean

      add :dsd_nbr, :string

      add :dsd_qty_chg, :decimal

      add :dsd_po_nbr, :string

      add :dsd_pod_line, :integer

      add :dsd_git_sub, :string

      add :dsd_domain, :string

      add :oid_dsd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSLD_DET") do
      add :csld_ctry_code, :string

      add :csld_auth, :string

      add :csld_licen, :string

      add :csld_part, :string

      add :csld_max_amt, :decimal

      add :csld_max_qty, :integer

      add :csld_tot_amt, :decimal

      add :csld_tot_qty, :integer

      add :csld_curr, :string

      add :csld_cmtindx, :integer

      add :csld_user1, :string

      add :csld_user2, :string

      add :csld__qadc01, :string

      add :csld_domain, :string

      add :oid_csld_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNCUD_DET") do
      add :cncud_cncu_pkey, :integer

      add :cncud_cncix_pkey, :integer

      add :cncud_usage_qty, :decimal

      add :cncud_usage_um, :string

      add :cncud_usage_um_conv, :decimal

      add :cncud_ship_trnbr, :integer

      add :cncud_selfbill, :boolean

      add :cncud_qty_ship, :decimal

      add :cncud_stock_um, :string

      add :cncud_price, :decimal

      add :cncud_ship_value, :decimal

      add :cncud_curr, :string

      add :cncud_asn_shipper, :string

      add :cncud_ship_date, :naive_datetime

      add :cncud_current_loc, :string

      add :cncud_cust_dock, :string

      add :cncud_line_feed, :string

      add :cncud_aged_date, :naive_datetime

      add :cncud_orig_aged_date, :naive_datetime

      add :cncud_mod_userid, :string

      add :cncud_mod_date, :naive_datetime

      add :cncud_user1, :string

      add :cncud_user2, :string

      add :cncud__qadc01, :string

      add :cncud__qadc02, :string

      add :cncud_int_consignment, :boolean

      add :cncud_domain, :string

      add :oid_cncud_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CD_DET") do
      add :cd_ref, :string

      add :cd_cmmt, :string

      add :cd_type, :string

      add :cd_lang, :string

      add :cd_seq, :integer

      add :cd_user1, :string

      add :cd_user2, :string

      add :cd__qadc01, :string

      add :cd_domain, :string

      add :oid_cd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ACOD_MSTR") do
      add :acod_app_id, :string

      add :acod_doc_std, :string

      add :acod_doc_typ, :string

      add :acod_doc_rev, :string

      add :acod_tradptr_id, :string

      add :acod_fldname, :string

      add :acod_src_val, :string

      add :acod_targ_val, :string

      add :acod_desc, :string

      add :acod_mod_userid, :string

      add :acod_mod_date, :naive_datetime

      add :acod_user1, :string

      add :acod_user2, :string

      add :acod__dec01, :decimal

      add :acod__dec02, :decimal

      add :acod__int01, :integer

      add :acod__int02, :integer

      add :acod__log01, :boolean

      add :acod__log02, :boolean

      add :acod__dte01, :naive_datetime

      add :acod__dte02, :naive_datetime

      add :acod__qadc01, :string

      add :acod__qadc02, :string

      add :acod__qadc03, :string

      add :acod__qadc04, :string

      add :acod__qadd01, :decimal

      add :acod__qadd02, :decimal

      add :acod__qadi01, :integer

      add :acod__qadi02, :integer

      add :acod__qadl01, :boolean

      add :acod__qadl02, :boolean

      add :acod__qadt01, :naive_datetime

      add :acod__qadt02, :naive_datetime

      add :acod_domain, :string

      add :oid_acod_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DPT_MSTR") do
      add :dpt_dept, :string

      add :dpt_desc, :string

      add :dpt_bvar_acc, :string

      add :dpt_bvar_cc, :string

      add :dpt_bvrr_acc, :string

      add :dpt_bvrr_cc, :string

      add :dpt__qadc03, :string

      add :dpt__qadc04, :string

      add :dpt__qadc07, :string

      add :dpt__qadc08, :string

      add :dpt_lvrr_acc, :string

      add :dpt_lvrr_cc, :string

      add :dpt__qadc01, :string

      add :dpt__qadc02, :string

      add :dpt_lbr_acct, :string

      add :dpt_lbr_cc, :string

      add :dpt_bdn_acct, :string

      add :dpt_bdn_cc, :string

      add :dpt_lvar_acc, :string

      add :dpt_lvar_cc, :string

      add :dpt__qadc05, :string

      add :dpt__qadc06, :string

      add :dpt_lbr_cap, :integer

      add :dpt_cop_acct, :string

      add :dpt_cop_cc, :string

      add :dpt_user1, :string

      add :dpt_user2, :string

      add :dpt__chr01, :string

      add :dpt__chr02, :string

      add :dpt__chr03, :string

      add :dpt__chr04, :string

      add :dpt__chr05, :string

      add :dpt__dte01, :naive_datetime

      add :dpt__dte02, :naive_datetime

      add :dpt__dec01, :decimal

      add :dpt__dec02, :decimal

      add :dpt__log01, :boolean

      add :dpt_mod_date, :naive_datetime

      add :dpt_userid, :string

      add :dpt_bdn_sub, :string

      add :dpt_bvar_sub, :string

      add :dpt_bvrr_sub, :string

      add :dpt_cop_sub, :string

      add :dpt_lbr_sub, :string

      add :dpt_lvar_sub, :string

      add :dpt_lvrr_sub, :string

      add :dpt_domain, :string

      add :oid_dpt_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DF_MSTR") do
      add :df_type, :string

      add :df_format, :string

      add :df_desc, :string

      add :df_form_code, :string

      add :df_inv, :boolean

      add :df_user1, :string

      add :df_user2, :string

      add :df__qadc01, :string

      add :df_domain, :string

      add :oid_df_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CSIL_MSTR") do
      add :csil_ctry_code, :string

      add :csil_auth, :string

      add :csil_licen, :string

      add :csil_start, :naive_datetime

      add :csil_end, :naive_datetime

      add :csil_addr1, :string

      add :csil_addr2, :string

      add :csil_addr3, :string

      add :csil_cmtindx, :integer

      add :csil_addr4, :string

      add :csil_user1, :string

      add :csil_user2, :string

      add :csil__qadc01, :string

      add :csil_domain, :string

      add :oid_csil_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CP_MSTR") do
      add :cp_cust, :string

      add :cp_part, :string

      add :cp_cust_part, :string

      add :cp_comment, :string

      add :cp_user1, :string

      add :cp_user2, :string

      add :cp_userid, :string

      add :cp_mod_date, :naive_datetime

      add :cp_pkg_code, :string

      add :cp_cust_eco, :string

      add :cp_cust_partd, :string

      add :cp__qadc01, :string

      add :cp_domain, :string

      add :oid_cp_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ABSL_DET") do
      add :absl_abs_id, :string

      add :absl_abs_shipfrom, :string

      add :absl_order, :string

      add :absl_ord_line, :integer

      add :absl_inv_nbr, :string

      add :absl_lc_line, :integer

      add :absl_trl_code, :string

      add :absl_lc_amt, :decimal

      add :absl_charge_type, :string

      add :absl_ref, :string

      add :absl_confirmed, :boolean

      add :absl_inv_post, :boolean

      add :absl_ext_price, :decimal

      add :absl_acct, :string

      add :absl_cc, :string

      add :absl_taxable, :boolean

      add :absl_taxc, :string

      add :absl_sub, :string

      add :absl_project, :string

      add :absl_mod_userid, :string

      add :absl_mod_date, :naive_datetime

      add :absl_userc01, :string

      add :absl_userc02, :string

      add :absl__qadc01, :string

      add :absl__qadc02, :string

      add :absl_domain, :string

      add :oid_absl_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_DEFR_DET") do
      add :defr_nbr, :string

      add :defr_prefix, :string

      add :defr_line, :integer

      add :defr_inv_nbr, :string

      add :defr_curr, :string

      add :defr_cust, :string

      add :defr_eff_date, :naive_datetime

      add :defr_entity, :string

      add :defr_eu_nbr, :string

      add :defr_ex_rate, :decimal

      add :defr_ex_rate2, :decimal

      add :defr_ex_ratetype, :string

      add :defr_exru_seq, :integer

      add :defr_for, :string

      add :defr_accr_amt, :decimal

      add :defr_inv_amt, :decimal

      add :defr_per_period_amt, :decimal

      add :defr_period_curr_amt, :decimal

      add :defr_period_remain, :decimal

      add :defr_rev_amt, :decimal

      add :defr_rec_amt, :decimal

      add :defr_project, :string

      add :defr_sls_acct, :string

      add :defr_sls_sub, :string

      add :defr_sls_cc, :string

      add :defr_acct, :string

      add :defr_sub, :string

      add :defr_cc, :string

      add :defr_user1, :string

      add :defr_user2, :string

      add :defr_userd01, :decimal

      add :defr_useri01, :integer

      add :defr_userl01, :boolean

      add :defr_usert01, :naive_datetime

      add :defr__qadc01, :string

      add :defr__qadd01, :decimal

      add :defr__qadi01, :integer

      add :defr__qadl01, :boolean

      add :defr__qadt01, :naive_datetime

      add :defr_mod_userid, :string

      add :defr_mod_date, :naive_datetime

      add :defr__qadc02, :string

      add :defr_bill_to, :string

      add :defr_domain, :string

      add :oid_defr_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNSU_MSTR") do
      add :cnsu_pkey, :integer

      add :cnsu_batch, :integer

      add :cnsu_trans_date, :naive_datetime

      add :cnsu_eff_date, :naive_datetime

      add :cnsu_po_nbr, :string

      add :cnsu_pod_line, :integer

      add :cnsu_site, :string

      add :cnsu_part, :string

      add :cnsu_qty_used, :decimal

      add :cnsu_cum_qty, :decimal

      add :cnsu_lotser, :string

      add :cnsu_ref, :string

      add :cnsu_trnbr, :integer

      add :cnsu_print_flag, :boolean

      add :cnsu_export_flag, :boolean

      add :cnsu_mod_userid, :string

      add :cnsu_mod_date, :naive_datetime

      add :cnsu_user1, :string

      add :cnsu_user2, :string

      add :cnsu__qadc01, :string

      add :cnsu__qadc02, :string

      add :cnsu_edi_batch, :string

      add :cnsu_domain, :string

      add :oid_cnsu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CMT_DET") do
      add :cmt_indx, :integer

      add :cmt_seq, :integer

      add :cmt_ref, :string

      add :cmt_type, :string

      add :cmt_cmmt, :string

      add :cmt_print, :string

      add :cmt_lang, :string

      add :cmt_user1, :string

      add :cmt_user2, :string

      add :cmt_start, :naive_datetime

      add :cmt_expire, :naive_datetime

      add :cmt__qadc01, :string

      add :cmt_domain, :string

      add :oid_cmt_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCTR_HIST") do
      add :cctr_nbr, :string

      add :cctr_inv_nbr, :string

      add :cctr_cc_nbr, :string

      add :cctr_tx_date, :naive_datetime

      add :cctr_auth_nbr, :string

      add :cctr_amt, :decimal

      add :cctr_auth_expire_date, :naive_datetime

      add :cctr_avs_code, :string

      add :cctr_status, :string

      add :cctr_err_msg, :string

      add :cctr_merch_txn, :string

      add :cctr_cust_txn, :string

      add :cctr_aux_msg, :string

      add :cctr_action_code, :string

      add :cctr_ref_code, :string

      add :cctr_internal_tx, :boolean

      add :cctr_tx_type, :string

      add :cctr_auth_code, :string

      add :cctr_trnbr, :integer

      add :cctr_tx_time, :string

      add :cctr_mod_userid, :string

      add :cctr_mod_date, :naive_datetime

      add :cctr_user1, :string

      add :cctr_user2, :string

      add :cctr__qadc01, :string

      add :cctr__qadi01, :integer

      add :cctr__qadd01, :decimal

      add :cctr__qadl01, :boolean

      add :cctr__qadt01, :naive_datetime

      add :cctr_domain, :string

      add :oid_cctr_hist, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_COM_MSTR") do
      add :com_comm_code, :string

      add :com_desc, :string

      add :com_suppl, :boolean

      add :com_uom, :string

      add :com_user1, :string

      add :com_user2, :string

      add :com__log01, :boolean

      add :com__qad01, :string

      add :com__qad02, :string

      add :com__qad03, :boolean

      add :com_domain, :string

      add :oid_com_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNCU_MSTR") do
      add :cncu_pkey, :integer

      add :cncu_batch, :integer

      add :cncu_trans_date, :naive_datetime

      add :cncu_eff_date, :naive_datetime

      add :cncu_cust_usage_ref, :string

      add :cncu_cust_usage_date, :naive_datetime

      add :cncu_so_nbr, :string

      add :cncu_sod_line, :integer

      add :cncu_site, :string

      add :cncu_shipto, :string

      add :cncu_cust, :string

      add :cncu_part, :string

      add :cncu_custpart, :string

      add :cncu_usage_qty, :decimal

      add :cncu_usage_um, :string

      add :cncu_usage_um_conv, :decimal

      add :cncu_usage_so_um_conv, :decimal

      add :cncu_cum_qty, :decimal

      add :cncu_po, :string

      add :cncu_lotser, :string

      add :cncu_ref, :string

      add :cncu_auth, :string

      add :cncu_selfbill_auth, :string

      add :cncu_cust_job, :string

      add :cncu_cust_seq, :string

      add :cncu_cust_ref, :string

      add :cncu_modelyr, :string

      add :cncu_trnbr, :integer

      add :cncu_invoice, :string

      add :cncu_origin, :string

      add :cncu_manual_qty, :decimal

      add :cncu_mod_userid, :string

      add :cncu_mod_date, :naive_datetime

      add :cncu_user1, :string

      add :cncu_user2, :string

      add :cncu__qadc01, :string

      add :cncu__qadc02, :string

      add :cncu_domain, :string

      add :oid_cncu_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CLS_MSTR") do
      add :cls_class, :string

      add :cls_desc, :string

      add :cls_acct, :string

      add :cls_ac_acct, :string

      add :cls_exp_acct, :string

      add :cls_userid, :string

      add :cls_mod_date, :naive_datetime

      add :cls__qad01, :boolean

      add :cls__qad02, :string

      add :cls__qad03, :string

      add :cls_user1, :string

      add :cls_user2, :string

      add :oid_cls_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATWP_MSTR") do
      add :oid_atwp_mstr, :decimal

      add :oid_att_mstr, :decimal

      add :atwp_profile_type, :string

      add :atwp_collection, :string

      add :atwp_audit_active, :boolean

      add :atwp_filter_criteria, :string

      add :atwp_all_fields, :boolean

      add :atwp_mod_date, :naive_datetime

      add :atwp_mod_userid, :string

      add :atwp_user1, :string

      add :atwp_user2, :string

      add :atwp__qadc01, :string

      add :atwp__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNSS_MSTR") do
      add :cnss_supplier, :string

      add :cnss_part, :string

      add :cnss_consign_flag, :boolean

      add :cnss_max_aging_days, :integer

      add :cnss_mod_userid, :string

      add :cnss_mod_date, :naive_datetime

      add :cnss_user1, :string

      add :cnss_user2, :string

      add :cnss__qadc01, :string

      add :cnss__qadc02, :string

      add :cnss_domain, :string

      add :oid_cnss_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CMF_MSTR") do
      add :cmf_trans_nbr, :integer

      add :cmf_doc_type, :string

      add :cmf_doc_ref, :string

      add :cmf_status, :string

      add :cmf_mod_userid, :string

      add :cmf_mod_date, :naive_datetime

      add :cmf__qadc01, :string

      add :cmf_ref_date, :naive_datetime

      add :cmf_ref_time, :integer

      add :cmf_so_po, :string

      add :cmf_user1, :string

      add :cmf_user2, :string

      add :cmf_domain, :string

      add :oid_cmf_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_AC_MSTR") do
      add :ac_code, :string

      add :ac_xctr, :string

      add :ac_fpos, :integer

      add :ac_type, :string

      add :ac_desc, :string

      add :ac_xret_acc, :string

      add :ac_xret_cc, :string

      add :ac_curr, :string

      add :ac__qad03, :string

      add :ac_active, :boolean

      add :ac_fx_index, :string

      add :ac_user1, :string

      add :ac_user2, :string

      add :ac__qad02, :string

      add :ac__qad01, :naive_datetime

      add :ac_stat_acc, :string

      add :ac_stat_cc, :string

      add :ac__chr01, :string

      add :ac__chr02, :string

      add :ac__chr03, :string

      add :ac__chr04, :string

      add :ac__dte01, :naive_datetime

      add :ac__dte02, :naive_datetime

      add :ac__log01, :boolean

      add :ac__log02, :boolean

      add :ac_modl_only, :boolean

      add :ac_match_seq, :string

      add :ac_domain, :string

      add :oid_ac_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNSIX_MSTR") do
      add :cnsix_pkey, :integer

      add :cnsix_receipt_trnbr, :integer

      add :cnsix_receiver, :string

      add :cnsix_po_nbr, :string

      add :cnsix_pod_line, :integer

      add :cnsix_site, :string

      add :cnsix_part, :string

      add :cnsix_asn_shipper, :string

      add :cnsix_qty_consigned, :decimal

      add :cnsix_lotser, :string

      add :cnsix_ref, :string

      add :cnsix_aged_date, :naive_datetime

      add :cnsix_orig_aged_date, :naive_datetime

      add :cnsix_mod_userid, :string

      add :cnsix_mod_date, :naive_datetime

      add :cnsix_user1, :string

      add :cnsix_user2, :string

      add :cnsix__qadc01, :string

      add :cnsix__qadc02, :string

      add :cnsix_int_consignment, :boolean

      add :cnsix_domain, :string

      add :oid_cnsix_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CMD_DET") do
      add :cmd_trans_nbr, :integer

      add :cmd_file, :string

      add :cmd_key_val, :string

      add :cmd_field, :string

      add :cmd_val, :string

      add :cmd_user1, :string

      add :cmd_user2, :string

      add :cmd__qadc01, :string

      add :cmd_mod_userid, :string

      add :cmd_mod_date, :naive_datetime

      add :cmd_ref_date, :naive_datetime

      add :cmd_ref_time, :integer

      add :cmd_domain, :string

      add :oid_cmd_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CHG_MSTR") do
      add :chg_line, :string

      add :chg_from, :string

      add :chg_to, :string

      add :chg_time, :decimal

      add :chg_start, :decimal

      add :chg_user1, :string

      add :chg__chr01, :string

      add :chg__chr02, :string

      add :chg__chr03, :string

      add :chg__chr04, :string

      add :chg__chr05, :string

      add :chg__dec01, :decimal

      add :chg_site, :string

      add :chg_user2, :string

      add :chg_domain, :string

      add :oid_chg_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BA_MSTR") do
      add :ba_batch, :string

      add :ba_userid, :string

      add :ba_date, :naive_datetime

      add :ba_ctrl, :decimal

      add :ba_total, :decimal

      add :ba_bank, :string

      add :ba_status, :string

      add :ba_user1, :string

      add :ba_user2, :string

      add :ba_module, :string

      add :ba_doc_type, :string

      add :ba_beg_bal, :decimal

      add :ba__qadc01, :string

      add :ba_domain, :string

      add :oid_ba_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CNCIX_MSTR") do
      add :cncix_pkey, :integer

      add :cncix_ship_trnbr, :integer

      add :cncix_selfbill, :boolean

      add :cncix_so_nbr, :string

      add :cncix_sod_line, :integer

      add :cncix_site, :string

      add :cncix_shipto, :string

      add :cncix_cust, :string

      add :cncix_part, :string

      add :cncix_custpart, :string

      add :cncix_qty_ship, :decimal

      add :cncix_stock_um, :string

      add :cncix_price, :decimal

      add :cncix_ship_value, :decimal

      add :cncix_curr, :string

      add :cncix_asn_shipper, :string

      add :cncix_auth, :string

      add :cncix_po, :string

      add :cncix_ship_date, :naive_datetime

      add :cncix_qty_stock, :decimal

      add :cncix_current_loc, :string

      add :cncix_lotser, :string

      add :cncix_ref, :string

      add :cncix_cust_job, :string

      add :cncix_cust_seq, :string

      add :cncix_cust_ref, :string

      add :cncix_cust_dock, :string

      add :cncix_line_feed, :string

      add :cncix_modelyr, :string

      add :cncix_aged_date, :naive_datetime

      add :cncix_orig_aged_date, :naive_datetime

      add :cncix_intransit, :boolean

      add :cncix_mod_userid, :string

      add :cncix_mod_date, :naive_datetime

      add :cncix_user1, :string

      add :cncix_user2, :string

      add :cncix__qadc01, :string

      add :cncix__qadc02, :string

      add :cncix_int_consignment, :boolean

      add :cncix_domain, :string

      add :oid_cncix_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATAK_DET") do
      add :oid_atak_det, :decimal

      add :oid_atap_mstr, :decimal

      add :atak_field_name, :string

      add :atak_key_type, :string

      add :atak_mod_date, :naive_datetime

      add :atak_mod_userid, :string

      add :atak_user1, :string

      add :atak_user2, :string

      add :atak__qadc01, :string

      add :atak__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ALD_DET") do
      add :ald_code, :string

      add :ald_acc, :string

      add :ald_cc, :string

      add :ald_project, :string

      add :ald_pct, :decimal

      add :ald_user1, :string

      add :ald_user2, :string

      add :ald__qad02, :string

      add :ald__qad01, :naive_datetime

      add :ald_sub, :string

      add :ald_domain, :string

      add :oid_ald_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_CCT_MSTR") do
      add :cct_charge_type, :string

      add :cct_container_type, :boolean

      add :cct_desc1, :string

      add :cct_desc2, :string

      add :cct_desc3, :string

      add :cct_desc4, :string

      add :cct_prgm, :string

      add :cct_mod_userid, :string

      add :cct_mod_date, :naive_datetime

      add :cct_userc01, :string

      add :cct_userc02, :string

      add :cct__qadc01, :string

      add :cct__qadc02, :string

      add :cct_domain, :string

      add :oid_cct_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BK_MSTR") do
      add :bk_code, :string

      add :bk_acct, :string

      add :bk_cc, :string

      add :bk_check, :integer

      add :bk_desc, :string

      add :bk_curr, :string

      add :bk__qadc10, :string

      add :bk__qadc12, :string

      add :bk_user1, :string

      add :bk_user2, :string

      add :bk_entity, :string

      add :bk_pip_acct, :string

      add :bk_pip_cc, :string

      add :bk_bk_acct1, :string

      add :bk_bk_acct2, :string

      add :bk_userid, :string

      add :bk_mod_date, :naive_datetime

      add :bk__qadc02, :string

      add :bk__qadc03, :string

      add :bk__qadc04, :string

      add :bk__qadc05, :string

      add :bk_min_drft, :decimal

      add :bk_max_drft, :decimal

      add :bk_drft_chg, :decimal

      add :bk_drft_chg_pct, :decimal

      add :bk_dftar_acct, :string

      add :bk_dftar_cc, :string

      add :bk_bkchg_acct, :string

      add :bk_bkchg_cc, :string

      add :bk_disc_acct, :string

      add :bk_disc_cc, :string

      add :bk_ddft_acct, :string

      add :bk_ddft_cc, :string

      add :bk_dftap_acct, :string

      add :bk_dftap_cc, :string

      add :bk_bktx_acct, :string

      add :bk_bktx_cc, :string

      add :bk_cdft_acct, :string

      add :bk_cdft_cc, :string

      add :bk_edft_acct, :string

      add :bk_edft_cc, :string

      add :bk__qadc01, :string

      add :bk__qadc06, :string

      add :bk__qadc07, :string

      add :bk__qadc08, :string

      add :bk__qadc09, :string

      add :bk_sub, :string

      add :bk_bkchg_sub, :string

      add :bk_bktx_sub, :string

      add :bk_cdft_sub, :string

      add :bk_ddft_sub, :string

      add :bk_dftap_sub, :string

      add :bk_dftar_sub, :string

      add :bk_disc_sub, :string

      add :bk_edft_sub, :string

      add :bk_pip_sub, :string

      add :bk__qadc11, :string

      add :bk_validation, :string

      add :bk_domain, :string

      add :oid_bk_mstr, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_BTB_DET") do
      add :btb_so, :string

      add :btb_sod_line, :integer

      add :btb_cm_addr, :string

      add :btb_cm_part, :string

      add :btb_cm_desc, :string

      add :btb_so_price, :decimal

      add :btb_pr_so, :string

      add :btb_pr_sod_line, :integer

      add :btb_user1, :string

      add :btb_user2, :string

      add :btb_mod_userid, :string

      add :btb_mod_date, :naive_datetime

      add :btb__qadc01, :string

      add :btb_domain, :string

      add :oid_btb_det, :decimal

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end

    create table("QAD_ATC_CTRL") do
      add :oid_atc_ctrl, :decimal

      add :atc_storage_shutdown, :boolean

      add :atc_logfile, :string

      add :atc_index1, :integer

      add :atc_mod_date, :naive_datetime

      add :atc_mod_userid, :string

      add :atc_user1, :string

      add :atc_user2, :string

      add :atc__qadc01, :string

      add :atc__qadc02, :string

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop table("qad_wo_mstr")

    drop table("qad_wod_det")

    drop table("qad_wlt_mstr")

    drop table("qad_wlrm_mstr")

    drop table("qad_wlrd_det")

    drop table("qad_wld_det")

    drop table("qad_wlbm_mstr")

    drop table("qad_vrc_ctrl")

    drop table("qad_vpo_det")

    drop table("qad_vep_mstr")

    drop table("qad_usrw_wkfl")

    drop table("qad_um_mstr")

    drop table("qad_txhd_det")

    drop table("qad_trld_det")

    drop table("qad_vo_mstr")

    drop table("qad_vef_ctrl")

    drop table("qad_usrg_mstr")

    drop table("qad_ufd_det")

    drop table("qad_taxd_det")

    drop table("qad_vee_mstr")

    drop table("qad_usrgd_det")

    drop table("qad_udd_det")

    drop table("qad_tot_mstr")

    drop table("qad_bl_ctrl")

    drop table("qad_vex_mstr")

    drop table("qad_usrc_ctrl")

    drop table("qad_tzo_mstr")

    drop table("qad_txbd_det")

    drop table("qad_vew_mstr")

    drop table("qad_vecd_det")

    drop table("qad_uspw_hist")

    drop table("qad_tzod_det")

    drop table("qad_tx2_mstr")

    drop table("qad_tm_mstr")

    drop table("qad_iro_det")

    drop table("qad_ves_mstr")

    drop table("qad_vd_mstr")

    drop table("qad_uslh_hist")

    drop table("qad_typ_mstr")

    drop table("qad_tx2d_det")

    drop table("qad_te_mstr")

    drop table("qad_ssm_mstr")

    drop table("qad_vdf_mstr")

    drop table("qad_txz_mstr")

    drop table("qad_tr_hist")

    drop table("qad_tbl_mstr")

    drop table("qad_verd_det")

    drop table("qad_upd_det")

    drop table("qad_txrd_det")

    drop table("qad_sytf_mstr")

    drop table("qad_vepd_det")

    drop table("qad_usrl_det")

    drop table("qad_txe_mstr")

    drop table("qad_trgl_det")

    drop table("qad_shft_det")

    drop table("qad_vdc_ctrl")

    drop table("qad_url_mstr")

    drop table("qad_txr_mstr")

    drop table("qad_tblc_mstr")

    drop table("qad_tblcd_det")

    drop table("qad_sv_mstr")

    drop table("qad_srr_mstr")

    drop table("qad_sosr_mstr")

    drop table("qad_sdtd_det")

    drop table("qad_tag_mstr")

    drop table("qad_src_ctrl")

    drop table("qad_sop_det")

    drop table("qad_si_mstr")

    drop table("qad_svc_ctrl")

    drop table("qad_sro_mstr")

    drop table("qad_sosrd_det")

    drop table("qad_slr_mstr")

    drop table("qad_shop_cal")

    drop table("qad_spt_det")

    drop table("qad_sodr_det")

    drop table("qad_sim_det")

    drop table("qad_shc_ctrl")

    drop table("qad_sdt_mstr")

    drop table("qad_sttqd_det")

    drop table("qad_sph_hist")

    drop table("qad_sodlc_det")

    drop table("qad_sg_mstr")

    drop table("qad_ssd_det")

    drop table("qad_spc_ctrl")

    drop table("qad_socc_mstr")

    drop table("qad_sgcd_det")

    drop table("qad_mpd_det")

    drop table("qad_sroc_ctrl")

    drop table("qad_sor_mstr")

    drop table("qad_slrd_det")

    drop table("qad_seq_mstr")

    drop table("qad_scc_mstr")

    drop table("qad_sp_mstr")

    drop table("qad_sod_det")

    drop table("qad_shd_det")

    drop table("qad_sd_mstr")

    drop table("qad_sb_mstr")

    drop table("qad_salh_hist")

    drop table("qad_so_mstr")

    drop table("qad_shpd_hist")

    drop table("qad_sgad_det")

    drop table("qad_sct_det")

    drop table("qad_sbc_mstr")

    drop table("qad_soc_ctrl")

    drop table("qad_shtr_det")

    drop table("qad_sc_mstr")

    drop table("qad_sbic_ctl")

    drop table("qad_sadh_hist")

    drop table("qad_rsc_ctrl")

    drop table("qad_shpc_ctrl")

    drop table("qad_sfh_hist")

    drop table("qad_sa_mstr")

    drop table("qad_rs_mstr")

    drop table("qad_rqpo_ref")

    drop table("qad_max_mstr")

    drop table("qad_sfb_det")

    drop table("qad_schd_det")

    drop table("qad_sar_mstr")

    drop table("qad_rqm_mstr")

    drop table("qad_rqa_mstr")

    drop table("qad_reg_mstr")

    drop table("qad_qor_mstr")

    drop table("qad_sca_mstr")

    drop table("qad_sal_mstr")

    drop table("qad_rst_mstr")

    drop table("qad_rql_mstr")

    drop table("qad_req_det")

    drop table("qad_sbd_det")

    drop table("qad_sac_ctrl")

    drop table("qad_rq_mstr")

    drop table("qad_rqda_det")

    drop table("qad_rma_mstr")

    drop table("qad_qr_test")

    drop table("qad_sah_hist")

    drop table("qad_rsn_ref")

    drop table("qad_rqh_hist")

    drop table("qad_rnd_mstr")

    drop table("qad_rcsd_det")

    drop table("qad_qaddb_ctrl")

    drop table("qad_sad_det")

    drop table("qad_rqf_ctrl")

    drop table("qad_rmd_det")

    drop table("qad_rcf_ctrl")

    drop table("qad_qod_det")

    drop table("qad_pid_det")

    drop table("qad_rsud_det")

    drop table("qad_rqm_det")

    drop table("qad_rps_mstr")

    drop table("qad_rdf_mstr")

    drop table("qad_rqr_mstr")

    drop table("qad_rhd_hist")

    drop table("qad_qtbl_ext")

    drop table("qad_qob_det")

    drop table("qad_ps_mstr")

    drop table("qad_poul_mstr")

    drop table("qad_lpm_mstr")

    drop table("qad_ro_det")

    drop table("qad_rcsx_ref")

    drop table("qad_qo_mstr")

    drop table("qad_qad_wkfl")

    drop table("qad_ptp_det")

    drop table("qad_prd_det")

    drop table("qad_lcap_hist")

    drop table("qad_rmc_ctrl")

    drop table("qad_rcc_mstr")

    drop table("qad_qodr_det")

    drop table("qad_pvod_det")

    drop table("qad_rcs_mstr")

    drop table("qad_qcc_ctrl")

    drop table("qad_ptqa_det")

    drop table("qad_prh_hist")

    drop table("qad_pl_mstr")

    drop table("qad_pjsx_det")

    drop table("qad_qoc_ctrl")

    drop table("qad_pt_mstr")

    drop table("qad_pou_mstr")

    drop table("qad_pin_mstr")

    drop table("qad_pct_mstr")

    drop table("qad_qcs_mstr")

    drop table("qad_pr_mstr")

    drop table("qad_pod_det")

    drop table("qad_pjt_mstr")

    drop table("qad_lblc_ctrl")

    drop table("qad_knbl_det")

    drop table("qad_qcd_det")

    drop table("qad_prj_mstr")

    drop table("qad_poc_ctrl")

    drop table("qad_pjs_mstr")

    drop table("qad_pigc_det")

    drop table("qad_pshc_ctrl")

    drop table("qad_pj_mstr")

    drop table("qad_pig_mstr")

    drop table("qad_attmp_mstr")

    drop table("qad_pth_hist")

    drop table("qad_pp_plan")

    drop table("qad_pli_mstr")

    drop table("qad_pjc_ctrl")

    drop table("qad_pq_mstr")

    drop table("qad_plsd_det")

    drop table("qad_pgm_det")

    drop table("qad_po_mstr")

    drop table("qad_plid_det")

    drop table("qad_pgc_ctrl")

    drop table("qad_pal_mstr")

    drop table("qad_nr_mstr")

    drop table("qad_pih_hist")

    drop table("qad_pac_mstr")

    drop table("qad_ncc_ctrl")

    drop table("qad_pic_ctrl")

    drop table("qad_opc_ctrl")

    drop table("qad_mrpc_ctrl")

    drop table("qad_mnd_det")

    drop table("qad_pc_mstr")

    drop table("qad_msg_mstr")

    drop table("qad_mof_mstr")

    drop table("qad_lvr_det")

    drop table("qad_pcc_ctrl")

    drop table("qad_oa_det")

    drop table("qad_mps_mstr")

    drop table("qad_mfrel_mstr")

    drop table("qad_lot_mstr")

    drop table("qad_pald_det")

    drop table("qad_nrh_hist")

    drop table("qad_mph_hist")

    drop table("qad_ma_mstr")

    drop table("qad_pex_mstr")

    drop table("qad_op_hist")

    drop table("qad_mon_mstr")

    drop table("qad_maxt_det")

    drop table("qad_ln_mstr")

    drop table("qad_opgl_det")

    drop table("qad_mnp_det")

    drop table("qad_ls_mstr")

    drop table("qad_lnf_det")

    drop table("qad_ocm_mstr")

    drop table("qad_mfsd_det")

    drop table("qad_lpmd_det")

    drop table("qad_lna_det")

    drop table("qad_mrp_det")

    drop table("qad_mnt_det")

    drop table("qad_lngd_det")

    drop table("qad_lad_det")

    drop table("qad_its_mstr")

    drop table("qad_mfc_ctrl")

    drop table("qad_lgsi_det")

    drop table("qad_knb_mstr")

    drop table("qad_knbcd_det")

    drop table("qad_lc_mstr")

    drop table("qad_knbsm_mstr")

    drop table("qad_kbtr_hist")

    drop table("qad_itm_det")

    drop table("qad_ilg_hist")

    drop table("qad_idh_hist")

    drop table("qad_grx_mstr")

    drop table("qad_grit_wkf")

    drop table("qad_lacd_det")

    drop table("qad_kbdt_mstr")

    drop table("qad_isp_mstr")

    drop table("qad_insd_det")

    drop table("qad_knpd_det")

    drop table("qad_knbdd_mstr")

    drop table("qad_ivs_ctrl")

    drop table("qad_isb_mstr")

    drop table("qad_ieh_hist")

    drop table("qad_hlp_mstr")

    drop table("qad_grrd_det")

    drop table("qad_knbs_det")

    drop table("qad_knbadc_hist")

    drop table("qad_itsd_det")

    drop table("qad_iraw_det")

    drop table("qad_imap_det")

    drop table("qad_itmh_hist")

    drop table("qad_iph_hist")

    drop table("qad_idhr_hist")

    drop table("qad_grx3_wkfl")

    drop table("qad_kbpp_mstr")

    drop table("qad_isvc_mstr")

    drop table("qad_in_mstr")

    drop table("qad_ihr_hist")

    drop table("qad_icc_ctrl")

    drop table("qad_grx1_wkfl")

    drop table("qad_kbmd_mstr")

    drop table("qad_iss_mstr")

    drop table("qad_ins_mstr")

    drop table("qad_ihcc_hist")

    drop table("qad_kbc_ctrl")

    drop table("qad_isd_det")

    drop table("qad_ind_det")

    drop table("qad_ie_mstr")

    drop table("qad_hwm_det")

    drop table("qad_ipd_det")

    drop table("qad_ih_hist")

    drop table("qad_idhlc_hist")

    drop table("qad_grx2_wkfl")

    drop table("qad_grid_det")

    drop table("qad_gral_det")

    drop table("qad_glr_mstr")

    drop table("qad_ied_det")

    drop table("qad_grqd_det")

    drop table("qad_grcd_det")

    drop table("qad_gltr_hist")

    drop table("qad_ibh_hist")

    drop table("qad_grtx_det")

    drop table("qad_gl_ctrl")

    drop table("qad_glec_det")

    drop table("qad_ftch_hist")

    drop table("qad_gr_ctrl")

    drop table("qad_gri_mstr")

    drop table("qad_grbg_det")

    drop table("qad_gltm_mstr")

    drop table("qad_grv_det")

    drop table("qad_grac_det")

    drop table("qad_glptr_hist")

    drop table("qad_ft_mstr")

    drop table("qad_gras_det")

    drop table("qad_gimd_mstr")

    drop table("qad_fpd_cost")

    drop table("qad_flsd_det")

    drop table("qad_grad_det")

    drop table("qad_fwk_mstr")

    drop table("qad_fsd_det")

    drop table("qad_fpci_mstr")

    drop table("qad_fct_mstr")

    drop table("qad_gltmd_det")

    drop table("qad_gip_det")

    drop table("qad_fsp1_pln")

    drop table("qad_fpst_mstr")

    drop table("qad_fm_mstr")

    drop table("qad_fabchd_det")

    drop table("qad_fsu_mstr")

    drop table("qad_frzd_det")

    drop table("qad_fp1_plan")

    drop table("qad_flh_mstr")

    drop table("qad_eswpfil_det")

    drop table("qad_glct_det")

    drop table("qad_frm_mstr")

    drop table("qad_fn_mstr")

    drop table("qad_flff_mstr")

    drop table("qad_fsp3_pln")

    drop table("qad_frd_det")

    drop table("qad_fnh_hist")

    drop table("qad_fcg_mstr")

    drop table("qad_fal_mstr")

    drop table("qad_fsp2_pln")

    drop table("qad_fnd_det")

    drop table("qad_fcd_mstr")

    drop table("qad_faloc_mstr")

    drop table("qad_fsh_mstr")

    drop table("qad_flsc_mstr")

    drop table("qad_fis_mstr")

    drop table("qad_fauop_det")

    drop table("qad_fac_ctrl")

    drop table("qad_fp3_plan")

    drop table("qad_ff_mstr")

    drop table("qad_famt_mstr")

    drop table("qad_facl_cal")

    drop table("qad_faadj_mstr")

    drop table("qad_fp2_plan")

    drop table("qad_fc_det")

    drop table("qad_famtr_mstr")

    drop table("qad_facls_mstr")

    drop table("qad_exr_rate")

    drop table("qad_escx_det")

    drop table("qad_fh_mstr")

    drop table("qad_fas_ctrl")

    drop table("qad_fact_ctrl")

    drop table("qad_faba_det")

    drop table("qad_et_ctrl")

    drop table("qad_fcc_mstr")

    drop table("qad_fad_det")

    drop table("qad_eus_mstr")

    drop table("qad_emsg_mstr")

    drop table("qad_famtd_det")

    drop table("qad_facd_det")

    drop table("qad_eswpmp_ref")

    drop table("qad_esgc_ref")

    drop table("qad_esapf_det")

    drop table("qad_fadf_mstr")

    drop table("qad_fabch_mstr")

    drop table("qad_eud_det")

    drop table("qad_eswpfc_det")

    drop table("qad_escf_ref")

    drop table("qad_ega_mstr")

    drop table("qad_facld_det")

    drop table("qad_eswps_det")

    drop table("qad_esh_mstr")

    drop table("qad_em_mstr")

    drop table("qad_ecd3_det")

    drop table("qad_excd_det")

    drop table("qad_eswpf_det")

    drop table("qad_esfil_mstr")

    drop table("qad_esapfs_det")

    drop table("qad_emp_mstr")

    drop table("qad_eu_mstr")

    drop table("qad_esc_ctrl")

    drop table("qad_esapfil_det")

    drop table("qad_emg_msg")

    drop table("qad_escd_det")

    drop table("qad_eraw_det")

    drop table("qad_elg_hist")

    drop table("qad_ecm_mstr")

    drop table("qad_es_mstr")

    drop table("qad_esp_mstr")

    drop table("qad_esap_mstr")

    drop table("qad_eng_mstr")

    drop table("qad_egt_mstr")

    drop table("qad_dyd_mstr")

    drop table("qad_esig_mstr")

    drop table("qad_esaps_det")

    drop table("qad_encd_det")

    drop table("qad_egs_det")

    drop table("qad_ecd9_det")

    drop table("qad_en_mstr")

    drop table("qad_egw_wkfl")

    drop table("qad_ecl_list")

    drop table("qad_dpc_mstr")

    drop table("qad_emc_ctrl")

    drop table("qad_ecx_ref")

    drop table("qad_ecd1_det")

    drop table("qad_ct_mstr")

    drop table("qad_emap_det")

    drop table("qad_ect_mstr")

    drop table("qad_eca_mstr")

    drop table("qad_dpr_mstr")

    drop table("qad_cr_mstr")

    drop table("qad_ecd5_det")

    drop table("qad_dom_mstr")

    drop table("qad_dbk_mstr")

    drop table("qad_cssi_det")

    drop table("qad_ecd4_det")

    drop table("qad_dmw_wkfl")

    drop table("qad_dal_mstr")

    drop table("qad_cslm_mstr")

    drop table("qad_cref_mstr")

    drop table("qad_ecd2_det")

    drop table("qad_djrc_det")

    drop table("qad_cu_mstr")

    drop table("qad_csim_mstr")

    drop table("qad_crc_ctrl")

    drop table("qad_code_mstr")

    drop table("qad_dprt_det")

    drop table("qad_ctd_det")

    drop table("qad_csd_det")

    drop table("qad_cpc_mstr")

    drop table("qad_ds_det")

    drop table("qad_dosr_det")

    drop table("qad_css_mstr")

    drop table("qad_csa_mstr")

    drop table("qad_cost_cal")

    drop table("qad_djr_mstr")

    drop table("qad_dald_det")

    drop table("qad_crd_det")

    drop table("qad_comd_det")

    drop table("qad_decl_mstr")

    drop table("qad_csc_mstr")

    drop table("qad_cpcd_det")

    drop table("qad_cnsud_det")

    drop table("qad_cmh_hist")

    drop table("qad_ctry_mstr")

    drop table("qad_csid_det")

    drop table("qad_cph_hist")

    drop table("qad_cns_ctrl")

    drop table("qad_cm_mstr")

    drop table("qad_bdp_det")

    drop table("qad_cst_mstr")

    drop table("qad_csbd_det")

    drop table("qad_co_ctrl")

    drop table("qad_ckd_det")

    drop table("qad_cnt_mstr")

    drop table("qad_cksd_det")

    drop table("qad_cc_mstr")

    drop table("qad_ccc_ctrl")

    drop table("qad_cnc_ctrl")

    drop table("qad_cmc_ctrl")

    drop table("qad_cclscd_det")

    drop table("qad_cah_hist")

    drop table("qad_cil_mstr")

    drop table("qad_ca_mstr")

    drop table("qad_bkpm_mstr")

    drop table("qad_bdld_det")

    drop table("qad_cfc_ctrl")

    drop table("qad_ccd_mstr")

    drop table("qad_cac_ctrl")

    drop table("qad_bic_ctrl")

    drop table("qad_clc_ctrl")

    drop table("qad_ccd2_det")

    drop table("qad_bg_mstr")

    drop table("qad_atwk_det")

    drop table("qad_ck_mstr")

    drop table("qad_ccd1_det")

    drop table("qad_bom_mstr")

    drop table("qad_bgd_det")

    drop table("qad_att_mstr")

    drop table("qad_apr_mstr")

    drop table("qad_chm_mstr")

    drop table("qad_ccls_mstr")

    drop table("qad_caq_mstr")

    drop table("qad_bkfm_mstr")

    drop table("qad_bcd_det")

    drop table("qad_cclsc_mstr")

    drop table("qad_cal_det")

    drop table("qad_bkd_det")

    drop table("qad_aud_det")

    drop table("qad_ccl_ctrl")

    drop table("qad_cas_mstr")

    drop table("qad_bkpd_det")

    drop table("qad_bc_mstr")

    drop table("qad_atgt_ref")

    drop table("qad_ar_mstr")

    drop table("qad_cb_mstr")

    drop table("qad_bdl_mstr")

    drop table("qad_atp_det")

    drop table("qad_tax_mstr")

    drop table("qad_atd_mstr")

    drop table("qad_arsd_det")

    drop table("qad_anx_det")

    drop table("qad_acx_mstr")

    drop table("qad_atdcd_det")

    drop table("qad_arc_ctrl")

    drop table("qad_anl_det")

    drop table("qad_absd_det")

    drop table("qad_atg_mstr")

    drop table("qad_asc_mstr")

    drop table("qad_apmr_mstr")

    drop table("qad_adx_det")

    drop table("qad_abs_mstr")

    drop table("qad_aterr_mstr")

    drop table("qad_art_mstr")

    drop table("qad_an_mstr")

    drop table("qad_absr_det")

    drop table("qad_atdc_mstr")

    drop table("qad_ard_det")

    drop table("qad_ans_det")

    drop table("qad_act_mstr")

    drop table("qad_absi_mstr")

    drop table("qad_aprm_mstr")

    drop table("qad_acdf_mstr")

    drop table("qad_abd_det")

    drop table("qad_ast_mstr")

    drop table("qad_apm_ctrl")

    drop table("qad_ad_mstr")

    drop table("qad_accd_det")

    drop table("qad_ap_mstr")

    drop table("qad_al_mstr")

    drop table("qad_acm_mstr")

    drop table("qad_absc_det")

    drop table("qad_apc_ctrl")

    drop table("qad_adc_ctrl")

    drop table("qad_abss_det")

    drop table("qad_alm_mstr")

    drop table("qad_acd_det")

    drop table("qad_abscc_det")

    drop table("qad_wr_route")

    drop table("qad_woc_ctrl")

    drop table("qad_wl_mstr")

    drop table("qad_wlc_ctrl")

    drop table("qad_wlbd_det")

    drop table("qad_whl_mstr")

    drop table("qad_locc_det")

    drop table("qad_wc_mstr")

    drop table("qad_vec_mstr")

    drop table("qad_totd_det")

    drop table("qad_syp_mstr")

    drop table("qad_sttq_mstr")

    drop table("qad_wcr_route")

    drop table("qad_vt_mstr")

    drop table("qad_vtc_ctrl")

    drop table("qad_vp_mstr")

    drop table("qad_vesd_det")

    drop table("qad_vph_hist")

    drop table("qad_umsg_det")

    drop table("qad_suf_mstr")

    drop table("qad_shm_mstr")

    drop table("qad_sap_det")

    drop table("qad_qqc_ctrl")

    drop table("qad_ptr_det")

    drop table("qad_vod_det")

    drop table("qad_ver_mstr")

    drop table("qad_txc_ctrl")

    drop table("qad_trq_mstr")

    drop table("qad_swc_det")

    drop table("qad_sr_wkfl")

    drop table("qad_usr_mstr")

    drop table("qad_trl_mstr")

    drop table("qad_sm_mstr")

    drop table("qad_sch_mstr")

    drop table("qad_rqcd_det")

    drop table("qad_usg_det")

    drop table("qad_sypd_det")

    drop table("qad_shp_hist")

    drop table("qad_scx_ref")

    drop table("qad_rbm_mstr")

    drop table("qad_txed_det")

    drop table("qad_trcs_det")

    drop table("qad_sufd_det")

    drop table("qad_seoc_ctrl")

    drop table("qad_rpc_ctrl")

    drop table("qad_qps_det")

    drop table("qad_syps_det")

    drop table("qad_shv_mstr")

    drop table("qad_sbid_det")

    drop table("qad_rsd_det")

    drop table("qad_pvo_mstr")

    drop table("qad_pgh_hist")

    drop table("qad_sypj_det")

    drop table("qad_spd_det")

    drop table("qad_sgid_det")

    drop table("qad_rqd_det")

    drop table("qad_ptc_det")

    drop table("qad_pi_mstr")

    drop table("qad_mpp_det")

    drop table("qad_stx_mstr")

    drop table("qad_six_ref")

    drop table("qad_rstd_det")

    drop table("qad_rqj_mstr")

    drop table("qad_sob_det")

    drop table("qad_sab_det")

    drop table("qad_rqc_mstr")

    drop table("qad_ptv_det")

    drop table("qad_pk_det")

    drop table("qad_pfc_det")

    drop table("qad_sbi_mstr")

    drop table("qad_ptls_det")

    drop table("qad_pjd_det")

    drop table("qad_pcd_det")

    drop table("qad_mp_mstr")

    drop table("qad_rsu_mstr")

    drop table("qad_qro_det")

    drop table("qad_pts_det")

    drop table("qad_pigp_det")

    drop table("qad_ops_ctrl")

    drop table("qad_lng_mstr")

    drop table("qad_qc_mstr")

    drop table("qad_ptt_det")

    drop table("qad_pould_det")

    drop table("qad_mu_mstr")

    drop table("qad_knbrs_mstr")

    drop table("qad_pta_det")

    drop table("qad_pld_det")

    drop table("qad_pfd_det")

    drop table("qad_loc_mstr")

    drop table("qad_ld_det")

    drop table("qad_ea_mstr")

    drop table("qad_plt_det")

    drop table("qad_pjsh_hist")

    drop table("qad_pcld_det")

    drop table("qad_lnd_det")

    drop table("qad_knbfd_det")

    drop table("qad_pcl_mstr")

    drop table("qad_mrpp_det")

    drop table("qad_lac_ctrl")

    drop table("qad_knbism_det")

    drop table("qad_ib_det")

    drop table("qad_opm_mstr")

    drop table("qad_lua_det")

    drop table("qad_knbi_mstr")

    drop table("qad_gric_det")

    drop table("qad_glrd_det")

    drop table("qad_flscd_det")

    drop table("qad_lotw_wkfl")

    drop table("qad_img_msg")

    drop table("qad_hd_mstr")

    drop table("qad_glcd_det")

    drop table("qad_fldf_mstr")

    drop table("qad_fab_det")

    drop table("qad_lgs_mstr")

    drop table("qad_im_mstr")

    drop table("qad_grc_mstr")

    drop table("qad_gltw_wkfl")

    drop table("qad_ess_mstr")

    drop table("qad_knp_mstr")

    drop table("qad_knbd_det")

    drop table("qad_grr_mstr")

    drop table("qad_grdf_mtx")

    drop table("qad_egd_det")

    drop table("qad_kbtrr_det")

    drop table("qad_ild_det")

    drop table("qad_grig_mtx")

    drop table("qad_glsd_mstr")

    drop table("qad_cild_det")

    drop table("qad_kbtrd_det")

    drop table("qad_is_mstr")

    drop table("qad_giap_mstr")

    drop table("qad_fpc_mstr")

    drop table("qad_euc_ctrl")

    drop table("qad_ip_mstr")

    drop table("qad_gra_mstr")

    drop table("qad_flcrh_hist")

    drop table("qad_fabd_det")

    drop table("qad_esapfc_det")

    drop table("qad_ifs_mstr")

    drop table("qad_grhd_det")

    drop table("qad_fr_mstr")

    drop table("qad_flpw_mstr")

    drop table("qad_eswp_mstr")

    drop table("qad_dbs_mstr")

    drop table("qad_iec_ctrl")

    drop table("qad_gisi_mstr")

    drop table("qad_frcd_det")

    drop table("qad_flcr_mstr")

    drop table("qad_fabk_mstr")

    drop table("qad_eswpfs_det")

    drop table("qad_grib_det")

    drop table("qad_fsc_mstr")

    drop table("qad_flp_plan")

    drop table("qad_ecd_det")

    drop table("qad_dc_mstr")

    drop table("qad_glt_det")

    drop table("qad_glc_cal")

    drop table("qad_famtrd_det")

    drop table("qad_exru_usage")

    drop table("qad_esapmp_ref")

    drop table("qad_fspd_det")

    drop table("qad_fcs_sum")

    drop table("qad_exc_mstr")

    drop table("qad_egc_ctrl")

    drop table("qad_dsr_mstr")

    drop table("qad_fslp_pln")

    drop table("qad_fkt_mstr")

    drop table("qad_fa_mstr")

    drop table("qad_ers_mstr")

    drop table("qad_delt_mstr")

    drop table("qad_esrec_det")

    drop table("qad_escat_mstr")

    drop table("qad_dy_mstr")

    drop table("qad_dprd_det")

    drop table("qad_cs_mstr")

    drop table("qad_edlg_hist")

    drop table("qad_drp_ctrl")

    drop table("qad_cncs_mstr")

    drop table("qad_cdf_mstr")

    drop table("qad_atap_mstr")

    drop table("qad_dss_mstr")

    drop table("qad_cont_mstr")

    drop table("qad_cf_mstr")

    drop table("qad_bkad_det")

    drop table("qad_dsd_det")

    drop table("qad_csld_det")

    drop table("qad_cncud_det")

    drop table("qad_cd_det")

    drop table("qad_acod_mstr")

    drop table("qad_dpt_mstr")

    drop table("qad_df_mstr")

    drop table("qad_csil_mstr")

    drop table("qad_cp_mstr")

    drop table("qad_absl_det")

    drop table("qad_defr_det")

    drop table("qad_cnsu_mstr")

    drop table("qad_cmt_det")

    drop table("qad_cctr_hist")

    drop table("qad_com_mstr")

    drop table("qad_cncu_mstr")

    drop table("qad_cls_mstr")

    drop table("qad_atwp_mstr")

    drop table("qad_cnss_mstr")

    drop table("qad_cmf_mstr")

    drop table("qad_ac_mstr")

    drop table("qad_cnsix_mstr")

    drop table("qad_cmd_det")

    drop table("qad_chg_mstr")

    drop table("qad_ba_mstr")

    drop table("qad_cncix_mstr")

    drop table("qad_atak_det")

    drop table("qad_ald_det")

    drop table("qad_cct_mstr")

    drop table("qad_bk_mstr")

    drop table("qad_btb_det")

    drop table("qad_atc_ctrl")
  end
end
