defmodule Elixir.Conduit.QAD.Table.So_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_so_mstr" do
    field :so_nbr, :string

    field :so_cust, :string

    field :so_ship, :string

    field :so_ord_date, Conduit.QAD.Types.Date

    field :so_req_date, Conduit.QAD.Types.Date

    field :so_due_date, Conduit.QAD.Types.Date

    field :so_rmks, :string

    field :so_cr_terms, :string

    field :so_fob, :string

    field :so_po, :string

    field :so_shipvia, :string

    field :so_partial, Conduit.QAD.Types.Bool

    field :so_print_so, Conduit.QAD.Types.Bool

    field :so_inv_nbr, :string

    field :so_pr_list, :string

    field :so_xslspsn, {:array, :string}

    field :so_source, :string

    field :so_xcomm_pct, {:array, :decimal}

    field :so_cr_card, :string

    field :so_print_pl, Conduit.QAD.Types.Bool

    field :so_cr_init, :string

    field :so_stat, :string

    field :so__qad01, :decimal

    field :so__qad02, :decimal

    field :so__qad03, :decimal

    field :so_disc_pct, :decimal

    field :so_tax_pct, {:array, :decimal}

    field :so_prepaid, :decimal

    field :so_to_inv, Conduit.QAD.Types.Bool

    field :so_invoiced, Conduit.QAD.Types.Bool

    field :so_ar_acct, :string

    field :so_ar_cc, :string

    field :so_inv_date, Conduit.QAD.Types.Date

    field :so_ship_date, Conduit.QAD.Types.Date

    field :so_taxable, Conduit.QAD.Types.Bool

    field :so_cmtindx, :integer

    field :so__qad04, :integer

    field :so_user1, :string

    field :so_user2, :string

    field :so_curr, :string

    field :so_ex_rate, :decimal

    field :so_lang, :string

    field :so_type, :string

    field :so_conf_date, Conduit.QAD.Types.Date

    field :so_rev, :integer

    field :so_bol, :string

    field :so__qad05, {:array, :decimal}

    field :so_pst, Conduit.QAD.Types.Bool

    field :so_fst_id, :string

    field :so_trl1_amt, :decimal

    field :so_trl1_cd, :string

    field :so_trl2_amt, :decimal

    field :so_trl2_cd, :string

    field :so_trl3_amt, :decimal

    field :so_trl3_cd, :string

    field :so_weight, :decimal

    field :so_weight_um, :string

    field :so_size, :decimal

    field :so_size_um, :string

    field :so_cartons, :integer

    field :so_site, :string

    field :so_pst_id, :string

    field :so_cncl_date, Conduit.QAD.Types.Date

    field :so_quote, :string

    field :so_taxc, :string

    field :so__chr01, :string

    field :so__chr02, :string

    field :so__chr03, :string

    field :so__chr04, :string

    field :so__chr05, :string

    field :so__chr06, :string

    field :so__chr07, :string

    field :so__chr08, :string

    field :so__chr09, :string

    field :so__chr10, :string

    field :so__dte01, Conduit.QAD.Types.Date

    field :so__dte02, Conduit.QAD.Types.Date

    field :so__dec01, :decimal

    field :so__dec02, :decimal

    field :so__log01, Conduit.QAD.Types.Bool

    field :so_credit, Conduit.QAD.Types.Bool

    field :so_inv_cr, :string

    field :so_project, :string

    field :so_channel, :string

    field :so_pst_pct, :decimal

    field :so_fr_list, :string

    field :so_fr_terms, :string

    field :so_slspsn, {:array, :string}

    field :so_comm_pct, {:array, :decimal}

    field :so_inv_mthd, :string

    field :so_fix_rate, Conduit.QAD.Types.Bool

    field :so_ent_ex, :decimal

    field :so_bill, :string

    field :so_print_bl, Conduit.QAD.Types.Bool

    field :so_tax_date, Conduit.QAD.Types.Date

    field :so_fsm_type, :string

    field :so_userid, :string

    field :so_conrep, :string

    field :so_bank, :string

    field :so_tax_env, :string

    field :so_sched, Conduit.QAD.Types.Bool

    field :so_fr_min_wt, :decimal

    field :so_pr_list2, :string

    field :so_tax_usage, :string

    field :so_sa_nbr, :string

    field :so_fix_pr, Conduit.QAD.Types.Bool

    field :so_sch_mthd, :string

    field :so_eng_code, :string

    field :so_ship_eng, Conduit.QAD.Types.Bool

    field :so_pricing_dt, Conduit.QAD.Types.Date

    field :so_priced_dt, Conduit.QAD.Types.Date

    field :so_ca_nbr, :string

    field :so_fcg_code, :string

    field :so_crprlist, :string

    field :so__qadc01, :string

    field :so__qadc02, :string

    field :so__qadc03, :string

    field :so__qadc04, :string

    field :so__qadc05, :string

    field :so__qadl01, Conduit.QAD.Types.Bool

    field :so__qadl02, Conduit.QAD.Types.Bool

    field :so_incl_iss, Conduit.QAD.Types.Bool

    field :so__qadi01, :integer

    field :so__qadi02, :integer

    field :so__qadi03, :integer

    field :so__qadd01, :decimal

    field :so__qadd02, :decimal

    field :so__qadd03, :decimal

    field :so__qadt01, Conduit.QAD.Types.Date

    field :so__qadt02, Conduit.QAD.Types.Date

    field :so__qadt03, Conduit.QAD.Types.Date

    field :so_auth_days, :integer

    field :so_cum_acct, Conduit.QAD.Types.Bool

    field :so_merge_rss, Conduit.QAD.Types.Bool

    field :so_ship_cmplt, :integer

    field :so_bump_all, Conduit.QAD.Types.Bool

    field :so_primary, Conduit.QAD.Types.Bool

    field :so_cust_po, :string

    field :so_secondary, Conduit.QAD.Types.Bool

    field :so_ship_po, :string

    field :so_ex_rate2, :decimal

    field :so_ex_ratetype, :string

    field :so_div, :string

    field :so_exru_seq, :integer

    field :so_app_owner, :string

    field :so_ar_sub, :string

    field :so_seq_order, Conduit.QAD.Types.Bool

    field :so_inc_in_rss, Conduit.QAD.Types.Bool

    field :so_firm_seq_days, :integer

    field :so_prep_tax, :decimal

    field :so__qadl04, Conduit.QAD.Types.Bool

    field :so_custref_val, Conduit.QAD.Types.Bool

    field :so_consignment, Conduit.QAD.Types.Bool

    field :so_max_aging_days, :integer

    field :so_consign_loc, :string

    field :so_intrans_loc, :string

    field :so_auto_replenish, Conduit.QAD.Types.Bool

    field :so_revenue, :string

    field :so_fsaccr_acct, :string

    field :so_fsaccr_sub, :string

    field :so_fsaccr_cc, :string

    field :so_fsdef_acct, :string

    field :so_fsdef_sub, :string

    field :so_fsdef_cc, :string

    field :so_manual_fr_terms, Conduit.QAD.Types.Bool

    field :so_domain, :string

    field :oid_so_mstr, :decimal, primary_key: true

    field :so_req_time, :string

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
