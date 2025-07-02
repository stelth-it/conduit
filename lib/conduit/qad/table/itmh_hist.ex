defmodule Elixir.Conduit.QAD.Table.Itmh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_itmh_hist" do
    field :itmh_bom_code, :string

    field :itmh_ca_int_type, :string

    field :itmh_cmtindx, :integer

    field :itmh_comp_date, Conduit.QAD.Types.Date

    field :itmh_desc, :string

    field :itmh_eng_code, :string

    field :itmh_line, :integer

    field :itmh_nbr, :string

    field :itmh_nxt_act, :string

    field :itmh_nxt_date, Conduit.QAD.Types.Date

    field :itmh_nxt_time, :string

    field :itmh_part, :string

    field :itmh_prefix, :string

    field :itmh_qty_call, :decimal

    field :itmh_qty_rc_rec, :decimal

    field :itmh_qty_rc_ship, :decimal

    field :itmh_qty_rec, :decimal

    field :itmh_qty_ship, :decimal

    field :itmh_rec_date, Conduit.QAD.Types.Date

    field :itmh_ref, :integer

    field :itmh_rev, :string

    field :itmh_route, :string

    field :itmh_sad_line, :integer

    field :itmh_sa_nbr, :string

    field :itmh_serial, :string

    field :itmh_ship_date, Conduit.QAD.Types.Date

    field :itmh_sv_code, :string

    field :itmh_type, :string

    field :itmh_user1, :string

    field :itmh_user2, :string

    field :itmh_taxc, :string

    field :itmh_tax_usage, :string

    field :itmh__chr01, :string

    field :itmh__chr02, :string

    field :itmh__chr03, :string

    field :itmh__chr04, :string

    field :itmh__dec01, :decimal

    field :itmh__dec02, :decimal

    field :itmh__dec03, :decimal

    field :itmh__dte01, Conduit.QAD.Types.Date

    field :itmh__dte02, Conduit.QAD.Types.Date

    field :itmh__dte03, Conduit.QAD.Types.Date

    field :itmh__log01, Conduit.QAD.Types.Bool

    field :itmh__log02, Conduit.QAD.Types.Bool

    field :itmh__log03, Conduit.QAD.Types.Bool

    field :itmh__qadc01, :string

    field :itmh__qadc02, :string

    field :itmh__qadc03, :string

    field :itmh__qadc04, :string

    field :itmh__qadt01, Conduit.QAD.Types.Date

    field :itmh__qadt02, Conduit.QAD.Types.Date

    field :itmh__qadt03, Conduit.QAD.Types.Date

    field :itmh__qadd01, :decimal

    field :itmh__qadd02, :decimal

    field :itmh__qadd03, :decimal

    field :itmh__qadl01, Conduit.QAD.Types.Bool

    field :itmh__qadl02, Conduit.QAD.Types.Bool

    field :itmh__qadl03, Conduit.QAD.Types.Bool

    field :itmh_stdown_time, :string

    field :itmh_stdown_date, Conduit.QAD.Types.Date

    field :itmh_stjob_date, Conduit.QAD.Types.Date

    field :itmh_endown_date, Conduit.QAD.Types.Date

    field :itmh_endown_time, :string

    field :itmh_bom_gen, Conduit.QAD.Types.Bool

    field :itmh_due_date, Conduit.QAD.Types.Date

    field :itmh_exp_rec, Conduit.QAD.Types.Date

    field :itmh_route_gen, Conduit.QAD.Types.Bool

    field :itmh_sa_sv, :string

    field :itmh_svc_type, :string

    field :itmh_taxable, Conduit.QAD.Types.Bool

    field :itmh_warr_sv, :string

    field :itmh__qadc05, :string

    field :itmh__qadc06, :string

    field :itmh_opn_date, Conduit.QAD.Types.Date

    field :itmh_status, :string

    field :itmh_stjob_time, :string

    field :itmh_fix_pr, Conduit.QAD.Types.Bool

    field :itmh_fixed_price, :decimal

    field :itmh_bill_detail, Conduit.QAD.Types.Bool

    field :itmh_unprocessed, Conduit.QAD.Types.Bool

    field :itmh_invoiced, Conduit.QAD.Types.Bool

    field :itmh_uninvoiced, Conduit.QAD.Types.Bool

    field :itmh_itm_line, :integer

    field :itmh_recorded, Conduit.QAD.Types.Bool

    field :itmh_qty_chg, :decimal

    field :itmh_tag, :string

    field :itmh_rrc_nbr, :string

    field :itmh_rrc_seq, :integer

    field :itmh_sep_doc, Conduit.QAD.Types.Bool

    field :itmh_site, :string

    field :itmh_loc, :string

    field :itmh_upd_isb, Conduit.QAD.Types.Bool

    field :itmh_mod_userid, :string

    field :itmh_mod_date, Conduit.QAD.Types.Date

    field :itmh_tax_env, :string

    field :itmh_tax_in, Conduit.QAD.Types.Bool

    field :itmh_est_time, :string

    field :itmh_pr_list, :string

    field :itmh_prod_line, :string

    field :itmh_override_lmt, Conduit.QAD.Types.Bool

    field :itmh_eu_nbr, :string

    field :itmh_pst, Conduit.QAD.Types.Bool

    field :itmh_acct, :string

    field :itmh_sub, :string

    field :itmh_cc, :string

    field :itmh_project, :string

    field :itmh_dsc_acct, :string

    field :itmh_dsc_sub, :string

    field :itmh_dsc_cc, :string

    field :itmh_dsc_project, :string

    field :itmh_domain, :string

    field :oid_itmh_hist, :decimal, primary_key: true

    field :itmh_model, :string

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
