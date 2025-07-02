defmodule Elixir.Conduit.QAD.Table.Cm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cm_mstr" do
    field :cm_addr, :string

    field :cm_ship, :string

    field :cm_type, :string

    field :cm_cr_terms, :string

    field :cm_xslspsn, :string

    field :cm__qadi01, :integer

    field :cm_pr_list, :string

    field :cm_disc_pct, :decimal

    field :cm_partial, Conduit.QAD.Types.Bool

    field :cm_stmt, Conduit.QAD.Types.Bool

    field :cm_dun, Conduit.QAD.Types.Bool

    field :cm_fin, Conduit.QAD.Types.Bool

    field :cm_ar_acct, :string

    field :cm_ar_cc, :string

    field :cm__qadc07, :string

    field :cm__qadc01, :string

    field :cm_stmt_cyc, :string

    field :cm_shipvia, :string

    field :cm_rmks, :string

    field :cm_resale, :string

    field :cm_region, :string

    field :cm__qad04, {:array, :decimal}

    field :cm_sort, :string

    field :cm_balance, :decimal

    field :cm_taxable, Conduit.QAD.Types.Bool

    field :cm_pay_date, Conduit.QAD.Types.Date

    field :cm_xslspsn2, :string

    field :cm__qadi02, :integer

    field :cm_avg_pay, :integer

    field :cm_user1, :string

    field :cm_user2, :string

    field :cm_curr, :string

    field :cm_lang, :string

    field :cm_db, :string

    field :cm_cr_hold, Conduit.QAD.Types.Bool

    field :cm_cr_rating, :string

    field :cm_high_cr, :decimal

    field :cm_high_date, Conduit.QAD.Types.Date

    field :cm_sale_date, Conduit.QAD.Types.Date

    field :cm_invoices, :integer

    field :cm_fin_date, Conduit.QAD.Types.Date

    field :cm__qad06, Conduit.QAD.Types.Bool

    field :cm_fst_id, :string

    field :cm_pst_id, :string

    field :cm_pst, Conduit.QAD.Types.Bool

    field :cm_tax_in, Conduit.QAD.Types.Bool

    field :cm_site, :string

    field :cm_class, :string

    field :cm_taxc, :string

    field :cm_bill, :string

    field :cm__chr01, :string

    field :cm__chr02, :string

    field :cm__chr03, :string

    field :cm__chr04, :string

    field :cm__chr05, :string

    field :cm__chr06, :string

    field :cm__chr07, :string

    field :cm__chr08, :string

    field :cm__chr09, :string

    field :cm__chr10, :string

    field :cm__dte01, Conduit.QAD.Types.Date

    field :cm__dte02, Conduit.QAD.Types.Date

    field :cm__dec01, :decimal

    field :cm__dec02, :decimal

    field :cm__log01, Conduit.QAD.Types.Bool

    field :cm__qadc02, :string

    field :cm_fr_list, :string

    field :cm_fr_terms, :string

    field :cm_mod_date, Conduit.QAD.Types.Date

    field :cm_userid, :string

    field :cm_conrep_logic, :string

    field :cm_slspsn, {:array, :string}

    field :cm_fr_min_wt, :decimal

    field :cm_drft_bal, :decimal

    field :cm_lc_bal, :decimal

    field :cm_pr_list2, :string

    field :cm_fix_pr, Conduit.QAD.Types.Bool

    field :cm_cr_update, Conduit.QAD.Types.Date

    field :cm_cr_review, Conduit.QAD.Types.Date

    field :cm_coll_mthd, :string

    field :cm_drft_min, :decimal

    field :cm_drft_max, :decimal

    field :cm_drft_disc, Conduit.QAD.Types.Bool

    field :cm_drft_apv, Conduit.QAD.Types.Bool

    field :cm_internal, Conduit.QAD.Types.Bool

    field :cm_svc_list, :string

    field :cm_po_reqd, Conduit.QAD.Types.Bool

    field :cm_serv_terms, :string

    field :cm_cr_limit, :decimal

    field :cm_promo, :string

    field :cm_btb_cr, Conduit.QAD.Types.Bool

    field :cm_btb_type, :string

    field :cm_ship_lt, :integer

    field :cm_btb_mthd, Conduit.QAD.Types.Bool

    field :cm_ex_ratetype, :string

    field :cm_disc_comb, :string

    field :cm_scurr, :string

    field :cm__qadc03, :string

    field :cm__qadc04, :string

    field :cm__qadc05, :string

    field :cm__qadc06, :string

    field :cm__qadd01, :decimal

    field :cm__qadd02, :decimal

    field :cm__qadl01, Conduit.QAD.Types.Bool

    field :cm__qadl02, Conduit.QAD.Types.Bool

    field :cm__qadl03, Conduit.QAD.Types.Bool

    field :cm__qadl04, Conduit.QAD.Types.Bool

    field :cm__qadt01, Conduit.QAD.Types.Date

    field :cm__qadt02, Conduit.QAD.Types.Date

    field :cm__qadi03, :integer

    field :cm__qadi04, :integer

    field :cm_ar_sub, :string

    field :cm_sic, :string

    field :cm_pay_method, :string

    field :cm_submit_prop, Conduit.QAD.Types.Bool

    field :cm_bank, :string

    field :cm_domain, :string

    field :oid_cm_mstr, :decimal, primary_key: true

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
