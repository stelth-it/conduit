defmodule Elixir.Conduit.QAD.Table.Sa_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sa_mstr" do
    field :sa_nbr, :string

    field :sa_cust, :string

    field :sa_enduser, :string

    field :sa_ord_date, Conduit.QAD.Types.Date

    field :sa_st_date, Conduit.QAD.Types.Date

    field :sa_end_date, Conduit.QAD.Types.Date

    field :sa_rmks, :string

    field :sa_cr_terms, :string

    field :sa_fob, :string

    field :sa_po, :string

    field :sa_shipvia, :string

    field :sa_print, Conduit.QAD.Types.Bool

    field :sa_pr_list, :string

    field :sa__qadc05, {:array, :string}

    field :sa_source, :string

    field :sa_xcomm_pct, {:array, :decimal}

    field :sa_cr_card, :string

    field :sa_print_pl, Conduit.QAD.Types.Bool

    field :sa_cr_init, :string

    field :sa_stat, :string

    field :sa_disc_pct, :decimal

    field :sa_tax_pct, {:array, :decimal}

    field :sa_prepaid, :decimal

    field :sa_invoiced, Conduit.QAD.Types.Bool

    field :sa_ar_acct, :string

    field :sa_ar_cc, :string

    field :sa_inv_date, Conduit.QAD.Types.Date

    field :sa_ship_date, Conduit.QAD.Types.Date

    field :sa_taxable, Conduit.QAD.Types.Bool

    field :sa_cmtindx, :integer

    field :sa_user1, :string

    field :sa_user2, :string

    field :sa_curr, :string

    field :sa_ex_rate, :decimal

    field :sa_lang, :string

    field :sa_type, :string

    field :sa_conf_date, Conduit.QAD.Types.Date

    field :sa_bol, :string

    field :sa_pst, Conduit.QAD.Types.Bool

    field :sa_fst_id, :string

    field :sa_trl1_amt, :decimal

    field :sa_trl1_cd, :string

    field :sa_trl2_amt, :decimal

    field :sa_trl2_cd, :string

    field :sa_trl3_amt, :decimal

    field :sa_trl3_cd, :string

    field :sa_pst_id, :string

    field :sa_quote, :string

    field :sa_taxc, :string

    field :sa__chr01, :string

    field :sa__chr02, :string

    field :sa__chr03, :string

    field :sa__chr04, :string

    field :sa__chr05, :string

    field :sa__chr06, :string

    field :sa__chr07, :string

    field :sa__chr08, :string

    field :sa__chr09, :string

    field :sa__chr10, :string

    field :sa__dte01, Conduit.QAD.Types.Date

    field :sa__dte02, Conduit.QAD.Types.Date

    field :sa__dec01, :decimal

    field :sa__dec02, :decimal

    field :sa__log01, Conduit.QAD.Types.Bool

    field :sa_sv_code, :string

    field :sa_last_bill, Conduit.QAD.Types.Date

    field :sa_nxt_bill, Conduit.QAD.Types.Date

    field :sa_rel_date, Conduit.QAD.Types.Date

    field :sa_release, Conduit.QAD.Types.Bool

    field :sa_um, :string

    field :sa_cycle, :string

    field :sa_prefix, :string

    field :sa_exp_date, Conduit.QAD.Types.Date

    field :sa_complete, Conduit.QAD.Types.Bool

    field :sa_bill_cnt, :integer

    field :sa_so_nbr, :string

    field :sa_prodline, :string

    field :sa_mref, :string

    field :sa_lst_cover, Conduit.QAD.Types.Date

    field :sa_autornew, Conduit.QAD.Types.Bool

    field :sa_ext_date, Conduit.QAD.Types.Date

    field :sa_arrears, Conduit.QAD.Types.Bool

    field :sa_hold, Conduit.QAD.Types.Bool

    field :sa_st_cover, Conduit.QAD.Types.Date

    field :sa_qty_per, :decimal

    field :sa_qty_plst, :decimal

    field :sa_lst_bill, Conduit.QAD.Types.Date

    field :sa_can_tax, :decimal

    field :sa_free_frm, Conduit.QAD.Types.Date

    field :sa_free_to, Conduit.QAD.Types.Date

    field :sa_cancel, Conduit.QAD.Types.Date

    field :sa_site, :string

    field :sa_bill_to, :string

    field :sa_summarize, Conduit.QAD.Types.Bool

    field :sa_bill_type, :string

    field :sa_orig_date, Conduit.QAD.Types.Date

    field :sa_date_printed, Conduit.QAD.Types.Date

    field :sa_sa_type, :string

    field :sa_gen_0itm, Conduit.QAD.Types.Bool

    field :sa_prt_0itm, Conduit.QAD.Types.Bool

    field :sa_blanket, Conduit.QAD.Types.Bool

    field :sa_serial_det, Conduit.QAD.Types.Bool

    field :sa_area, :string

    field :sa_sched_start, Conduit.QAD.Types.Bool

    field :sa_channel, :string

    field :sa_quote_mod, Conduit.QAD.Types.Bool

    field :sa_ent_ex, :decimal

    field :sa_off_hours_pt, :string

    field :sa_rsn_lost, :string

    field :sa_tax_env, :string

    field :sa_tax_usage, :string

    field :sa_pr_list2, :string

    field :sa_fix_rate, Conduit.QAD.Types.Bool

    field :sa_fix_pr, Conduit.QAD.Types.Bool

    field :sa_tax_date, Conduit.QAD.Types.Date

    field :sa_visits, :decimal

    field :sa_base_pct, :decimal

    field :sa_calls_allow, :integer

    field :sa_calls_total, :integer

    field :sa_next_dur, :decimal

    field :sa_periodic, Conduit.QAD.Types.Bool

    field :sa_renewal_date, Conduit.QAD.Types.Date

    field :sa_renew_count, :integer

    field :sa_renew_periods, :integer

    field :sa_revalue_date, Conduit.QAD.Types.Date

    field :sa_reval_index, :integer

    field :sa__qadl04, Conduit.QAD.Types.Bool

    field :sa_schedule, Conduit.QAD.Types.Bool

    field :sa_total_billed, :decimal

    field :sa_total_cost, :decimal

    field :sa__qadc01, :string

    field :sa__qadc02, :string

    field :sa__qadc03, :string

    field :sa__qadc04, :string

    field :sa__qadt01, Conduit.QAD.Types.Date

    field :sa__qadt02, Conduit.QAD.Types.Date

    field :sa__qadt03, Conduit.QAD.Types.Date

    field :sa__qadd01, :decimal

    field :sa__qadd02, :decimal

    field :sa__qadd03, :decimal

    field :sa__qadl01, Conduit.QAD.Types.Bool

    field :sa__qadl02, Conduit.QAD.Types.Bool

    field :sa__qadl03, Conduit.QAD.Types.Bool

    field :sa_project, :string

    field :sa_mrp, Conduit.QAD.Types.Bool

    field :sa_mod_userid, :string

    field :sa_mod_date, Conduit.QAD.Types.Date

    field :sa_renewed_from, :string

    field :sa_renewed_to, :string

    field :sa_comm_pct, {:array, :decimal}

    field :sa_slspsn, {:array, :string}

    field :sa_limit_copy, :string

    field :sa_reval_period, :integer

    field :sa__dec03, :decimal

    field :sa__dte03, Conduit.QAD.Types.Date

    field :sa__log02, Conduit.QAD.Types.Bool

    field :sa__log03, Conduit.QAD.Types.Bool

    field :sa_ex_rate2, :decimal

    field :sa_ex_ratetype, :string

    field :sa_exru_seq, :integer

    field :sa_ar_sub, :string

    field :sa_call_price, :string

    field :sa_revenue, :string

    field :sa_fsaccr_acct, :string

    field :sa_fsaccr_sub, :string

    field :sa_fsaccr_cc, :string

    field :sa_fsdef_acct, :string

    field :sa_fsdef_sub, :string

    field :sa_fsdef_cc, :string

    field :sa_bill_enduser, Conduit.QAD.Types.Bool

    field :sa_bill_summary, Conduit.QAD.Types.Bool

    field :sa_item_enduser, Conduit.QAD.Types.Bool

    field :sa_per_bill, Conduit.QAD.Types.Bool

    field :sa_prorate, Conduit.QAD.Types.Bool

    field :sa_domain, :string

    field :oid_sa_mstr, :decimal, primary_key: true

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
