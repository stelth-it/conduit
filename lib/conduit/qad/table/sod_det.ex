defmodule Elixir.Conduit.QAD.Table.Sod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sod_det" do
    field :sod_nbr, :string

    field :sod_due_date, Conduit.QAD.Types.Date

    field :sod_per_date, Conduit.QAD.Types.Date

    field :sod_req_date, Conduit.QAD.Types.Date

    field :sod_line, :integer

    field :sod_part, :string

    field :sod_qty_ord, :decimal

    field :sod_qty_all, :decimal

    field :sod_qty_pick, :decimal

    field :sod_qty_ship, :decimal

    field :sod_qty_inv, :decimal

    field :sod_loc, :string

    field :sod_type, :string

    field :sod_price, :decimal

    field :sod_std_cost, :decimal

    field :sod_qty_chg, :decimal

    field :sod_bo_chg, :decimal

    field :sod_acct, :string

    field :sod_abnormal, Conduit.QAD.Types.Bool

    field :sod_taxable, Conduit.QAD.Types.Bool

    field :sod_serial, :string

    field :sod_desc, :string

    field :sod_um, :string

    field :sod_cc, :string

    field :sod_comment, {:array, :string}

    field :sod_lot, :string

    field :sod_um_conv, :decimal

    field :sod_fa_nbr, :string

    field :sod_disc_pct, :decimal

    field :sod_project, :string

    field :sod_cmtindx, :integer

    field :sod_custpart, :string

    field :sod__qad01, :integer

    field :sod_status, :string

    field :sod_xslspsn, {:array, :string}

    field :sod_xcomm_pct, {:array, :decimal}

    field :sod_dsc_acct, :string

    field :sod_dsc_cc, :string

    field :sod_list_pr, :decimal

    field :sod_user1, :string

    field :sod_user2, :string

    field :sod_sob_rev, Conduit.QAD.Types.Date

    field :sod_sob_std, Conduit.QAD.Types.Bool

    field :sod_qty_qote, :decimal

    field :sod_consume, Conduit.QAD.Types.Bool

    field :sod_expire, Conduit.QAD.Types.Date

    field :sod__qad02, Conduit.QAD.Types.Bool

    field :sod_taxc, :string

    field :sod_inv_nbr, :string

    field :sod_partial, Conduit.QAD.Types.Bool

    field :sod_site, :string

    field :sod_prodline, :string

    field :sod_tax_in, Conduit.QAD.Types.Bool

    field :sod_fst_list, Conduit.QAD.Types.Bool

    field :sod_pst, Conduit.QAD.Types.Bool

    field :sod__chr01, :string

    field :sod__chr02, :string

    field :sod__chr03, :string

    field :sod__chr04, :string

    field :sod__chr05, :string

    field :sod__chr06, :string

    field :sod__chr07, :string

    field :sod__chr08, :string

    field :sod__chr09, :string

    field :sod__chr10, :string

    field :sod__dte01, Conduit.QAD.Types.Date

    field :sod__dte02, Conduit.QAD.Types.Date

    field :sod__dec01, :decimal

    field :sod__dec02, :decimal

    field :sod__log01, Conduit.QAD.Types.Bool

    field :sod_calc_isb, Conduit.QAD.Types.Bool

    field :sod_owner, :string

    field :sod_rma_type, :string

    field :sod_qty_item, :decimal

    field :sod_qty_per, :decimal

    field :sod_ref, :integer

    field :sod_for, :string

    field :sod_tax_max, :decimal

    field :sod_contr_id, :string

    field :sod_pickdate, Conduit.QAD.Types.Date

    field :sod_confirm, Conduit.QAD.Types.Bool

    field :sod_cum_qty, {:array, :decimal}

    field :sod_cum_date, {:array, Conduit.QAD.Types.Date}

    field :sod_fr_rate, :decimal

    field :sod_slspsn, {:array, :string}

    field :sod_comm_pct, {:array, :decimal}

    field :sod_ord_mult, :decimal

    field :sod_pkg_code, :string

    field :sod_curr_rlse_id, {:array, :string}

    field :sod_sched, Conduit.QAD.Types.Bool

    field :sod_sch_data, :string

    field :sod_sch_mrp, Conduit.QAD.Types.Bool

    field :sod_rlse_nbr, :integer

    field :sod_translt_days, :decimal

    field :sod_fsm_type, :string

    field :sod_conrep, :string

    field :sod_start_eff, {:array, Conduit.QAD.Types.Date}

    field :sod_end_eff, {:array, Conduit.QAD.Types.Date}

    field :sod_dock, :string

    field :sod_pr_list, :string

    field :sod_translt_hrs, :decimal

    field :sod_out_po, :string

    field :sod_raw_days, :integer

    field :sod_fab_days, :integer

    field :sod_tax_usage, :string

    field :sod_rbkt_days, :integer

    field :sod_rbkt_weeks, :integer

    field :sod_rbkt_mths, :integer

    field :sod_sched_chgd, Conduit.QAD.Types.Bool

    field :sod_pastdue, :string

    field :sod_fix_pr, Conduit.QAD.Types.Bool

    field :sod_fr_wt, :decimal

    field :sod_fr_wt_um, :string

    field :sod_fr_class, :string

    field :sod_fr_chg, :decimal

    field :sod_sa_nbr, :string

    field :sod_isb_loc, :string

    field :sod_ship, :string

    field :sod_auto_ins, Conduit.QAD.Types.Bool

    field :sod_drp_ref, :string

    field :sod_tax_env, :string

    field :sod_upd_isb, Conduit.QAD.Types.Bool

    field :sod_isb_ref, :integer

    field :sod_enduser, :string

    field :sod_crt_int, :decimal

    field :sod_fr_list, :string

    field :sod_pricing_dt, Conduit.QAD.Types.Date

    field :sod_act_price, :decimal

    field :sod_covered_amt, :decimal

    field :sod_ca_nbr, :string

    field :sod_fixed_price, :decimal

    field :sod_inv_cost, :decimal

    field :sod_car_load, Conduit.QAD.Types.Bool

    field :sod_ca_line, :integer

    field :sod_qty_cons, :decimal

    field :sod_qty_ret, :decimal

    field :sod_qty_pend, :decimal

    field :sod_to_loc, :string

    field :sod_to_site, :string

    field :sod_to_ref, :string

    field :sod_ln_ref, :string

    field :sod_qty_exch, :decimal

    field :sod_sad_line, :integer

    field :sod_warr_start, Conduit.QAD.Types.Date

    field :sod_mod_userid, :string

    field :sod_mod_date, Conduit.QAD.Types.Date

    field :sod_sv_code, :string

    field :sod_alt_pkg, Conduit.QAD.Types.Bool

    field :sod_for_serial, :string

    field :sod_override_lmt, Conduit.QAD.Types.Bool

    field :sod__qadc01, :string

    field :sod__qadc02, :string

    field :sod__qadc03, :string

    field :sod__qadc04, :string

    field :sod__qadt01, Conduit.QAD.Types.Date

    field :sod__qadt02, Conduit.QAD.Types.Date

    field :sod__qadt03, Conduit.QAD.Types.Date

    field :sod__qadt04, Conduit.QAD.Types.Date

    field :sod__qadd01, :decimal

    field :sod__qadd02, :decimal

    field :sod__qadd03, :decimal

    field :sod__qadl01, Conduit.QAD.Types.Bool

    field :sod__qadl02, Conduit.QAD.Types.Bool

    field :sod__qadl03, Conduit.QAD.Types.Bool

    field :sod__qadi01, :integer

    field :sod__qadi02, :integer

    field :sod_bonus, Conduit.QAD.Types.Bool

    field :sod_btb_type, :string

    field :sod_btb_po, :string

    field :sod_btb_pod_line, :integer

    field :sod_btb_vend, :string

    field :sod_exp_del, Conduit.QAD.Types.Date

    field :sod_dir_all, Conduit.QAD.Types.Bool

    field :sod_cfg_type, :string

    field :sod_div, :string

    field :sod_pl_priority, :integer

    field :sod_prig1, :string

    field :sod_prig2, :string

    field :sod__qadd04, :decimal

    field :sod_sub, :string

    field :sod_dsc_sub, :string

    field :sod_dsc_project, :string

    field :sod_qty_ivcd, :decimal

    field :sod_cum_time, {:array, :integer}

    field :sod_ship_part, :string

    field :sod_promise_date, Conduit.QAD.Types.Date

    field :sod_charge_type, :string

    field :sod_order_category, :string

    field :sod_modelyr, :string

    field :sod_custref, :string

    field :sod_consignment, Conduit.QAD.Types.Bool

    field :sod_max_aging_days, :integer

    field :sod_consign_loc, :string

    field :sod_intrans_loc, :string

    field :sod_auto_replenish, Conduit.QAD.Types.Bool

    field :sod_manual_fr_list, Conduit.QAD.Types.Bool

    field :sod_domain, :string

    field :oid_sod_det, :decimal, primary_key: true

    field :sod_req_time, :string

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
