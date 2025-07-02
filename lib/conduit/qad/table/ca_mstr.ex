defmodule Elixir.Conduit.QAD.Table.Ca_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ca_mstr" do
    field :ca_nbr, :string

    field :ca_nxt_date, Conduit.QAD.Types.Date

    field :ca_nxt_tim, :integer

    field :ca_que, :string

    field :ca_assign, :string

    field :ca_eu_nbr, :string

    field :ca_enter_by, :string

    field :ca_status, :string

    field :ca_type, :string

    field :ca_part, :string

    field :ca_serial, :string

    field :ca_nxt_act, :string

    field :ca_so_nbr, :string

    field :ca_name, :string

    field :ca_phone, :string

    field :ca_problem, :string

    field :ca_resolve, :string

    field :ca_pri, :integer

    field :ca_desc, :string

    field :ca_evt_date, Conduit.QAD.Types.Date

    field :ca_evt_tim, :integer

    field :ca_cmtindx, :integer

    field :ca__chr01, :string

    field :ca__chr02, :string

    field :ca__chr03, :string

    field :ca__chr04, :string

    field :ca__chr05, :string

    field :ca__dec01, :decimal

    field :ca__chr06, :string

    field :ca__chr07, :string

    field :ca__chr08, :string

    field :ca__chr09, :string

    field :ca__chr10, :string

    field :ca__dte01, Conduit.QAD.Types.Date

    field :ca__dte02, Conduit.QAD.Types.Date

    field :ca__dte03, Conduit.QAD.Types.Date

    field :ca__dte04, Conduit.QAD.Types.Date

    field :ca__dte05, Conduit.QAD.Types.Date

    field :ca__dec02, :decimal

    field :ca__dec03, :decimal

    field :ca__log01, Conduit.QAD.Types.Bool

    field :ca__log02, Conduit.QAD.Types.Bool

    field :ca__log03, Conduit.QAD.Types.Bool

    field :ca__log04, Conduit.QAD.Types.Bool

    field :ca__log05, Conduit.QAD.Types.Bool

    field :ca_trv_time, :string

    field :ca_trv_dist, :integer

    field :ca_trv_um, :string

    field :ca_sv_code, :string

    field :ca_from_que, :string

    field :ca_snt_date, Conduit.QAD.Types.Date

    field :ca_snt_time, :integer

    field :ca_rma_nbr, :string

    field :ca_code, :string

    field :ca_seq, :integer

    field :ca_nxt_time, :string

    field :ca_evt_time, :string

    field :ca_opn_date, Conduit.QAD.Types.Date

    field :ca_opn_time, :string

    field :ca_ref, :integer

    field :ca_time_log, :decimal

    field :ca_cls_date, Conduit.QAD.Types.Date

    field :ca_cls_time, :string

    field :ca_contract, :string

    field :ca_severity, :string

    field :ca_cline, :integer

    field :ca_to_que, :string

    field :ca_billed, Conduit.QAD.Types.Bool

    field :ca_sr, :string

    field :ca_activity, Conduit.QAD.Types.Bool

    field :ca_po_nbr, :string

    field :ca__qadc04, :string

    field :ca_ecmtindx, :integer

    field :ca_user1, :string

    field :ca_user2, :string

    field :ca_eng_group, :string

    field :ca__qadc05, :string

    field :ca_area, :string

    field :ca_category, :string

    field :ca_eng_area, :string

    field :ca_int_type, :string

    field :ca_created, :string

    field :ca_date_stmp, Conduit.QAD.Types.Date

    field :ca_time_stmp, :string

    field :ca_est_time, :string

    field :ca_eu_date, Conduit.QAD.Types.Date

    field :ca_eu_time, :string

    field :ca_cmmt_mod, Conduit.QAD.Types.Bool

    field :ca__qadc06, :string

    field :ca_rev, :string

    field :ca_es_nbr, :string

    field :ca_es_seq, :integer

    field :ca__qadi01, :integer

    field :ca_rp_route, :string

    field :ca_rp_bom, :string

    field :ca_site, :string

    field :ca_schedule_ca, Conduit.QAD.Types.Bool

    field :ca_3rd_party, Conduit.QAD.Types.Bool

    field :ca_3rd_party_id, :string

    field :ca_ack_cmtindx, :integer

    field :ca_ack_letter, Conduit.QAD.Types.Bool

    field :ca_comp_date, Conduit.QAD.Types.Date

    field :ca_comp_time, :string

    field :ca_cr_terms, :string

    field :ca_curr, :string

    field :ca_ex_rate, :decimal

    field :ca_fn_nbr, :string

    field :ca_inc_stats, Conduit.QAD.Types.Bool

    field :ca_printed, Conduit.QAD.Types.Bool

    field :ca_pr_list, :string

    field :ca_qo_cmtindx, :integer

    field :ca_quote, Conduit.QAD.Types.Bool

    field :ca_quote_price, :decimal

    field :ca_rc_site, :string

    field :ca_resolve_desc, :string

    field :ca_res_cmtidx, :integer

    field :ca_ship_to, :string

    field :ca_sq_nbr, :string

    field :ca_suspended, Conduit.QAD.Types.Bool

    field :ca_svc_type, :string

    field :ca_taxable, Conduit.QAD.Types.Bool

    field :ca_taxc, :string

    field :ca_waiting_parts, Conduit.QAD.Types.Bool

    field :ca_bill, :string

    field :ca_inv_draft, Conduit.QAD.Types.Bool

    field :ca_recorded, Conduit.QAD.Types.Bool

    field :ca_repair_ctr, Conduit.QAD.Types.Bool

    field :ca_lang, :string

    field :ca_tax_date, Conduit.QAD.Types.Date

    field :ca_quote_exp, Conduit.QAD.Types.Date

    field :ca_rrc_nbr, :string

    field :ca_rrc_seq, :integer

    field :ca__qadc03, :string

    field :ca__qadi02, :integer

    field :ca__qadi03, :integer

    field :ca__qadd01, :decimal

    field :ca__qadd02, :decimal

    field :ca__qadd03, :decimal

    field :ca_eu_changed, Conduit.QAD.Types.Bool

    field :ca__qadl02, Conduit.QAD.Types.Bool

    field :ca__qadl03, Conduit.QAD.Types.Bool

    field :ca__qadt01, Conduit.QAD.Types.Date

    field :ca__qadt02, Conduit.QAD.Types.Date

    field :ca__qadt03, Conduit.QAD.Types.Date

    field :ca_mod_userid, :string

    field :ca_mod_date, Conduit.QAD.Types.Date

    field :ca_customer, :string

    field :ca_tax_env, :string

    field :ca_tax_usage, :string

    field :ca_tax_pct, :decimal

    field :ca_quote_nbr, :string

    field :ca_ent_ex, :decimal

    field :ca_fix_rate, Conduit.QAD.Types.Bool

    field :ca_channel, :string

    field :ca_ex_rate2, :decimal

    field :ca_ex_ratetype, :string

    field :ca_exru_seq, :integer

    field :ca__qadl04, Conduit.QAD.Types.Bool

    field :ca_end_date, Conduit.QAD.Types.Date

    field :ca_start_date, Conduit.QAD.Types.Date

    field :ca_prj_nbr, :string

    field :ca_def_ws, :string

    field :ca_upd_isb, Conduit.QAD.Types.Bool

    field :ca_domain, :string

    field :oid_ca_mstr, :decimal, primary_key: true

    field :ca_model, :string

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
