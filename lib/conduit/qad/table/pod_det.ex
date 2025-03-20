defmodule Elixir.Conduit.QAD.Table.Pod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pod_det" do
    field :pod_nbr, :string

    field :pod_due_date, Conduit.QAD.Types.Date

    field :pod_line, :integer

    field :pod_part, :string

    field :pod_qty_ord, :decimal

    field :pod_qty_rcvd, :decimal

    field :pod_pur_cost, :decimal

    field :pod_std_cost, :decimal

    field :pod_so_job, :string

    field :pod_qty_chg, :decimal

    field :pod_cost_chg, :decimal

    field :pod_bo_chg, :decimal

    field :pod_acct, :string

    field :pod_per_date, Conduit.QAD.Types.Date

    field :pod_type, :string

    field :pod_insp_rqd, Conduit.QAD.Types.Bool

    field :pod_wo_lot, :string

    field :pod_vpart, :string

    field :pod_need, Conduit.QAD.Types.Date

    field :pod_taxable, Conduit.QAD.Types.Bool

    field :pod_desc, :string

    field :pod_cc, :string

    field :pod__qad04, {:array, :string}

    field :pod_um, :string

    field :pod_disc_pct, :decimal

    field :pod_req_nbr, :string

    field :pod__qad10, :string

    field :pod_um_conv, :decimal

    field :pod_loc, :string

    field :pod_serial, :string

    field :pod_op, :integer

    field :pod_contract, :string

    field :pod_status, :string

    field :pod_rev, :string

    field :pod_cmtindx, :integer

    field :pod_req_line, :integer

    field :pod_project, :string

    field :pod_ps_chg, :decimal

    field :pod_cst_up, Conduit.QAD.Types.Bool

    field :pod_rum, :string

    field :pod_user1, :string

    field :pod_user2, :string

    field :pod_vat, Conduit.QAD.Types.Bool

    field :pod__qad16, :string

    field :pod__qad06, :string

    field :pod_pst, Conduit.QAD.Types.Bool

    field :pod__qad13, Conduit.QAD.Types.Bool

    field :pod__qad07, :string

    field :pod_pay_um, :string

    field :pod_pum_conv, :decimal

    field :pod__qad15, Conduit.QAD.Types.Bool

    field :pod_site, :string

    field :pod_rum_conv, :decimal

    field :pod_qty_rtnd, :decimal

    field :pod_blanket, :string

    field :pod_blnkt_ln, :integer

    field :pod__qad01, Conduit.QAD.Types.Date

    field :pod__qad02, :integer

    field :pod__qad03, :string

    field :pod__qad05, Conduit.QAD.Types.Bool

    field :pod__qad08, Conduit.QAD.Types.Date

    field :pod__qad09, :integer

    field :pod__qad11, :string

    field :pod__qad12, Conduit.QAD.Types.Bool

    field :pod__qad14, Conduit.QAD.Types.Date

    field :pod_rel_nbr, :integer

    field :pod_rel_qty, :decimal

    field :pod_reason, :string

    field :pod_request, :string

    field :pod_approve, :string

    field :pod__chr01, :string

    field :pod__chr02, :string

    field :pod__chr03, :string

    field :pod__chr04, :string

    field :pod__chr05, :string

    field :pod__chr06, :string

    field :pod__chr07, :string

    field :pod__chr08, :string

    field :pod__chr09, :string

    field :pod__chr10, :string

    field :pod__dte01, Conduit.QAD.Types.Date

    field :pod__dte02, Conduit.QAD.Types.Date

    field :pod__dec01, :decimal

    field :pod__dec02, :decimal

    field :pod__log01, Conduit.QAD.Types.Bool

    field :pod_rma_type, :string

    field :pod_tax_max, :decimal

    field :pod_cum_qty, {:array, :decimal}

    field :pod_cum_date, {:array, Conduit.QAD.Types.Date}

    field :pod_contr_id, :string

    field :pod_apr_code, :string

    field :pod_taxc, :string

    field :pod_po_site, :string

    field :pod_po_db, :string

    field :pod_firm_weeks, :integer

    field :pod_mrp_pct, :decimal

    field :pod_raw_weeks, :integer

    field :pod_fab_weeks, :integer

    field :pod_plan_weeks, :integer

    field :pod_curr_rlse_id, {:array, :string}

    field :pod_sched, Conduit.QAD.Types.Bool

    field :pod_ord_mult, :decimal

    field :pod_pkg_code, :string

    field :pod_sch_mrp, Conduit.QAD.Types.Bool

    field :pod_sch_data, :string

    field :pod_rlse_nbr, :integer

    field :pod_ship_weeks, :integer

    field :pod_translt_days, :decimal

    field :pod_fsm_type, :string

    field :pod_sd_pat, :string

    field :pod_sd_time, :string

    field :pod_plan_days, :integer

    field :pod_plan_mths, :integer

    field :pod_firm_days, :integer

    field :pod_start_eff, {:array, Conduit.QAD.Types.Date}

    field :pod_end_eff, {:array, Conduit.QAD.Types.Date}

    field :pod_raw_days, :integer

    field :pod_fab_days, :integer

    field :pod_tax_usage, :string

    field :pod_tax_in, Conduit.QAD.Types.Bool

    field :pod_sched_chgd, Conduit.QAD.Types.Bool

    field :pod_pr_list, :string

    field :pod_dock, :string

    field :pod_pastdue, :string

    field :pod_drp_ref, :string

    field :pod_tax_env, :string

    field :pod_crt_int, :decimal

    field :pod_translt_hrs, :decimal

    field :pod_sftylt_days, :decimal

    field :pod_sftylt_hrs, :decimal

    field :pod_fix_pr, Conduit.QAD.Types.Bool

    field :pod_fr_list, :string

    field :pod_lot_next, :string

    field :pod_lot_rcpt, Conduit.QAD.Types.Bool

    field :pod_grade, :string

    field :pod_expire, Conduit.QAD.Types.Date

    field :pod_rctstat, :string

    field :pod_assay, :decimal

    field :pod_rctstat_active, Conduit.QAD.Types.Bool

    field :pod_pricing_dt, Conduit.QAD.Types.Date

    field :pod_pr_lst_tp, :integer

    field :pod_ers_opt, :integer

    field :pod__qadd01, :decimal

    field :pod__qadd02, :decimal

    field :pod__qadd03, :decimal

    field :pod_sod_line, :integer

    field :pod_so_status, :string

    field :pod_sub_ship_date, Conduit.QAD.Types.Date

    field :pod_sub_type, :string

    field :pod_sub, :string

    field :pod_wip_lotser, :string

    field :pod_pjs_line, :integer

    field :pod_consignment, Conduit.QAD.Types.Bool

    field :pod_max_aging_days, :integer

    field :pod_multi_due_dates, Conduit.QAD.Types.Bool

    field :pod_domain, :string

    field :oid_pod_det, :decimal, primary_key: true

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
