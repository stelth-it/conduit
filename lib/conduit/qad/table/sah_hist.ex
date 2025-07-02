defmodule Elixir.Conduit.QAD.Table.Sah_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sah_hist" do
    field :sah_area, :string

    field :sah_arrears, Conduit.QAD.Types.Bool

    field :sah__qadc05, :string

    field :sah__qadc06, :string

    field :sah_autornew, Conduit.QAD.Types.Bool

    field :sah_base_pct, :decimal

    field :sah_bill_cnt, :integer

    field :sah_bill_to, :string

    field :sah_bill_type, :string

    field :sah_blanket, Conduit.QAD.Types.Bool

    field :sah_bol, :string

    field :sah_calls_allow, :integer

    field :sah_calls_total, :integer

    field :sah_cancel, Conduit.QAD.Types.Date

    field :sah_can_tax, :decimal

    field :sah_channel, :string

    field :sah_cmtindx, :integer

    field :sah_xcomm_pct, {:array, :decimal}

    field :sah_complete, Conduit.QAD.Types.Bool

    field :sah_conf_date, Conduit.QAD.Types.Date

    field :sah_cr_card, :string

    field :sah_cr_init, :string

    field :sah_cr_terms, :string

    field :sah_curr, :string

    field :sah_cust, :string

    field :sah_cycle, :string

    field :sah_date_printed, Conduit.QAD.Types.Date

    field :sah_disc_pct, :decimal

    field :sah_enduser, :string

    field :sah_end_date, Conduit.QAD.Types.Date

    field :sah_ent_ex, :decimal

    field :sah_exp_date, Conduit.QAD.Types.Date

    field :sah_ext_date, Conduit.QAD.Types.Date

    field :sah_ex_rate, :decimal

    field :sah_fix_pr, Conduit.QAD.Types.Bool

    field :sah_fix_rate, Conduit.QAD.Types.Bool

    field :sah_fob, :string

    field :sah_free_frm, Conduit.QAD.Types.Date

    field :sah_free_to, Conduit.QAD.Types.Date

    field :sah_fst_id, :string

    field :sah_gen_0itm, Conduit.QAD.Types.Bool

    field :sah_hold, Conduit.QAD.Types.Bool

    field :sah_invoiced, Conduit.QAD.Types.Bool

    field :sah_inv_date, Conduit.QAD.Types.Date

    field :sah_lang, :string

    field :sah_last_bill, Conduit.QAD.Types.Date

    field :sah_lst_bill, Conduit.QAD.Types.Date

    field :sah_lst_cover, Conduit.QAD.Types.Date

    field :sah_mref, :string

    field :sah_nbr, :string

    field :sah_next_dur, :decimal

    field :sah_nxt_bill, Conduit.QAD.Types.Date

    field :sah_off_hours_pt, :string

    field :sah_ord_date, Conduit.QAD.Types.Date

    field :sah_orig_date, Conduit.QAD.Types.Date

    field :sah_part, :string

    field :sah_periodic, Conduit.QAD.Types.Bool

    field :sah_po, :string

    field :sah_prefix, :string

    field :sah_prepaid, :decimal

    field :sah_print, Conduit.QAD.Types.Bool

    field :sah_print_pl, Conduit.QAD.Types.Bool

    field :sah_prodline, :string

    field :sah_prt_0itm, Conduit.QAD.Types.Bool

    field :sah_pr_list, :string

    field :sah_pr_list2, :string

    field :sah_pst, Conduit.QAD.Types.Bool

    field :sah_pst_id, :string

    field :sah_qty_per, :decimal

    field :sah_qty_plst, :decimal

    field :sah_quote, :string

    field :sah_quote_mod, Conduit.QAD.Types.Bool

    field :sah_release, Conduit.QAD.Types.Bool

    field :sah_rel_date, Conduit.QAD.Types.Date

    field :sah_renewal_date, Conduit.QAD.Types.Date

    field :sah_renew_count, :integer

    field :sah_renew_period, :integer

    field :sah_revalue_date, Conduit.QAD.Types.Date

    field :sah_reval_index, :integer

    field :sah_reval_period, :integer

    field :sah_rmks, :string

    field :sah_rsn_lost, :string

    field :sah_sah_type, :string

    field :sah_schedule, Conduit.QAD.Types.Bool

    field :sah_sched_start, Conduit.QAD.Types.Bool

    field :sah_serial_det, Conduit.QAD.Types.Bool

    field :sah_shipvia, :string

    field :sah_ship_date, Conduit.QAD.Types.Date

    field :sah_site, :string

    field :sah_xslspsn, {:array, :string}

    field :sah_source, :string

    field :sah_so_nbr, :string

    field :sah_stat, :string

    field :sah_st_cover, Conduit.QAD.Types.Date

    field :sah_st_date, Conduit.QAD.Types.Date

    field :sah_summarize, Conduit.QAD.Types.Bool

    field :sah_taxable, Conduit.QAD.Types.Bool

    field :sah_taxc, :string

    field :sah_tax_date, Conduit.QAD.Types.Date

    field :sah_tax_env, :string

    field :sah_tax_pct, {:array, :decimal}

    field :sah_tax_usage, :string

    field :sah_total_billed, :decimal

    field :sah_total_cost, :decimal

    field :sah_trl1_amt, :decimal

    field :sah_trl1_cd, :string

    field :sah_trl2_amt, :decimal

    field :sah_trl2_cd, :string

    field :sah_trl3_amt, :decimal

    field :sah_trl3_cd, :string

    field :sah_trnbr, :integer

    field :sah_type, :string

    field :sah_um, :string

    field :sah_user1, :string

    field :sah_user2, :string

    field :sah_visits, :decimal

    field :sah__chr01, :string

    field :sah__chr02, :string

    field :sah__chr03, :string

    field :sah__chr04, :string

    field :sah__chr05, :string

    field :sah__chr06, :string

    field :sah__chr07, :string

    field :sah__chr08, :string

    field :sah__chr09, :string

    field :sah__chr10, :string

    field :sah__dec01, :decimal

    field :sah__dec02, :decimal

    field :sah__dec03, :decimal

    field :sah__dte01, Conduit.QAD.Types.Date

    field :sah__dte02, Conduit.QAD.Types.Date

    field :sah__dte03, Conduit.QAD.Types.Date

    field :sah__log01, Conduit.QAD.Types.Bool

    field :sah__log02, Conduit.QAD.Types.Bool

    field :sah__log03, Conduit.QAD.Types.Bool

    field :sah__qadc01, :string

    field :sah__qadc02, :string

    field :sah__qadc03, :string

    field :sah__qadc04, :string

    field :sah__qadt01, Conduit.QAD.Types.Date

    field :sah__qadt02, Conduit.QAD.Types.Date

    field :sah__qadt03, Conduit.QAD.Types.Date

    field :sah__qadd01, :decimal

    field :sah__qadd02, :decimal

    field :sah__qadd03, :decimal

    field :sah__qadl01, Conduit.QAD.Types.Bool

    field :sah__qadl02, Conduit.QAD.Types.Bool

    field :sah__qadl03, Conduit.QAD.Types.Bool

    field :sah_project, :string

    field :sah_mrp, Conduit.QAD.Types.Bool

    field :sah_mod_userid, :string

    field :sah_mod_date, Conduit.QAD.Types.Date

    field :sah_limit_copy, :string

    field :sah_renewed_from, :string

    field :sah_renewed_to, :string

    field :sah_comm_pct, {:array, :decimal}

    field :sah_slspsn, {:array, :string}

    field :sah__qadl04, Conduit.QAD.Types.Bool

    field :sah_ex_rate2, :decimal

    field :sah_ex_ratetype, :string

    field :sah_exru_seq, :integer

    field :sah_domain, :string

    field :oid_sah_hist, :decimal, primary_key: true

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
