defmodule Elixir.Conduit.QAD.Table.Pl_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pl_mstr" do
    field :pl_prod_line, :string

    field :pl_desc, :string

    field :pl_sls_acct, :string

    field :pl_inv_acct, :string

    field :pl_wip_acct, :string

    field :pl_cog_acct, :string

    field :pl_pur_acct, :string

    field :pl_scrp_acct, :string

    field :pl_dscr_acct, :string

    field :pl_sls_cc, :string

    field :pl_inv_cc, :string

    field :pl_wip_cc, :string

    field :pl_cog_cc, :string

    field :pl_pur_cc, :string

    field :pl_scrp_cc, :string

    field :pl_dscr_cc, :string

    field :pl_ppv_acct, :string

    field :pl_ppv_cc, :string

    field :pl_rcpt_acct, :string

    field :pl_rcpt_cc, :string

    field :pl_dsc_acct, :string

    field :pl_dsc_cc, :string

    field :pl_wvar_acct, :string

    field :pl_wvar_cc, :string

    field :pl_taxc, :string

    field :pl_taxable, Conduit.QAD.Types.Bool

    field :pl_user1, :string

    field :pl_user2, :string

    field :pl_pst, Conduit.QAD.Types.Bool

    field :pl_esls_acct, :string

    field :pl_esls_cc, :string

    field :pl__chr01, :string

    field :pl__chr02, :string

    field :pl__chr03, :string

    field :pl__chr04, :string

    field :pl__chr05, :string

    field :pl__dte01, Conduit.QAD.Types.Date

    field :pl__dte02, Conduit.QAD.Types.Date

    field :pl__dec01, :decimal

    field :pl__dec02, :decimal

    field :pl__log01, Conduit.QAD.Types.Bool

    field :pl_group, :string

    field :pl_division, :string

    field :pl_cchg_acct, :string

    field :pl_cchg_cc, :string

    field :pl_cmtl_acct, :string

    field :pl_cmtl_cc, :string

    field :pl_clbr_acct, :string

    field :pl_clbr_cc, :string

    field :pl_cbdn_acct, :string

    field :pl_cbdn_cc, :string

    field :pl_covh_acct, :string

    field :pl_covh_cc, :string

    field :pl_csub_acct, :string

    field :pl_csub_cc, :string

    field :pl_apvr_acct, :string

    field :pl_apvr_cc, :string

    field :pl_apvu_acct, :string

    field :pl_apvu_cc, :string

    field :pl_ovh_acct, :string

    field :pl_ovh_cc, :string

    field :pl_mvar_acct, :string

    field :pl_mvar_cc, :string

    field :pl_mvrr_acct, :string

    field :pl_mvrr_cc, :string

    field :pl_svar_acct, :string

    field :pl_svar_cc, :string

    field :pl_svrr_acct, :string

    field :pl_svrr_cc, :string

    field :pl_cop_acct, :string

    field :pl_cop_cc, :string

    field :pl_flr_acct, :string

    field :pl_flr_cc, :string

    field :pl_mod_date, Conduit.QAD.Types.Date

    field :pl_userid, :string

    field :pl__qadc08, :string

    field :pl__qadc09, :string

    field :pl__qadc14, :string

    field :pl__qadc15, :string

    field :pl_rmar_acct, :string

    field :pl_rmar_cc, :string

    field :pl__qadc12, :string

    field :pl__qadc13, :string

    field :pl__qadc06, :string

    field :pl__qadc07, :string

    field :pl_fiscal_class, :string

    field :pl_xvar_acct, :string

    field :pl_xvar_cc, :string

    field :pl_fslbr_acct, :string

    field :pl_fsbdn_acct, :string

    field :pl_fsexp_acct, :string

    field :pl_fsexd_acct, :string

    field :pl__qadc10, :string

    field :pl_fslbr_cc, :string

    field :pl_fsbdn_cc, :string

    field :pl__qadc11, :string

    field :pl_fsexp_cc, :string

    field :pl_fsexd_cc, :string

    field :pl_fsrc_inv_cc, :string

    field :pl_fscm_inv_acct, :string

    field :pl_fscm_inv_cc, :string

    field :pl_fsrc_inv_acct, :string

    field :pl__qadc01, :string

    field :pl__qadc02, :string

    field :pl__qadc03, :string

    field :pl__qadc04, :string

    field :pl__qadc05, :string

    field :pl__qadl01, Conduit.QAD.Types.Bool

    field :pl__qadt01, Conduit.QAD.Types.Date

    field :pl__qadd01, :decimal

    field :pl_apvr_sub, :string

    field :pl_apvu_sub, :string

    field :pl_cbdn_sub, :string

    field :pl_cchg_sub, :string

    field :pl_clbr_sub, :string

    field :pl_cmtl_sub, :string

    field :pl_cog_sub, :string

    field :pl_cop_sub, :string

    field :pl_covh_sub, :string

    field :pl_csub_sub, :string

    field :pl_dscr_sub, :string

    field :pl_dsc_sub, :string

    field :pl_flr_sub, :string

    field :pl_fsbdn_sub, :string

    field :pl_fscm_inv_sub, :string

    field :pl_fsexd_sub, :string

    field :pl_fsexp_sub, :string

    field :pl_fslbr_sub, :string

    field :pl_fsrc_inv_sub, :string

    field :pl_inv_sub, :string

    field :pl_mvar_sub, :string

    field :pl_mvrr_sub, :string

    field :pl_ovh_sub, :string

    field :pl_ppv_sub, :string

    field :pl_pur_sub, :string

    field :pl_rcpt_sub, :string

    field :pl_rmar_sub, :string

    field :pl_scrp_sub, :string

    field :pl_sls_sub, :string

    field :pl_svar_sub, :string

    field :pl_svrr_sub, :string

    field :pl_wip_sub, :string

    field :pl_wvar_sub, :string

    field :pl_xvar_sub, :string

    field :pl_xfer_acct, :string

    field :pl_xfer_sub, :string

    field :pl_xfer_cc, :string

    field :pl_fsdef_acct, :string

    field :pl_fsdef_sub, :string

    field :pl_fsdef_cc, :string

    field :pl_fsaccr_acct, :string

    field :pl_fsaccr_sub, :string

    field :pl_fsaccr_cc, :string

    field :pl_domain, :string

    field :oid_pl_mstr, :decimal, primary_key: true

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
