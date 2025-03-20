defmodule Elixir.Conduit.QAD.Table.Ih_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ih_hist" do
    field :ih_nbr, :string

    field :ih_cust, :string

    field :ih_ship, :string

    field :ih_ord_date, Conduit.QAD.Types.Date

    field :ih_req_date, Conduit.QAD.Types.Date

    field :ih_due_date, Conduit.QAD.Types.Date

    field :ih_rmks, :string

    field :ih_cr_terms, :string

    field :ih_fob, :string

    field :ih_po, :string

    field :ih_shipvia, :string

    field :ih_partial, Conduit.QAD.Types.Bool

    field :ih_print_so, Conduit.QAD.Types.Bool

    field :ih_inv_nbr, :string

    field :ih_pr_list, :string

    field :ih_xslspsn, {:array, :string}

    field :ih_source, :string

    field :ih_xcomm_pct, {:array, :decimal}

    field :ih_cr_card, :string

    field :ih_print_pl, Conduit.QAD.Types.Bool

    field :ih_cr_init, :string

    field :ih_stat, :string

    field :ih__qad01, :decimal

    field :ih__qad02, :decimal

    field :ih__qad03, :decimal

    field :ih_disc_pct, :decimal

    field :ih_tax_pct, {:array, :decimal}

    field :ih_prepaid, :decimal

    field :ih_to_inv, Conduit.QAD.Types.Bool

    field :ih_invoiced, Conduit.QAD.Types.Bool

    field :ih_ar_acct, :string

    field :ih_ar_cc, :string

    field :ih_inv_date, Conduit.QAD.Types.Date

    field :ih_ship_date, Conduit.QAD.Types.Date

    field :ih_taxable, Conduit.QAD.Types.Bool

    field :ih_cmtindx, :integer

    field :ih__qad04, :integer

    field :ih_user1, :string

    field :ih_user2, :string

    field :ih_curr, :string

    field :ih_ex_rate, :decimal

    field :ih_lang, :string

    field :ih_type, :string

    field :ih_conf_date, Conduit.QAD.Types.Date

    field :ih_rev, :integer

    field :ih_bol, :string

    field :ih__qad05, {:array, :decimal}

    field :ih_pst, Conduit.QAD.Types.Bool

    field :ih_fst_id, :string

    field :ih_trl1_amt, :decimal

    field :ih_trl1_cd, :string

    field :ih_trl2_amt, :decimal

    field :ih_trl2_cd, :string

    field :ih_trl3_amt, :decimal

    field :ih_trl3_cd, :string

    field :ih_weight, :decimal

    field :ih_weight_um, :string

    field :ih_size, :decimal

    field :ih_size_um, :string

    field :ih_cartons, :integer

    field :ih_site, :string

    field :ih_quote, :string

    field :ih_taxc, :string

    field :ih__chr01, :string

    field :ih__chr02, :string

    field :ih__chr03, :string

    field :ih__chr04, :string

    field :ih__chr05, :string

    field :ih__chr06, :string

    field :ih__chr07, :string

    field :ih__chr08, :string

    field :ih__chr09, :string

    field :ih__chr10, :string

    field :ih__dte01, Conduit.QAD.Types.Date

    field :ih__dte02, Conduit.QAD.Types.Date

    field :ih__dec01, :decimal

    field :ih__dec02, :decimal

    field :ih__log01, Conduit.QAD.Types.Bool

    field :ih_credit, Conduit.QAD.Types.Bool

    field :ih_inv_cr, :string

    field :ih_project, :string

    field :ih_pst_pct, :decimal

    field :ih_pst_id, :string

    field :ih_fr_list, :string

    field :ih_fr_terms, :string

    field :ih_comm_pct, {:array, :decimal}

    field :ih_slspsn, {:array, :string}

    field :ih_fix_rate, Conduit.QAD.Types.Bool

    field :ih_ent_ex, :decimal

    field :ih_bill, :string

    field :ih_print_bl, Conduit.QAD.Types.Bool

    field :ih_userid, :string

    field :ih_tax_date, Conduit.QAD.Types.Date

    field :ih_channel, :string

    field :ih_inv_mthd, :string

    field :ih_fsm_type, :string

    field :ih_bank, :string

    field :ih_fr_min_wt, :decimal

    field :ih_pr_list2, :string

    field :ih_tax_env, :string

    field :ih_tax_usage, :string

    field :ih_sa_nbr, :string

    field :ih_crprlist, :string

    field :ih_ship_eng, Conduit.QAD.Types.Bool

    field :ih_cncl_date, Conduit.QAD.Types.Date

    field :ih_conrep, :string

    field :ih_sched, Conduit.QAD.Types.Bool

    field :ih_fix_pr, Conduit.QAD.Types.Bool

    field :ih_sch_mthd, :string

    field :ih_ca_nbr, :string

    field :ih_fcg_code, :string

    field :ih_mod_date, Conduit.QAD.Types.Date

    field :ih_pricing_dt, Conduit.QAD.Types.Date

    field :ih_priced_dt, Conduit.QAD.Types.Date

    field :ih_rstk_pct, :decimal

    field :ih__qadc01, :string

    field :ih__qadc02, :string

    field :ih__qadc03, :string

    field :ih__qadc04, :string

    field :ih__qadc05, :string

    field :ih__qadt01, Conduit.QAD.Types.Date

    field :ih__qadt02, Conduit.QAD.Types.Date

    field :ih__qadt03, Conduit.QAD.Types.Date

    field :ih__qadd01, :decimal

    field :ih__qadd02, :decimal

    field :ih__qadd03, :decimal

    field :ih__qadi01, :integer

    field :ih__qadi02, :integer

    field :ih__qadi03, :integer

    field :ih__qadl01, Conduit.QAD.Types.Bool

    field :ih__qadl02, Conduit.QAD.Types.Bool

    field :ih__qadl03, Conduit.QAD.Types.Bool

    field :ih_primary, Conduit.QAD.Types.Bool

    field :ih_cust_po, :string

    field :ih_secondary, Conduit.QAD.Types.Bool

    field :ih_ship_po, :string

    field :ih_ex_rate2, :decimal

    field :ih_ex_ratetype, :string

    field :ih_div, :string

    field :ih_exru_seq, :integer

    field :ih_export_batch, :integer

    field :ih_export_date, Conduit.QAD.Types.Date

    field :ih_export_time, :integer

    field :ih_ar_sub, :string

    field :ih_prep_tax, :decimal

    field :ih_custref_val, Conduit.QAD.Types.Bool

    field :ih_domain, :string

    field :oid_ih_hist, :decimal, primary_key: true

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
