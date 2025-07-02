defmodule Elixir.Conduit.QAD.Table.Idh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_idh_hist" do
    field :idh_nbr, :string

    field :idh_due_date, Conduit.QAD.Types.Date

    field :idh_per_date, Conduit.QAD.Types.Date

    field :idh_req_date, Conduit.QAD.Types.Date

    field :idh_line, :integer

    field :idh_part, :string

    field :idh_qty_ord, :decimal

    field :idh_qty_all, :decimal

    field :idh_qty_pick, :decimal

    field :idh_qty_ship, :decimal

    field :idh_qty_inv, :decimal

    field :idh_loc, :string

    field :idh_type, :string

    field :idh_price, :decimal

    field :idh_std_cost, :decimal

    field :idh_qty_chg, :decimal

    field :idh_bo_chg, :decimal

    field :idh_acct, :string

    field :idh_abnormal, Conduit.QAD.Types.Bool

    field :idh_taxable, Conduit.QAD.Types.Bool

    field :idh_serial, :string

    field :idh_desc, :string

    field :idh_um, :string

    field :idh_cc, :string

    field :idh_comment, {:array, :string}

    field :idh_lot, :string

    field :idh_um_conv, :decimal

    field :idh_fa_nbr, :string

    field :idh_disc_pct, :decimal

    field :idh_project, :string

    field :idh_cmtindx, :integer

    field :idh_custpart, :string

    field :idh__qad01, :integer

    field :idh_status, :string

    field :idh_xslspsn, {:array, :string}

    field :idh_xcomm_pct, {:array, :decimal}

    field :idh_dsc_acct, :string

    field :idh_dsc_cc, :string

    field :idh_list_pr, :decimal

    field :idh_user1, :string

    field :idh_user2, :string

    field :idh_sob_rev, Conduit.QAD.Types.Date

    field :idh_sob_std, Conduit.QAD.Types.Bool

    field :idh_qty_qote, :decimal

    field :idh_consume, Conduit.QAD.Types.Bool

    field :idh_expire, Conduit.QAD.Types.Date

    field :idh__qad02, Conduit.QAD.Types.Bool

    field :idh_taxc, :string

    field :idh_inv_nbr, :string

    field :idh_site, :string

    field :idh_prodline, :string

    field :idh__chr01, :string

    field :idh__chr02, :string

    field :idh__chr03, :string

    field :idh__chr04, :string

    field :idh__chr05, :string

    field :idh__chr06, :string

    field :idh__chr07, :string

    field :idh__chr08, :string

    field :idh__chr09, :string

    field :idh__chr10, :string

    field :idh__dte01, Conduit.QAD.Types.Date

    field :idh__dte02, Conduit.QAD.Types.Date

    field :idh__dec01, :decimal

    field :idh__dec02, :decimal

    field :idh__log01, Conduit.QAD.Types.Bool

    field :idh__dte03, Conduit.QAD.Types.Date

    field :idh__dec03, :decimal

    field :idh__dec04, :decimal

    field :idh__dec05, :decimal

    field :idh_tax_max, :decimal

    field :idh_tax_in, Conduit.QAD.Types.Bool

    field :idh_pst, Conduit.QAD.Types.Bool

    field :idh_fr_rate, :decimal

    field :idh_calc_isb, Conduit.QAD.Types.Bool

    field :idh_owner, :string

    field :idh_rma_type, :string

    field :idh_qty_item, :decimal

    field :idh_qty_per, :decimal

    field :idh_ref, :integer

    field :idh_for, :string

    field :idh_slspsn, {:array, :string}

    field :idh_comm_pct, {:array, :decimal}

    field :idh_retro_price, :decimal

    field :idh_contr_id, :string

    field :idh_fst_list, Conduit.QAD.Types.Bool

    field :idh_cum_date, {:array, Conduit.QAD.Types.Date}

    field :idh_cum_qty, {:array, :decimal}

    field :idh_curr_rlse_id, {:array, :string}

    field :idh_ord_mult, :decimal

    field :idh_pkg_code, :string

    field :idh_rlse_nbr, :integer

    field :idh_sch_data, :string

    field :idh_sch_mrp, Conduit.QAD.Types.Bool

    field :idh_sched, Conduit.QAD.Types.Bool

    field :idh_trans_lt, :decimal

    field :idh_fsm_type, :string

    field :idh_sa_nbr, :string

    field :idh_fix_pr, Conduit.QAD.Types.Bool

    field :idh_fr_wt, :decimal

    field :idh_fr_wt_um, :string

    field :idh_fr_class, :string

    field :idh_fr_chg, :decimal

    field :idh_tax_usage, :string

    field :idh_tax_env, :string

    field :idh_fr_list, :string

    field :idh_crt_int, :decimal

    field :idh_act_price, :decimal

    field :idh_auto_ins, Conduit.QAD.Types.Bool

    field :idh_covered_amt, :decimal

    field :idh_override_lmt, Conduit.QAD.Types.Bool

    field :idh_enduser, :string

    field :idh_isb_loc, :string

    field :idh_isb_ref, :integer

    field :idh_ship, :string

    field :idh_fixed_price, :decimal

    field :idh_inv_cost, :decimal

    field :idh_partial, Conduit.QAD.Types.Bool

    field :idh_pickdate, Conduit.QAD.Types.Date

    field :idh_conrep, :string

    field :idh_start_eff, {:array, Conduit.QAD.Types.Date}

    field :idh_end_eff, {:array, Conduit.QAD.Types.Date}

    field :idh_out_po, :string

    field :idh_translt_hrs, :decimal

    field :idh_pr_list, :string

    field :idh_dock, :string

    field :idh_raw_days, :integer

    field :idh_fab_days, :integer

    field :idh_rbkt_days, :integer

    field :idh_rbkt_weeks, :integer

    field :idh_rbkt_mths, :integer

    field :idh_sched_chgd, Conduit.QAD.Types.Bool

    field :idh_pastdue, :string

    field :idh_drp_ref, :string

    field :idh_upd_isb, Conduit.QAD.Types.Bool

    field :idh_ca_nbr, :string

    field :idh_car_load, Conduit.QAD.Types.Bool

    field :idh_ca_line, :integer

    field :idh_qty_cons, :decimal

    field :idh_qty_ret, :decimal

    field :idh_qty_pend, :decimal

    field :idh_to_loc, :string

    field :idh_to_site, :string

    field :idh_ln_ref, :string

    field :idh_to_ref, :string

    field :idh_qty_exch, :decimal

    field :idh_warr_start, Conduit.QAD.Types.Date

    field :idh_sad_line, :integer

    field :idh_mod_userid, :string

    field :idh_mod_date, Conduit.QAD.Types.Date

    field :idh_pricing_dt, Conduit.QAD.Types.Date

    field :idh_sv_code, :string

    field :idh_for_serial, :string

    field :idh__qadc01, :string

    field :idh__qadc02, :string

    field :idh__qadc03, :string

    field :idh__qadc04, :string

    field :idh__qadc05, :string

    field :idh__qadc06, :string

    field :idh__qadi01, :integer

    field :idh__qadi02, :integer

    field :idh__qadi03, :integer

    field :idh__qadi04, :integer

    field :idh__qadd01, :decimal

    field :idh__qadd02, :decimal

    field :idh__qadd03, :decimal

    field :idh__qadd04, :decimal

    field :idh__qadd05, :decimal

    field :idh__qadl01, Conduit.QAD.Types.Bool

    field :idh__qadl02, Conduit.QAD.Types.Bool

    field :idh__qadl03, Conduit.QAD.Types.Bool

    field :idh__qadl04, Conduit.QAD.Types.Bool

    field :idh__qadl05, Conduit.QAD.Types.Bool

    field :idh__qadt01, Conduit.QAD.Types.Date

    field :idh__qadt02, Conduit.QAD.Types.Date

    field :idh__qadt03, Conduit.QAD.Types.Date

    field :idh__qadt04, Conduit.QAD.Types.Date

    field :idh__qadt05, Conduit.QAD.Types.Date

    field :idh_bonus, Conduit.QAD.Types.Bool

    field :idh_btb_type, :string

    field :idh_btb_po, :string

    field :idh_btb_pod_line, :integer

    field :idh_btb_vend, :string

    field :idh_exp_del, Conduit.QAD.Types.Date

    field :idh_cfg_type, :string

    field :idh_div, :string

    field :idh_pl_priority, :integer

    field :idh_prig1, :string

    field :idh_prig2, :string

    field :idh_sub, :string

    field :idh_dsc_project, :string

    field :idh_dsc_sub, :string

    field :idh_promise_date, Conduit.QAD.Types.Date

    field :idh_modelyr, :string

    field :idh_custref, :string

    field :idh_domain, :string

    field :oid_idh_hist, :decimal, primary_key: true

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
