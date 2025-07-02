defmodule Elixir.Conduit.QAD.Table.Vd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vd_mstr" do
    field :vd_addr, :string

    field :vd_cr_terms, :string

    field :vd_buyer, :string

    field :vd_disc_pct, :decimal

    field :vd_shipvia, :string

    field :vd_partial, Conduit.QAD.Types.Bool

    field :vd_rmks, :string

    field :vd_ap_acct, :string

    field :vd_ap_cc, :string

    field :vd_pur_acct, :string

    field :vd_pur_cc, :string

    field :vd_pur_cntct, :string

    field :vd_ap_cntct, :string

    field :vd_1099, Conduit.QAD.Types.Bool

    field :vd_sort, :string

    field :vd_last_ck, Conduit.QAD.Types.Date

    field :vd_balance, :decimal

    field :vd_hold, Conduit.QAD.Types.Bool

    field :vd_tax_id, :string

    field :vd_taxable, Conduit.QAD.Types.Bool

    field :vd_user1, :string

    field :vd_user2, :string

    field :vd_curr, :string

    field :vd_lang, :string

    field :vd_vt_id, :string

    field :vd__chr01, :string

    field :vd__chr02, :string

    field :vd__chr03, :string

    field :vd__chr04, :string

    field :vd__chr05, :string

    field :vd__chr06, :string

    field :vd__chr07, :string

    field :vd__chr08, :string

    field :vd__chr09, :string

    field :vd__chr10, :string

    field :vd__dte01, Conduit.QAD.Types.Date

    field :vd__dte02, Conduit.QAD.Types.Date

    field :vd__dec01, :decimal

    field :vd__dec02, :decimal

    field :vd__log01, Conduit.QAD.Types.Bool

    field :vd_fob, :string

    field :vd_debtor, :string

    field :vd_bank, :string

    field :vd_ckfrm, :string

    field :vd_pay_spec, Conduit.QAD.Types.Bool

    field :vd_remit, :string

    field :vd_type, :string

    field :vd_mod_date, Conduit.QAD.Types.Date

    field :vd_userid, :string

    field :vd_prepay, :decimal

    field :vd_conrep_logic, :string

    field :vd_pr_list, :string

    field :vd_fr_list, :string

    field :vd_fr_terms, :string

    field :vd_fr_min_wt, :decimal

    field :vd_drft_bal, :decimal

    field :vd_lc_bal, :decimal

    field :vd_pr_list2, :string

    field :vd_fix_pr, Conduit.QAD.Types.Bool

    field :vd_tid_notice, :string

    field :vd_promo, :string

    field :vd_misc_cr, Conduit.QAD.Types.Bool

    field :vd_rcv_so_price, Conduit.QAD.Types.Bool

    field :vd_rcv_held_so, Conduit.QAD.Types.Bool

    field :vd_tp_use_pct, Conduit.QAD.Types.Bool

    field :vd_tp_pct, :decimal

    field :vd_ex_ratetype, :string

    field :vd_db, :string

    field :vd__qadc01, :string

    field :vd__qadc02, :string

    field :vd__qadc03, :string

    field :vd__qadc04, :string

    field :vd__qadd01, :decimal

    field :vd__qadd02, :decimal

    field :vd__qadl01, Conduit.QAD.Types.Bool

    field :vd__qadl02, Conduit.QAD.Types.Bool

    field :vd__qadt01, Conduit.QAD.Types.Date

    field :vd__qadt02, Conduit.QAD.Types.Date

    field :vd__qadi01, :integer

    field :vd__qadi02, :integer

    field :vd__qadl03, Conduit.QAD.Types.Bool

    field :vd__qadl04, Conduit.QAD.Types.Bool

    field :vd_ap_sub, :string

    field :vd_pur_sub, :string

    field :vd_tot_terms_code, :string

    field :vd_domain, :string

    field :oid_vd_mstr, :decimal, primary_key: true

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
