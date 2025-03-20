defmodule Elixir.Conduit.QAD.Table.Chm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_chm_mstr" do
    field :chm_nbr, :string

    field :chm_desc, :string

    field :chm_name, :string

    field :chm_phone, :string

    field :chm_part, :string

    field :chm_serial, :string

    field :chm_eu_nbr, :string

    field :chm_so_nbr, :string

    field :chm_rma_nbr, :string

    field :chm_opn_date, Conduit.QAD.Types.Date

    field :chm_opn_time, :string

    field :chm_cls_date, Conduit.QAD.Types.Date

    field :chm_cls_time, :string

    field :chm_resolve, :string

    field :chm_cmtindx, :integer

    field :chm_ref, :integer

    field :chm_problem, :string

    field :chm_contract, :string

    field :chm__chr01, :string

    field :chm__chr02, :string

    field :chm__chr03, :string

    field :chm__chr04, :string

    field :chm__chr05, :string

    field :chm__chr06, :string

    field :chm__chr07, :string

    field :chm__chr08, :string

    field :chm__chr09, :string

    field :chm__chr10, :string

    field :chm__dec01, :decimal

    field :chm__dec02, :decimal

    field :chm__dec03, :decimal

    field :chm__dte01, Conduit.QAD.Types.Date

    field :chm__dte02, Conduit.QAD.Types.Date

    field :chm__dte03, Conduit.QAD.Types.Date

    field :chm__dte04, Conduit.QAD.Types.Date

    field :chm__log01, Conduit.QAD.Types.Bool

    field :chm__log02, Conduit.QAD.Types.Bool

    field :chm__log03, Conduit.QAD.Types.Bool

    field :chm__log04, Conduit.QAD.Types.Bool

    field :chm__log05, Conduit.QAD.Types.Bool

    field :chm_sv_code, :string

    field :chm_cline, :integer

    field :chm_to_que, :string

    field :chm_sr, :string

    field :chm_severity, :string

    field :chm_type, :string

    field :chm_user1, :string

    field :chm_user2, :string

    field :chm_eng_group, :string

    field :chm_eng_area, :string

    field :chm_category, :string

    field :chm_created, :string

    field :chm_area, :string

    field :chm_po_nbr, :string

    field :chm_est_time, :string

    field :chm_time_stmp, :string

    field :chm_date_stmp, Conduit.QAD.Types.Date

    field :chm_eu_time, :string

    field :chm_eu_date, Conduit.QAD.Types.Date

    field :chm_assign, :string

    field :chm_que, :string

    field :chm_es_nbr, :string

    field :chm_es_seq, :integer

    field :chm_wo_nbr, :string

    field :chm_wo_lot, :string

    field :chm_site, :string

    field :chm_trv_time, :string

    field :chm_trv_um, :string

    field :chm_trv_dist, :integer

    field :chm_time_log, :decimal

    field :chm_int_type, :string

    field :chm_ack_cmtindx, :integer

    field :chm_comp_time, :string

    field :chm_enddown_date, Conduit.QAD.Types.Date

    field :chm_enddown_time, :string

    field :chm_pr_list, :string

    field :chm_qo_cmtindx, :integer

    field :chm_quote, Conduit.QAD.Types.Bool

    field :chm_quote_curr, :string

    field :chm_quote_price, :decimal

    field :chm_rc_site, :string

    field :chm_ship_to, :string

    field :chm_status, :string

    field :chm_stdown_date, Conduit.QAD.Types.Date

    field :chm_stdown_time, :string

    field :chm_stjob_date, Conduit.QAD.Types.Date

    field :chm_stjob_time, :string

    field :chm_3rd_party, Conduit.QAD.Types.Bool

    field :chm_3rd_party_id, :string

    field :chm_ack_letter, Conduit.QAD.Types.Bool

    field :chm_bill, :string

    field :chm_code, :string

    field :chm_comp_date, Conduit.QAD.Types.Date

    field :chm_enter_by, :string

    field :chm_fn_nbr, :string

    field :chm_from_que, :string

    field :chm_inc_stats, Conduit.QAD.Types.Bool

    field :chm_inv_draft, Conduit.QAD.Types.Bool

    field :chm_printed, Conduit.QAD.Types.Bool

    field :chm_res_cmtidx, :integer

    field :chm__dte05, Conduit.QAD.Types.Date

    field :chm_cr_terms, :string

    field :chm_curr, :string

    field :chm_ecmtindx, :integer

    field :chm_resolve_desc, :string

    field :chm_rev, :string

    field :chm_sq_nbr, :string

    field :chm_svc_type, :string

    field :chm_taxable, Conduit.QAD.Types.Bool

    field :chm_taxc, :string

    field :chm_ex_rate, :decimal

    field :chm_repair_ctr, Conduit.QAD.Types.Bool

    field :chm_srv_timezone, :string

    field :chm_eu_timezone, :string

    field :chm__qadc03, :string

    field :chm__qadi01, :integer

    field :chm__qadi02, :integer

    field :chm__qadi03, :integer

    field :chm__qadde01, :decimal

    field :chm__qadde02, :decimal

    field :chm__qadde03, :decimal

    field :chm__qadl04, Conduit.QAD.Types.Bool

    field :chm__qadl02, Conduit.QAD.Types.Bool

    field :chm__qadl03, Conduit.QAD.Types.Bool

    field :chm__qadd01, Conduit.QAD.Types.Date

    field :chm__qadd02, Conduit.QAD.Types.Date

    field :chm__qadd03, Conduit.QAD.Types.Date

    field :chm_rp_route, :string

    field :chm_rp_bom, :string

    field :chm_schedule_ca, Conduit.QAD.Types.Bool

    field :chm_tax_date, Conduit.QAD.Types.Date

    field :chm_quote_exp, Conduit.QAD.Types.Date

    field :chm_rrc_seq, :integer

    field :chm_rrc_nbr, :string

    field :chm_customer, :string

    field :chm_tax_env, :string

    field :chm_tax_usage, :string

    field :chm_tax_pct, :decimal

    field :chm_lang, :string

    field :chm_quote_nbr, :string

    field :chm_ent_ex, :decimal

    field :chm_fix_rate, Conduit.QAD.Types.Bool

    field :chm_channel, :string

    field :chm_ex_rate2, :decimal

    field :chm_ex_ratetype, :string

    field :chm_exru_seq, :integer

    field :chm__qadc04, :string

    field :chm__qadc05, :string

    field :chm__qadc06, :string

    field :chm_domain, :string

    field :oid_chm_mstr, :decimal, primary_key: true

    field :chm_model, :string

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
