defmodule Elixir.Conduit.QAD.Table.Itm_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_itm_det" do
    field :itm_nbr, :string

    field :itm_prefix, :string

    field :itm_part, :string

    field :itm_rev, :string

    field :itm_cmtindx, :integer

    field :itm_serial, :string

    field :itm_ref, :integer

    field :itm_user1, :string

    field :itm_user2, :string

    field :itm__qadc06, :string

    field :itm__qadc05, :string

    field :itm_bill_detail, Conduit.QAD.Types.Bool

    field :itm_bom_code, :string

    field :itm_bom_gen, Conduit.QAD.Types.Bool

    field :itm_ca_int_type, :string

    field :itm_comp_date, Conduit.QAD.Types.Date

    field :itm_desc, :string

    field :itm_eng_code, :string

    field :itm_line, :integer

    field :itm_nxt_act, :string

    field :itm_nxt_date, Conduit.QAD.Types.Date

    field :itm_nxt_time, :string

    field :itm_qty_call, :decimal

    field :itm_qty_rc_rec, :decimal

    field :itm_qty_rc_ship, :decimal

    field :itm_qty_rec, :decimal

    field :itm_qty_ship, :decimal

    field :itm_rec_date, Conduit.QAD.Types.Date

    field :itm_route, :string

    field :itm_route_gen, Conduit.QAD.Types.Bool

    field :itm_sad_line, :integer

    field :itm_sa_nbr, :string

    field :itm_ship_date, Conduit.QAD.Types.Date

    field :itm_status, :string

    field :itm_svc_type, :string

    field :itm_sv_code, :string

    field :itm_taxable, Conduit.QAD.Types.Bool

    field :itm_taxc, :string

    field :itm_tax_usage, :string

    field :itm_type, :string

    field :itm__chr01, :string

    field :itm__chr02, :string

    field :itm__chr03, :string

    field :itm__chr04, :string

    field :itm__dec01, :decimal

    field :itm__dec02, :decimal

    field :itm__dec03, :decimal

    field :itm__dte01, Conduit.QAD.Types.Date

    field :itm__dte02, Conduit.QAD.Types.Date

    field :itm__dte03, Conduit.QAD.Types.Date

    field :itm__log01, Conduit.QAD.Types.Bool

    field :itm__log02, Conduit.QAD.Types.Bool

    field :itm__log03, Conduit.QAD.Types.Bool

    field :itm__qadc01, :string

    field :itm__qadc02, :string

    field :itm__qadc03, :string

    field :itm__qadc04, :string

    field :itm__qadd01, Conduit.QAD.Types.Date

    field :itm__qadd02, Conduit.QAD.Types.Date

    field :itm__qadd03, Conduit.QAD.Types.Date

    field :itm__qadde01, :decimal

    field :itm__qadde02, :decimal

    field :itm__qadde03, :decimal

    field :itm__qadl01, Conduit.QAD.Types.Bool

    field :itm__qadl02, Conduit.QAD.Types.Bool

    field :itm__qadl03, Conduit.QAD.Types.Bool

    field :itm_unprocessed, Conduit.QAD.Types.Bool

    field :itm_invoiced, Conduit.QAD.Types.Bool

    field :itm_uninvoiced, Conduit.QAD.Types.Bool

    field :itm_exp_rec, Conduit.QAD.Types.Date

    field :itm_due_date, Conduit.QAD.Types.Date

    field :itm_warr_sv, :string

    field :itm_sa_sv, :string

    field :itm_itm_line, :integer

    field :itm_stdown_date, Conduit.QAD.Types.Date

    field :itm_endown_date, Conduit.QAD.Types.Date

    field :itm_endown_time, :string

    field :itm_stdown_time, :string

    field :itm_stjob_date, Conduit.QAD.Types.Date

    field :itm_stjob_time, :string

    field :itm_recorded, Conduit.QAD.Types.Bool

    field :itm_qty_chg, :decimal

    field :itm_tag, :string

    field :itm_rrc_nbr, :string

    field :itm_rrc_seq, :integer

    field :itm_sep_doc, Conduit.QAD.Types.Bool

    field :itm_site, :string

    field :itm_loc, :string

    field :itm_fix_pr, Conduit.QAD.Types.Bool

    field :itm_fixed_price, :decimal

    field :itm_upd_isb, Conduit.QAD.Types.Bool

    field :itm_mod_userid, :string

    field :itm_mod_date, Conduit.QAD.Types.Date

    field :itm_tax_env, :string

    field :itm_tax_in, Conduit.QAD.Types.Bool

    field :itm_pr_list, :string

    field :itm_est_time, :string

    field :itm_prod_line, :string

    field :itm_override_lmt, Conduit.QAD.Types.Bool

    field :itm_eu_nbr, :string

    field :itm_pst, Conduit.QAD.Types.Bool

    field :itm_acct, :string

    field :itm_sub, :string

    field :itm_cc, :string

    field :itm_project, :string

    field :itm_dsc_acct, :string

    field :itm_dsc_sub, :string

    field :itm_dsc_cc, :string

    field :itm_dsc_project, :string

    field :itm_domain, :string

    field :oid_itm_det, :decimal, primary_key: true

    field :itm_est_cost, :decimal

    field :itm_alternate, :string

    field :itm_replace_line, :integer

    field :itm_repair_type, :string

    field :itm_sod_nbr, :string

    field :itm_sod_line, :integer

    field :itm_model, :string

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
