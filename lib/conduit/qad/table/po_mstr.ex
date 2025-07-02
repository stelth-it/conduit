defmodule Elixir.Conduit.QAD.Table.Po_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_po_mstr" do
    field :po_nbr, :string

    field :po_vend, :string

    field :po_ship, :string

    field :po_ord_date, Conduit.QAD.Types.Date

    field :po_rmks, :string

    field :po_cr_terms, :string

    field :po_buyer, :string

    field :po_shipvia, :string

    field :po_fob, :string

    field :po_bill, :string

    field :po__qad04, Conduit.QAD.Types.Bool

    field :po_partial, Conduit.QAD.Types.Bool

    field :po_rev, :decimal

    field :po_stat, :string

    field :po_ap_acct, :string

    field :po_ap_cc, :string

    field :po_frt, :decimal

    field :po_serv_chg, :decimal

    field :po_spec_chg, :decimal

    field :po_tax_pct, {:array, :decimal}

    field :po_disc_pct, :decimal

    field :po_prepaid, :decimal

    field :po_contact, :string

    field :po_confirm, Conduit.QAD.Types.Bool

    field :po_cmtindx, :integer

    field :po_print, Conduit.QAD.Types.Bool

    field :po_cls_date, Conduit.QAD.Types.Date

    field :po_taxable, Conduit.QAD.Types.Bool

    field :po_user1, :string

    field :po_user2, :string

    field :po_curr, :string

    field :po_ex_rate, :decimal

    field :po_lang, :string

    field :po_fst_id, :string

    field :po_pst_id, :string

    field :po_pst, Conduit.QAD.Types.Bool

    field :po_duty_type, :string

    field :po__qad05, :decimal

    field :po__qad07, :string

    field :po__qad08, :string

    field :po_site, :string

    field :po_blanket, :string

    field :po__qad01, Conduit.QAD.Types.Date

    field :po__qad02, :integer

    field :po__qad03, :string

    field :po_contract, :string

    field :po_del_to, :string

    field :po_due_date, Conduit.QAD.Types.Date

    field :po_eff_strt, Conduit.QAD.Types.Date

    field :po_eff_to, Conduit.QAD.Types.Date

    field :po_est_value, :decimal

    field :po__qad06, Conduit.QAD.Types.Bool

    field :po_project, :string

    field :po_rel_nbr, :integer

    field :po_req_id, :string

    field :po_type, :string

    field :po_user_id, :string

    field :po__qad09, :decimal

    field :po_release, Conduit.QAD.Types.Bool

    field :po_recurr, Conduit.QAD.Types.Bool

    field :po_cycl, :string

    field :po__chr01, :string

    field :po__chr02, :string

    field :po__chr03, :string

    field :po__chr04, :string

    field :po__chr05, :string

    field :po__chr06, :string

    field :po__chr07, :string

    field :po__chr08, :string

    field :po__chr09, :string

    field :po__chr10, :string

    field :po__dte01, Conduit.QAD.Types.Date

    field :po__dte02, Conduit.QAD.Types.Date

    field :po__dec01, :decimal

    field :po__dec02, :decimal

    field :po__log01, Conduit.QAD.Types.Bool

    field :po_inv_mthd, :string

    field :po_fix_rate, Conduit.QAD.Types.Bool

    field :po_ent_ex, :decimal

    field :po_tax_date, Conduit.QAD.Types.Date

    field :po_fsm_type, :string

    field :po_bank, :string

    field :po_pr_list, :string

    field :po_tax_env, :string

    field :po_sched, Conduit.QAD.Types.Bool

    field :po_pr_list2, :string

    field :po_tax_usage, :string

    field :po_fix_pr, Conduit.QAD.Types.Bool

    field :po_sch_mthd, :string

    field :po_taxc, :string

    field :po_priced_dt, Conduit.QAD.Types.Date

    field :po_pricing_dt, Conduit.QAD.Types.Date

    field :po_ers_opt, :string

    field :po_pr_lst_tp, :integer

    field :po__qadc01, :string

    field :po__qadc02, :string

    field :po__qadd01, :decimal

    field :po__qadd02, :decimal

    field :po__qadi01, :integer

    field :po__qadi02, :integer

    field :po_so_nbr, :string

    field :po_is_btb, Conduit.QAD.Types.Bool

    field :po_so_hold, Conduit.QAD.Types.Bool

    field :po_xmit, :string

    field :po_ex_rate2, :decimal

    field :po_ex_ratetype, :string

    field :po_exru_seq, :integer

    field :po_ap_sub, :string

    field :po_crt_int, :decimal

    field :po_consignment, Conduit.QAD.Types.Bool

    field :po_max_aging_days, :integer

    field :po_app_owner, :string

    field :po_tot_terms_code, :string

    field :po_translt_days, :decimal

    field :po_domain, :string

    field :oid_po_mstr, :decimal, primary_key: true

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
