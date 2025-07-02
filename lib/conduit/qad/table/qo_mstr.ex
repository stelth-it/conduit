defmodule Elixir.Conduit.QAD.Table.Qo_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qo_mstr" do
    field :qo_nbr, :string

    field :qo_cust, :string

    field :qo_ship, :string

    field :qo_ord_date, Conduit.QAD.Types.Date

    field :qo_req_date, Conduit.QAD.Types.Date

    field :qo_due_date, Conduit.QAD.Types.Date

    field :qo_rmks, :string

    field :qo_cr_terms, :string

    field :qo_fob, :string

    field :qo_po, :string

    field :qo_shipvia, :string

    field :qo_partial, Conduit.QAD.Types.Bool

    field :qo_print_qo, Conduit.QAD.Types.Bool

    field :qo_pr_list, :string

    field :qo_xslspsn, {:array, :string}

    field :qo_source, :string

    field :qo_xcomm_pct, {:array, :decimal}

    field :qo_cr_card, :string

    field :qo_print_pl, Conduit.QAD.Types.Bool

    field :qo_cr_init, :string

    field :qo_stat, :string

    field :qo__qad01, :decimal

    field :qo__qad02, :decimal

    field :qo__qad03, :decimal

    field :qo_disc_pct, :decimal

    field :qo_tax_pct, {:array, :decimal}

    field :qo_prepaid, :decimal

    field :qo_ar_acct, :string

    field :qo_ar_cc, :string

    field :qo_ship_date, Conduit.QAD.Types.Date

    field :qo_taxable, Conduit.QAD.Types.Bool

    field :qo_cmtindx, :integer

    field :qo__qad04, :integer

    field :qo_user1, :string

    field :qo_user2, :string

    field :qo_so_nbr, :string

    field :qo_confirm, Conduit.QAD.Types.Date

    field :qo_exp_date, Conduit.QAD.Types.Date

    field :qo_rel_date, Conduit.QAD.Types.Date

    field :qo_release, Conduit.QAD.Types.Bool

    field :qo_recur, Conduit.QAD.Types.Bool

    field :qo_cycle, :string

    field :qo_rel_cnt, :integer

    field :qo_flw_date, Conduit.QAD.Types.Date

    field :qo_curr, :string

    field :qo_ex_rate, :decimal

    field :qo_lang, :string

    field :qo__qad05, {:array, :decimal}

    field :qo_pst, Conduit.QAD.Types.Bool

    field :qo_fst_id, :string

    field :qo_pst_id, :string

    field :qo_trl1_amt, :decimal

    field :qo_trl1_cd, :string

    field :qo_trl2_amt, :decimal

    field :qo_trl2_cd, :string

    field :qo_trl3_amt, :decimal

    field :qo_trl3_cd, :string

    field :qo_weight, :decimal

    field :qo_weight_um, :string

    field :qo_size, :decimal

    field :qo_size_um, :string

    field :qo_cartons, :integer

    field :qo_bol, :string

    field :qo_site, :string

    field :qo_taxc, :string

    field :qo__chr01, :string

    field :qo__chr02, :string

    field :qo__chr03, :string

    field :qo__chr04, :string

    field :qo__chr05, :string

    field :qo__chr06, :string

    field :qo__chr07, :string

    field :qo__chr08, :string

    field :qo__chr09, :string

    field :qo__chr10, :string

    field :qo__dte01, Conduit.QAD.Types.Date

    field :qo__dte02, Conduit.QAD.Types.Date

    field :qo__dec01, :decimal

    field :qo__dec02, :decimal

    field :qo__log01, Conduit.QAD.Types.Bool

    field :qo_project, :string

    field :qo_rev, :integer

    field :qo_pst_pct, :decimal

    field :qo_fr_list, :string

    field :qo_fr_terms, :string

    field :qo_comm_pct, {:array, :decimal}

    field :qo_slspsn, {:array, :string}

    field :qo_fix_rate, Conduit.QAD.Types.Bool

    field :qo_ent_ex, :decimal

    field :qo_bill, :string

    field :qo_print_bl, Conduit.QAD.Types.Bool

    field :qo_userid, :string

    field :qo_tax_date, Conduit.QAD.Types.Date

    field :qo_inv_mthd, :string

    field :qo_channel, :string

    field :qo_bank, :string

    field :qo_fr_min_wt, :decimal

    field :qo_pr_list2, :string

    field :qo_tax_env, :string

    field :qo_tax_usage, :string

    field :qo_pricing_dt, Conduit.QAD.Types.Date

    field :qo_priced_dt, Conduit.QAD.Types.Date

    field :qo_ex_rate2, :decimal

    field :qo_ex_ratetype, :string

    field :qo_div, :string

    field :qo_exru_seq, :integer

    field :qo_ar_sub, :string

    field :qo_app_owner, :string

    field :qo_manual_fr_terms, Conduit.QAD.Types.Bool

    field :qo_domain, :string

    field :oid_qo_mstr, :decimal, primary_key: true

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
