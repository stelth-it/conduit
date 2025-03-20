defmodule Elixir.Conduit.QAD.Table.Gl_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gl_ctrl" do
    field :gl_ar_acct, :string

    field :gl_ar_cc, :string

    field :gl_disc_acct, :string

    field :gl__qadc01, :string

    field :gl__qadc03, :string

    field :gl__qadc05, :string

    field :gl_term_acct, :string

    field :gl_fin_acct, :string

    field :gl_rtns_acct, :string

    field :gl_cs_acct, :string

    field :gl_disc_cc, :string

    field :gl__qadc02, :string

    field :gl__qadc04, :string

    field :gl__qadc06, :string

    field :gl_tax1_cc, :string

    field :gl_tax2_cc, :string

    field :gl_tax3_cc, :string

    field :gl_term_cc, :string

    field :gl_fin_cc, :string

    field :gl_rtns_cc, :string

    field :gl_cs_cc, :string

    field :gl_tax1_acct, :string

    field :gl_tax2_acct, :string

    field :gl_tax3_acct, :string

    field :gl_sls_acct, :string

    field :gl_sls_cc, :string

    field :gl_ap_acct, :string

    field :gl_ap_cc, :string

    field :gl_pur_acct, :string

    field :gl_pur_cc, :string

    field :gl_inv_acct, :string

    field :gl_inv_cc, :string

    field :gl_dscr_acct, :string

    field :gl_dscr_cc, :string

    field :gl_wip_acct, :string

    field :gl_wip_cc, :string

    field :gl_cog_acct, :string

    field :gl_cog_cc, :string

    field :gl_scrp_acct, :string

    field :gl_scrp_cc, :string

    field :gl_apds_acct, :string

    field :gl_apds_cc, :string

    field :gl_verify, Conduit.QAD.Types.Bool

    field :gl_ppv_acct, :string

    field :gl_ppv_cc, :string

    field :gl_rcpt_acct, :string

    field :gl_rcpt_cc, :string

    field :gl_bdn_acct, :string

    field :gl_bdn_cc, :string

    field :gl_lbr_acct, :string

    field :gl_lbr_cc, :string

    field :gl_lvar_acct, :string

    field :gl_lvar_cc, :string

    field :gl_ot_acct, :string

    field :gl_ot_cc, :string

    field :gl_cop_acct, :string

    field :gl_cop_cc, :string

    field :gl_wvar_acct, :string

    field :gl_wvar_cc, :string

    field :gl_base_curr, :string

    field :gl_symbol, :string

    field :gl_user_acct, :string

    field :gl_user_cc, :string

    field :gl_entity, :string

    field :gl__qad01, :integer

    field :gl_user1, :string

    field :gl_user2, :string

    field :gl_index1, :integer

    field :gl_vat, Conduit.QAD.Types.Bool

    field :gl_ex_round, :integer

    field :gl_can, Conduit.QAD.Types.Bool

    field :gl_cchg_acct, :string

    field :gl_cchg_cc, :string

    field :gl_xfer_acct, :string

    field :gl_xfer_cc, :string

    field :gl_cmtl_acct, :string

    field :gl_cmtl_cc, :string

    field :gl_clbr_acct, :string

    field :gl_clbr_cc, :string

    field :gl_cbdn_acct, :string

    field :gl_cbdn_cc, :string

    field :gl_covh_acct, :string

    field :gl_covh_cc, :string

    field :gl_csub_acct, :string

    field :gl_csub_cc, :string

    field :gl_apvr_acct, :string

    field :gl_apvr_cc, :string

    field :gl_apvu_acct, :string

    field :gl_apvu_cc, :string

    field :gl_bvar_acct, :string

    field :gl_bvar_cc, :string

    field :gl_lvrr_acct, :string

    field :gl_lvrr_cc, :string

    field :gl_bvrr_acct, :string

    field :gl_bvrr_cc, :string

    field :gl_ovh_acct, :string

    field :gl_ovh_cc, :string

    field :gl__qadl01, Conduit.QAD.Types.Bool

    field :gl_sub_len, :integer

    field :gl_mvar_acct, :string

    field :gl_mvar_cc, :string

    field :gl_mvrr_acct, :string

    field :gl_mvrr_cc, :string

    field :gl_svar_acct, :string

    field :gl_svar_cc, :string

    field :gl_svrr_acct, :string

    field :gl_svrr_cc, :string

    field :gl__qadc07, :string

    field :gl__qadc08, :string

    field :gl_flr_acct, :string

    field :gl_flr_cc, :string

    field :gl_esls_acct, :string

    field :gl_esls_cc, :string

    field :gl_tax_type, :string

    field :gl_frtapp_acct, :string

    field :gl_frtapp_cc, :string

    field :gl_frtacc_acct, :string

    field :gl_frtacc_cc, :string

    field :gl_bk_val, :string

    field :gl_apvrx_acct, :string

    field :gl_apvrx_cc, :string

    field :gl_apvux_acct, :string

    field :gl_apvux_cc, :string

    field :gl_rcptx_acct, :string

    field :gl_rcptx_cc, :string

    field :gl_crterms_acct, :string

    field :gl_crterms_cc, :string

    field :gl_late_acct, :string

    field :gl_late_cc, :string

    field :gl_xvar_acct, :string

    field :gl_xvar_cc, :string

    field :gl_rnd_mthd, :string

    field :gl_lang, :string

    field :gl_fslbr_acct, :string

    field :gl_fslbr_cc, :string

    field :gl_fsbdn_acct, :string

    field :gl_fsbdn_cc, :string

    field :gl_fsexp_acct, :string

    field :gl_fsexp_cc, :string

    field :gl_fsexd_acct, :string

    field :gl_fsexd_cc, :string

    field :gl_fsrc_inv_acct, :string

    field :gl_fsrc_inv_cc, :string

    field :gl_fscm_inv_acct, :string

    field :gl_fscm_inv_cc, :string

    field :gl_rmar_acct, :string

    field :gl_rmar_cc, :string

    field :gl_ex_rnd_acct, :string

    field :gl_ex_rnd_cc, :string

    field :gl_ex_ratetype, :string

    field :gl_ugain_acct, :string

    field :gl_ugain_cc, :string

    field :gl_uloss_acct, :string

    field :gl_uloss_cc, :string

    field :gl_rgain_acct, :string

    field :gl_rgain_cc, :string

    field :gl_rloss_acct, :string

    field :gl_rloss_cc, :string

    field :gl_apds_sub, :string

    field :gl_apvrx_sub, :string

    field :gl_apvr_sub, :string

    field :gl_apvux_sub, :string

    field :gl_apvu_sub, :string

    field :gl_ap_sub, :string

    field :gl_ar_sub, :string

    field :gl_bdn_sub, :string

    field :gl_bvar_sub, :string

    field :gl_bvrr_sub, :string

    field :gl_cbdn_sub, :string

    field :gl_cchg_sub, :string

    field :gl_clbr_sub, :string

    field :gl_cmtl_sub, :string

    field :gl_cog_sub, :string

    field :gl_cop_sub, :string

    field :gl_covh_sub, :string

    field :gl_crterms_sub, :string

    field :gl_csub_sub, :string

    field :gl_cs_sub, :string

    field :gl_disc_sub, :string

    field :gl_dscr_sub, :string

    field :gl_ex_rnd_sub, :string

    field :gl_fin_sub, :string

    field :gl_flr_sub, :string

    field :gl_frtacc_sub, :string

    field :gl_frtapp_sub, :string

    field :gl_fsbdn_sub, :string

    field :gl_fscm_inv_sub, :string

    field :gl_fsexd_sub, :string

    field :gl_fsexp_sub, :string

    field :gl_fslbr_sub, :string

    field :gl_fsrc_inv_sub, :string

    field :gl_inv_sub, :string

    field :gl_late_sub, :string

    field :gl_lbr_sub, :string

    field :gl_lvar_sub, :string

    field :gl_lvrr_sub, :string

    field :gl_mvar_sub, :string

    field :gl_mvrr_sub, :string

    field :gl_ot_sub, :string

    field :gl_ovh_sub, :string

    field :gl_ppv_sub, :string

    field :gl_pur_sub, :string

    field :gl_rcptx_sub, :string

    field :gl_rcpt_sub, :string

    field :gl_rgain_sub, :string

    field :gl_rloss_sub, :string

    field :gl_rmar_sub, :string

    field :gl_rtns_sub, :string

    field :gl_scrp_sub, :string

    field :gl_sls_sub, :string

    field :gl_svar_sub, :string

    field :gl_svrr_sub, :string

    field :gl_term_sub, :string

    field :gl_txap_acct, :string

    field :gl_txap_sub, :string

    field :gl_txap_cc, :string

    field :gl_txapr_acct, :string

    field :gl_txapr_sub, :string

    field :gl_txapr_cc, :string

    field :gl_txar_acct, :string

    field :gl_txar_sub, :string

    field :gl_txar_cc, :string

    field :gl_txara_acct, :string

    field :gl_txara_sub, :string

    field :gl_txara_cc, :string

    field :gl_ugain_sub, :string

    field :gl_uloss_sub, :string

    field :gl_user_sub, :string

    field :gl_wip_sub, :string

    field :gl_wvar_sub, :string

    field :gl_xfer_sub, :string

    field :gl_xvar_sub, :string

    field :gl_fsdef_acct, :string

    field :gl_fsdef_sub, :string

    field :gl_fsdef_cc, :string

    field :gl_fsaccr_acct, :string

    field :gl_fsaccr_sub, :string

    field :gl_fsaccr_cc, :string

    field :gl_timezone, :string

    field :gl_domain, :string

    field :oid_gl_ctrl, :decimal, primary_key: true

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
