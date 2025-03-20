defmodule Elixir.Conduit.QAD.Table.Prj_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_prj_mstr" do
    field :prj_nbr, :string

    field :prj_action_stat, :string

    field :prj_ar_acct, :string

    field :prj_ar_sub, :string

    field :prj_ar_cc, :string

    field :prj_bg_above, :decimal

    field :prj_bg_below, :decimal

    field :prj_bill_to, :string

    field :prj_channel, :string

    field :prj_cmtindx, :integer

    field :prj_close_date, Conduit.QAD.Types.Date

    field :prj_comm_pct, {:array, :decimal}

    field :prj_cr_card, :string

    field :prj_cr_init, :string

    field :prj_cr_terms, :string

    field :prj_curr, :string

    field :prj_cust, :string

    field :prj_desc, :string

    field :prj_end_date, Conduit.QAD.Types.Date

    field :prj_eng_nbr, :string

    field :prj_eu_nbr, :string

    field :prj_exru_seq, :integer

    field :prj_ex_rate, :decimal

    field :prj_ex_rate2, :decimal

    field :prj_ex_ratetype, :string

    field :prj_fix_rate, Conduit.QAD.Types.Bool

    field :prj_global_inv, Conduit.QAD.Types.Bool

    field :prj_inv_det, Conduit.QAD.Types.Bool

    field :prj_inv_det_pr, Conduit.QAD.Types.Bool

    field :prj_inv_lvl, Conduit.QAD.Types.Bool

    field :prj_lang, :string

    field :prj_loc, :string

    field :prj_mref, :string

    field :prj_ord_date, Conduit.QAD.Types.Date

    field :prj_pjt_code, :string

    field :prj_po, :string

    field :prj_pr_list, :string

    field :prj_pr_rollup, Conduit.QAD.Types.Bool

    field :prj_prepaid, :decimal

    field :prj_prep_tax, :decimal

    field :prj_pricing_dt, Conduit.QAD.Types.Date

    field :prj_rmks, :string

    field :prj_ship_date, Conduit.QAD.Types.Date

    field :prj_ship_to, :string

    field :prj_shipvia, :string

    field :prj_site, :string

    field :prj_slspsn, {:array, :string}

    field :prj_st_date, Conduit.QAD.Types.Date

    field :prj_status, :string

    field :prj_tax_date, Conduit.QAD.Types.Date

    field :prj_tax_env, :string

    field :prj_tax_in, Conduit.QAD.Types.Bool

    field :prj_tax_usage, :string

    field :prj_taxable, Conduit.QAD.Types.Bool

    field :prj_taxc, :string

    field :prj_type_taxc, :string

    field :prj_trl1_amt, :decimal

    field :prj_trl1_cd, :string

    field :prj_trl2_amt, :decimal

    field :prj_trl2_cd, :string

    field :prj_trl3_amt, :decimal

    field :prj_trl3_cd, :string

    field :prj_userid, :string

    field :prj_use_budgets, Conduit.QAD.Types.Bool

    field :prj_mod_date, Conduit.QAD.Types.Date

    field :prj_mod_userid, :string

    field :prj_user1, :string

    field :prj_user2, :string

    field :prj__dec01, :decimal

    field :prj__log01, Conduit.QAD.Types.Bool

    field :prj__dte01, Conduit.QAD.Types.Date

    field :prj__qadc01, :string

    field :prj__qadc02, :string

    field :prj__qadd01, :decimal

    field :prj__qadd02, :decimal

    field :prj__qadi01, :integer

    field :prj__qadi02, :integer

    field :prj__qadl01, Conduit.QAD.Types.Bool

    field :prj__qadl02, Conduit.QAD.Types.Bool

    field :prj__qadt01, Conduit.QAD.Types.Date

    field :prj__qadt02, Conduit.QAD.Types.Date

    field :prj_domain, :string

    field :oid_prj_mstr, :decimal, primary_key: true

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
