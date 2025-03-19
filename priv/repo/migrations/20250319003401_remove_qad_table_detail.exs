defmodule Conduit.Repo.Migrations.RemoveQadTableDetail do
  use Ecto.Migration

  def change do
    drop table("QAD_WO_MSTR")

    drop table("QAD_WOD_DET")

    drop table("QAD_WLT_MSTR")

    drop table("QAD_WLRM_MSTR")

    drop table("QAD_WLRD_DET")

    drop table("QAD_WLD_DET")

    drop table("QAD_WLBM_MSTR")

    drop table("QAD_VRC_CTRL")

    drop table("QAD_VPO_DET")

    drop table("QAD_VEP_MSTR")

    drop table("QAD_USRW_WKFL")

    drop table("QAD_UM_MSTR")

    drop table("QAD_TXHD_DET")

    drop table("QAD_TRLD_DET")

    drop table("QAD_VO_MSTR")

    drop table("QAD_VEF_CTRL")

    drop table("QAD_USRG_MSTR")

    drop table("QAD_UFD_DET")

    drop table("QAD_TAXD_DET")

    drop table("QAD_VEE_MSTR")

    drop table("QAD_USRGD_DET")

    drop table("QAD_UDD_DET")

    drop table("QAD_TOT_MSTR")

    drop table("QAD_BL_CTRL")

    drop table("QAD_VEX_MSTR")

    drop table("QAD_USRC_CTRL")

    drop table("QAD_TZO_MSTR")

    drop table("QAD_TXBD_DET")

    drop table("QAD_VEW_MSTR")

    drop table("QAD_VECD_DET")

    drop table("QAD_USPW_HIST")

    drop table("QAD_TZOD_DET")

    drop table("QAD_TX2_MSTR")

    drop table("QAD_TM_MSTR")

    drop table("QAD_IRO_DET")

    drop table("QAD_VES_MSTR")

    drop table("QAD_VD_MSTR")

    drop table("QAD_USLH_HIST")

    drop table("QAD_TYP_MSTR")

    drop table("QAD_TX2D_DET")

    drop table("QAD_TE_MSTR")

    drop table("QAD_SSM_MSTR")

    drop table("QAD_VDF_MSTR")

    drop table("QAD_TXZ_MSTR")

    drop table("QAD_TR_HIST")

    drop table("QAD_TBL_MSTR")

    drop table("QAD_VERD_DET")

    drop table("QAD_UPD_DET")

    drop table("QAD_TXRD_DET")

    drop table("QAD_SYTF_MSTR")

    drop table("QAD_VEPD_DET")

    drop table("QAD_USRL_DET")

    drop table("QAD_TXE_MSTR")

    drop table("QAD_TRGL_DET")

    drop table("QAD_SHFT_DET")

    drop table("QAD_VDC_CTRL")

    drop table("QAD_URL_MSTR")

    drop table("QAD_TXR_MSTR")

    drop table("QAD_TBLC_MSTR")

    drop table("QAD_TBLCD_DET")

    drop table("QAD_SV_MSTR")

    drop table("QAD_SRR_MSTR")

    drop table("QAD_SOSR_MSTR")

    drop table("QAD_SDTD_DET")

    drop table("QAD_TAG_MSTR")

    drop table("QAD_SRC_CTRL")

    drop table("QAD_SOP_DET")

    drop table("QAD_SI_MSTR")

    drop table("QAD_SVC_CTRL")

    drop table("QAD_SRO_MSTR")

    drop table("QAD_SOSRD_DET")

    drop table("QAD_SLR_MSTR")

    drop table("QAD_SHOP_CAL")

    drop table("QAD_SPT_DET")

    drop table("QAD_SODR_DET")

    drop table("QAD_SIM_DET")

    drop table("QAD_SHC_CTRL")

    drop table("QAD_SDT_MSTR")

    drop table("QAD_STTQD_DET")

    drop table("QAD_SPH_HIST")

    drop table("QAD_SODLC_DET")

    drop table("QAD_SG_MSTR")

    drop table("QAD_SSD_DET")

    drop table("QAD_SPC_CTRL")

    drop table("QAD_SOCC_MSTR")

    drop table("QAD_SGCD_DET")

    drop table("QAD_MPD_DET")

    drop table("QAD_SROC_CTRL")

    drop table("QAD_SOR_MSTR")

    drop table("QAD_SLRD_DET")

    drop table("QAD_SEQ_MSTR")

    drop table("QAD_SCC_MSTR")

    drop table("QAD_SP_MSTR")

    drop table("QAD_SOD_DET")

    drop table("QAD_SHD_DET")

    drop table("QAD_SD_MSTR")

    drop table("QAD_SB_MSTR")

    drop table("QAD_SALH_HIST")

    drop table("QAD_SO_MSTR")

    drop table("QAD_SHPD_HIST")

    drop table("QAD_SGAD_DET")

    drop table("QAD_SCT_DET")

    drop table("QAD_SBC_MSTR")

    drop table("QAD_SOC_CTRL")

    drop table("QAD_SHTR_DET")

    drop table("QAD_SC_MSTR")

    drop table("QAD_SBIC_CTL")

    drop table("QAD_SADH_HIST")

    drop table("QAD_RSC_CTRL")

    drop table("QAD_SHPC_CTRL")

    drop table("QAD_SFH_HIST")

    drop table("QAD_SA_MSTR")

    drop table("QAD_RS_MSTR")

    drop table("QAD_RQPO_REF")

    drop table("QAD_MAX_MSTR")

    drop table("QAD_SFB_DET")

    drop table("QAD_SCHD_DET")

    drop table("QAD_SAR_MSTR")

    drop table("QAD_RQM_MSTR")

    drop table("QAD_RQA_MSTR")

    drop table("QAD_REG_MSTR")

    drop table("QAD_QOR_MSTR")

    drop table("QAD_SCA_MSTR")

    drop table("QAD_SAL_MSTR")

    drop table("QAD_RST_MSTR")

    drop table("QAD_RQL_MSTR")

    drop table("QAD_REQ_DET")

    drop table("QAD_SBD_DET")

    drop table("QAD_SAC_CTRL")

    drop table("QAD_RQ_MSTR")

    drop table("QAD_RQDA_DET")

    drop table("QAD_RMA_MSTR")

    drop table("QAD_QR_TEST")

    drop table("QAD_SAH_HIST")

    drop table("QAD_RSN_REF")

    drop table("QAD_RQH_HIST")

    drop table("QAD_RND_MSTR")

    drop table("QAD_RCSD_DET")

    drop table("QAD_QADDB_CTRL")

    drop table("QAD_SAD_DET")

    drop table("QAD_RQF_CTRL")

    drop table("QAD_RMD_DET")

    drop table("QAD_RCF_CTRL")

    drop table("QAD_QOD_DET")

    drop table("QAD_PID_DET")

    drop table("QAD_RSUD_DET")

    drop table("QAD_RQM_DET")

    drop table("QAD_RPS_MSTR")

    drop table("QAD_RDF_MSTR")

    drop table("QAD_RQR_MSTR")

    drop table("QAD_RHD_HIST")

    drop table("QAD_QTBL_EXT")

    drop table("QAD_QOB_DET")

    drop table("QAD_PS_MSTR")

    drop table("QAD_POUL_MSTR")

    drop table("QAD_LPM_MSTR")

    drop table("QAD_RO_DET")

    drop table("QAD_RCSX_REF")

    drop table("QAD_QO_MSTR")

    drop table("QAD_QAD_WKFL")

    drop table("QAD_PTP_DET")

    drop table("QAD_PRD_DET")

    drop table("QAD_LCAP_HIST")

    drop table("QAD_RMC_CTRL")

    drop table("QAD_RCC_MSTR")

    drop table("QAD_QODR_DET")

    drop table("QAD_PVOD_DET")

    drop table("QAD_RCS_MSTR")

    drop table("QAD_QCC_CTRL")

    drop table("QAD_PTQA_DET")

    drop table("QAD_PRH_HIST")

    drop table("QAD_PL_MSTR")

    drop table("QAD_PJSX_DET")

    drop table("QAD_QOC_CTRL")

    drop table("QAD_PT_MSTR")

    drop table("QAD_POU_MSTR")

    drop table("QAD_PIN_MSTR")

    drop table("QAD_PCT_MSTR")

    drop table("QAD_QCS_MSTR")

    drop table("QAD_PR_MSTR")

    drop table("QAD_POD_DET")

    drop table("QAD_PJT_MSTR")

    drop table("QAD_LBLC_CTRL")

    drop table("QAD_KNBL_DET")

    drop table("QAD_QCD_DET")

    drop table("QAD_PRJ_MSTR")

    drop table("QAD_POC_CTRL")

    drop table("QAD_PJS_MSTR")

    drop table("QAD_PIGC_DET")

    drop table("QAD_PSHC_CTRL")

    drop table("QAD_PJ_MSTR")

    drop table("QAD_PIG_MSTR")

    drop table("QAD_ATTMP_MSTR")

    drop table("QAD_PTH_HIST")

    drop table("QAD_PP_PLAN")

    drop table("QAD_PLI_MSTR")

    drop table("QAD_PJC_CTRL")

    drop table("QAD_PQ_MSTR")

    drop table("QAD_PLSD_DET")

    drop table("QAD_PGM_DET")

    drop table("QAD_PO_MSTR")

    drop table("QAD_PLID_DET")

    drop table("QAD_PGC_CTRL")

    drop table("QAD_PAL_MSTR")

    drop table("QAD_NR_MSTR")

    drop table("QAD_PIH_HIST")

    drop table("QAD_PAC_MSTR")

    drop table("QAD_NCC_CTRL")

    drop table("QAD_PIC_CTRL")

    drop table("QAD_OPC_CTRL")

    drop table("QAD_MRPC_CTRL")

    drop table("QAD_MND_DET")

    drop table("QAD_PC_MSTR")

    drop table("QAD_MSG_MSTR")

    drop table("QAD_MOF_MSTR")

    drop table("QAD_LVR_DET")

    drop table("QAD_PCC_CTRL")

    drop table("QAD_OA_DET")

    drop table("QAD_MPS_MSTR")

    drop table("QAD_MFREL_MSTR")

    drop table("QAD_LOT_MSTR")

    drop table("QAD_PALD_DET")

    drop table("QAD_NRH_HIST")

    drop table("QAD_MPH_HIST")

    drop table("QAD_MA_MSTR")

    drop table("QAD_PEX_MSTR")

    drop table("QAD_OP_HIST")

    drop table("QAD_MON_MSTR")

    drop table("QAD_MAXT_DET")

    drop table("QAD_LN_MSTR")

    drop table("QAD_OPGL_DET")

    drop table("QAD_MNP_DET")

    drop table("QAD_LS_MSTR")

    drop table("QAD_LNF_DET")

    drop table("QAD_OCM_MSTR")

    drop table("QAD_MFSD_DET")

    drop table("QAD_LPMD_DET")

    drop table("QAD_LNA_DET")

    drop table("QAD_MRP_DET")

    drop table("QAD_MNT_DET")

    drop table("QAD_LNGD_DET")

    drop table("QAD_LAD_DET")

    drop table("QAD_ITS_MSTR")

    drop table("QAD_MFC_CTRL")

    drop table("QAD_LGSI_DET")

    drop table("QAD_KNB_MSTR")

    drop table("QAD_KNBCD_DET")

    drop table("QAD_LC_MSTR")

    drop table("QAD_KNBSM_MSTR")

    drop table("QAD_KBTR_HIST")

    drop table("QAD_ITM_DET")

    drop table("QAD_ILG_HIST")

    drop table("QAD_IDH_HIST")

    drop table("QAD_GRX_MSTR")

    drop table("QAD_GRIT_WKF")

    drop table("QAD_LACD_DET")

    drop table("QAD_KBDT_MSTR")

    drop table("QAD_ISP_MSTR")

    drop table("QAD_INSD_DET")

    drop table("QAD_KNPD_DET")

    drop table("QAD_KNBDD_MSTR")

    drop table("QAD_IVS_CTRL")

    drop table("QAD_ISB_MSTR")

    drop table("QAD_IEH_HIST")

    drop table("QAD_HLP_MSTR")

    drop table("QAD_GRRD_DET")

    drop table("QAD_KNBS_DET")

    drop table("QAD_KNBADC_HIST")

    drop table("QAD_ITSD_DET")

    drop table("QAD_IRAW_DET")

    drop table("QAD_IMAP_DET")

    drop table("QAD_ITMH_HIST")

    drop table("QAD_IPH_HIST")

    drop table("QAD_IDHR_HIST")

    drop table("QAD_GRX3_WKFL")

    drop table("QAD_KBPP_MSTR")

    drop table("QAD_ISVC_MSTR")

    drop table("QAD_IN_MSTR")

    drop table("QAD_IHR_HIST")

    drop table("QAD_ICC_CTRL")

    drop table("QAD_GRX1_WKFL")

    drop table("QAD_KBMD_MSTR")

    drop table("QAD_ISS_MSTR")

    drop table("QAD_INS_MSTR")

    drop table("QAD_IHCC_HIST")

    drop table("QAD_KBC_CTRL")

    drop table("QAD_ISD_DET")

    drop table("QAD_IND_DET")

    drop table("QAD_IE_MSTR")

    drop table("QAD_HWM_DET")

    drop table("QAD_IPD_DET")

    drop table("QAD_IH_HIST")

    drop table("QAD_IDHLC_HIST")

    drop table("QAD_GRX2_WKFL")

    drop table("QAD_GRID_DET")

    drop table("QAD_GRAL_DET")

    drop table("QAD_GLR_MSTR")

    drop table("QAD_IED_DET")

    drop table("QAD_GRQD_DET")

    drop table("QAD_GRCD_DET")

    drop table("QAD_GLTR_HIST")

    drop table("QAD_IBH_HIST")

    drop table("QAD_GRTX_DET")

    drop table("QAD_GL_CTRL")

    drop table("QAD_GLEC_DET")

    drop table("QAD_FTCH_HIST")

    drop table("QAD_GR_CTRL")

    drop table("QAD_GRI_MSTR")

    drop table("QAD_GRBG_DET")

    drop table("QAD_GLTM_MSTR")

    drop table("QAD_GRV_DET")

    drop table("QAD_GRAC_DET")

    drop table("QAD_GLPTR_HIST")

    drop table("QAD_FT_MSTR")

    drop table("QAD_GRAS_DET")

    drop table("QAD_GIMD_MSTR")

    drop table("QAD_FPD_COST")

    drop table("QAD_FLSD_DET")

    drop table("QAD_GRAD_DET")

    drop table("QAD_FWK_MSTR")

    drop table("QAD_FSD_DET")

    drop table("QAD_FPCI_MSTR")

    drop table("QAD_FCT_MSTR")

    drop table("QAD_GLTMD_DET")

    drop table("QAD_GIP_DET")

    drop table("QAD_FSP1_PLN")

    drop table("QAD_FPST_MSTR")

    drop table("QAD_FM_MSTR")

    drop table("QAD_FABCHD_DET")

    drop table("QAD_FSU_MSTR")

    drop table("QAD_FRZD_DET")

    drop table("QAD_FP1_PLAN")

    drop table("QAD_FLH_MSTR")

    drop table("QAD_ESWPFIL_DET")

    drop table("QAD_GLCT_DET")

    drop table("QAD_FRM_MSTR")

    drop table("QAD_FN_MSTR")

    drop table("QAD_FLFF_MSTR")

    drop table("QAD_FSP3_PLN")

    drop table("QAD_FRD_DET")

    drop table("QAD_FNH_HIST")

    drop table("QAD_FCG_MSTR")

    drop table("QAD_FAL_MSTR")

    drop table("QAD_FSP2_PLN")

    drop table("QAD_FND_DET")

    drop table("QAD_FCD_MSTR")

    drop table("QAD_FALOC_MSTR")

    drop table("QAD_FSH_MSTR")

    drop table("QAD_FLSC_MSTR")

    drop table("QAD_FIS_MSTR")

    drop table("QAD_FAUOP_DET")

    drop table("QAD_FAC_CTRL")

    drop table("QAD_FP3_PLAN")

    drop table("QAD_FF_MSTR")

    drop table("QAD_FAMT_MSTR")

    drop table("QAD_FACL_CAL")

    drop table("QAD_FAADJ_MSTR")

    drop table("QAD_FP2_PLAN")

    drop table("QAD_FC_DET")

    drop table("QAD_FAMTR_MSTR")

    drop table("QAD_FACLS_MSTR")

    drop table("QAD_EXR_RATE")

    drop table("QAD_ESCX_DET")

    drop table("QAD_FH_MSTR")

    drop table("QAD_FAS_CTRL")

    drop table("QAD_FACT_CTRL")

    drop table("QAD_FABA_DET")

    drop table("QAD_ET_CTRL")

    drop table("QAD_FCC_MSTR")

    drop table("QAD_FAD_DET")

    drop table("QAD_EUS_MSTR")

    drop table("QAD_EMSG_MSTR")

    drop table("QAD_FAMTD_DET")

    drop table("QAD_FACD_DET")

    drop table("QAD_ESWPMP_REF")

    drop table("QAD_ESGC_REF")

    drop table("QAD_ESAPF_DET")

    drop table("QAD_FADF_MSTR")

    drop table("QAD_FABCH_MSTR")

    drop table("QAD_EUD_DET")

    drop table("QAD_ESWPFC_DET")

    drop table("QAD_ESCF_REF")

    drop table("QAD_EGA_MSTR")

    drop table("QAD_FACLD_DET")

    drop table("QAD_ESWPS_DET")

    drop table("QAD_ESH_MSTR")

    drop table("QAD_EM_MSTR")

    drop table("QAD_ECD3_DET")

    drop table("QAD_EXCD_DET")

    drop table("QAD_ESWPF_DET")

    drop table("QAD_ESFIL_MSTR")

    drop table("QAD_ESAPFS_DET")

    drop table("QAD_EMP_MSTR")

    drop table("QAD_EU_MSTR")

    drop table("QAD_ESC_CTRL")

    drop table("QAD_ESAPFIL_DET")

    drop table("QAD_EMG_MSG")

    drop table("QAD_ESCD_DET")

    drop table("QAD_ERAW_DET")

    drop table("QAD_ELG_HIST")

    drop table("QAD_ECM_MSTR")

    drop table("QAD_ES_MSTR")

    drop table("QAD_ESP_MSTR")

    drop table("QAD_ESAP_MSTR")

    drop table("QAD_ENG_MSTR")

    drop table("QAD_EGT_MSTR")

    drop table("QAD_DYD_MSTR")

    drop table("QAD_ESIG_MSTR")

    drop table("QAD_ESAPS_DET")

    drop table("QAD_ENCD_DET")

    drop table("QAD_EGS_DET")

    drop table("QAD_ECD9_DET")

    drop table("QAD_EN_MSTR")

    drop table("QAD_EGW_WKFL")

    drop table("QAD_ECL_LIST")

    drop table("QAD_DPC_MSTR")

    drop table("QAD_EMC_CTRL")

    drop table("QAD_ECX_REF")

    drop table("QAD_ECD1_DET")

    drop table("QAD_CT_MSTR")

    drop table("QAD_EMAP_DET")

    drop table("QAD_ECT_MSTR")

    drop table("QAD_ECA_MSTR")

    drop table("QAD_DPR_MSTR")

    drop table("QAD_CR_MSTR")

    drop table("QAD_ECD5_DET")

    drop table("QAD_DOM_MSTR")

    drop table("QAD_DBK_MSTR")

    drop table("QAD_CSSI_DET")

    drop table("QAD_ECD4_DET")

    drop table("QAD_DMW_WKFL")

    drop table("QAD_DAL_MSTR")

    drop table("QAD_CSLM_MSTR")

    drop table("QAD_CREF_MSTR")

    drop table("QAD_ECD2_DET")

    drop table("QAD_DJRC_DET")

    drop table("QAD_CU_MSTR")

    drop table("QAD_CSIM_MSTR")

    drop table("QAD_CRC_CTRL")

    drop table("QAD_CODE_MSTR")

    drop table("QAD_DPRT_DET")

    drop table("QAD_CTD_DET")

    drop table("QAD_CSD_DET")

    drop table("QAD_CPC_MSTR")

    drop table("QAD_DS_DET")

    drop table("QAD_DOSR_DET")

    drop table("QAD_CSS_MSTR")

    drop table("QAD_CSA_MSTR")

    drop table("QAD_COST_CAL")

    drop table("QAD_DJR_MSTR")

    drop table("QAD_DALD_DET")

    drop table("QAD_CRD_DET")

    drop table("QAD_COMD_DET")

    drop table("QAD_DECL_MSTR")

    drop table("QAD_CSC_MSTR")

    drop table("QAD_CPCD_DET")

    drop table("QAD_CNSUD_DET")

    drop table("QAD_CMH_HIST")

    drop table("QAD_CTRY_MSTR")

    drop table("QAD_CSID_DET")

    drop table("QAD_CPH_HIST")

    drop table("QAD_CNS_CTRL")

    drop table("QAD_CM_MSTR")

    drop table("QAD_BDP_DET")

    drop table("QAD_CST_MSTR")

    drop table("QAD_CSBD_DET")

    drop table("QAD_CO_CTRL")

    drop table("QAD_CKD_DET")

    drop table("QAD_CNT_MSTR")

    drop table("QAD_CKSD_DET")

    drop table("QAD_CC_MSTR")

    drop table("QAD_CCC_CTRL")

    drop table("QAD_CNC_CTRL")

    drop table("QAD_CMC_CTRL")

    drop table("QAD_CCLSCD_DET")

    drop table("QAD_CAH_HIST")

    drop table("QAD_CIL_MSTR")

    drop table("QAD_CA_MSTR")

    drop table("QAD_BKPM_MSTR")

    drop table("QAD_BDLD_DET")

    drop table("QAD_CFC_CTRL")

    drop table("QAD_CCD_MSTR")

    drop table("QAD_CAC_CTRL")

    drop table("QAD_BIC_CTRL")

    drop table("QAD_CLC_CTRL")

    drop table("QAD_CCD2_DET")

    drop table("QAD_BG_MSTR")

    drop table("QAD_ATWK_DET")

    drop table("QAD_CK_MSTR")

    drop table("QAD_CCD1_DET")

    drop table("QAD_BOM_MSTR")

    drop table("QAD_BGD_DET")

    drop table("QAD_ATT_MSTR")

    drop table("QAD_APR_MSTR")

    drop table("QAD_CHM_MSTR")

    drop table("QAD_CCLS_MSTR")

    drop table("QAD_CAQ_MSTR")

    drop table("QAD_BKFM_MSTR")

    drop table("QAD_BCD_DET")

    drop table("QAD_CCLSC_MSTR")

    drop table("QAD_CAL_DET")

    drop table("QAD_BKD_DET")

    drop table("QAD_AUD_DET")

    drop table("QAD_CCL_CTRL")

    drop table("QAD_CAS_MSTR")

    drop table("QAD_BKPD_DET")

    drop table("QAD_BC_MSTR")

    drop table("QAD_ATGT_REF")

    drop table("QAD_AR_MSTR")

    drop table("QAD_CB_MSTR")

    drop table("QAD_BDL_MSTR")

    drop table("QAD_ATP_DET")

    drop table("QAD_TAX_MSTR")

    drop table("QAD_ATD_MSTR")

    drop table("QAD_ARSD_DET")

    drop table("QAD_ANX_DET")

    drop table("QAD_ACX_MSTR")

    drop table("QAD_ATDCD_DET")

    drop table("QAD_ARC_CTRL")

    drop table("QAD_ANL_DET")

    drop table("QAD_ABSD_DET")

    drop table("QAD_ATG_MSTR")

    drop table("QAD_ASC_MSTR")

    drop table("QAD_APMR_MSTR")

    drop table("QAD_ADX_DET")

    drop table("QAD_ABS_MSTR")

    drop table("QAD_ATERR_MSTR")

    drop table("QAD_ART_MSTR")

    drop table("QAD_AN_MSTR")

    drop table("QAD_ABSR_DET")

    drop table("QAD_ATDC_MSTR")

    drop table("QAD_ARD_DET")

    drop table("QAD_ANS_DET")

    drop table("QAD_ACT_MSTR")

    drop table("QAD_ABSI_MSTR")

    drop table("QAD_APRM_MSTR")

    drop table("QAD_ACDF_MSTR")

    drop table("QAD_ABD_DET")

    drop table("QAD_AST_MSTR")

    drop table("QAD_APM_CTRL")

    drop table("QAD_AD_MSTR")

    drop table("QAD_ACCD_DET")

    drop table("QAD_AP_MSTR")

    drop table("QAD_AL_MSTR")

    drop table("QAD_ACM_MSTR")

    drop table("QAD_ABSC_DET")

    drop table("QAD_APC_CTRL")

    drop table("QAD_ADC_CTRL")

    drop table("QAD_ABSS_DET")

    drop table("QAD_ALM_MSTR")

    drop table("QAD_ACD_DET")

    drop table("QAD_ABSCC_DET")

    drop table("QAD_WR_ROUTE")

    drop table("QAD_WOC_CTRL")

    drop table("QAD_WL_MSTR")

    drop table("QAD_WLC_CTRL")

    drop table("QAD_WLBD_DET")

    drop table("QAD_WHL_MSTR")

    drop table("QAD_LOCC_DET")

    drop table("QAD_WC_MSTR")

    drop table("QAD_VEC_MSTR")

    drop table("QAD_TOTD_DET")

    drop table("QAD_SYP_MSTR")

    drop table("QAD_STTQ_MSTR")

    drop table("QAD_WCR_ROUTE")

    drop table("QAD_VT_MSTR")

    drop table("QAD_VTC_CTRL")

    drop table("QAD_VP_MSTR")

    drop table("QAD_VESD_DET")

    drop table("QAD_VPH_HIST")

    drop table("QAD_UMSG_DET")

    drop table("QAD_SUF_MSTR")

    drop table("QAD_SHM_MSTR")

    drop table("QAD_SAP_DET")

    drop table("QAD_QQC_CTRL")

    drop table("QAD_PTR_DET")

    drop table("QAD_VOD_DET")

    drop table("QAD_VER_MSTR")

    drop table("QAD_TXC_CTRL")

    drop table("QAD_TRQ_MSTR")

    drop table("QAD_SWC_DET")

    drop table("QAD_SR_WKFL")

    drop table("QAD_USR_MSTR")

    drop table("QAD_TRL_MSTR")

    drop table("QAD_SM_MSTR")

    drop table("QAD_SCH_MSTR")

    drop table("QAD_RQCD_DET")

    drop table("QAD_USG_DET")

    drop table("QAD_SYPD_DET")

    drop table("QAD_SHP_HIST")

    drop table("QAD_SCX_REF")

    drop table("QAD_RBM_MSTR")

    drop table("QAD_TXED_DET")

    drop table("QAD_TRCS_DET")

    drop table("QAD_SUFD_DET")

    drop table("QAD_SEOC_CTRL")

    drop table("QAD_RPC_CTRL")

    drop table("QAD_QPS_DET")

    drop table("QAD_SYPS_DET")

    drop table("QAD_SHV_MSTR")

    drop table("QAD_SBID_DET")

    drop table("QAD_RSD_DET")

    drop table("QAD_PVO_MSTR")

    drop table("QAD_PGH_HIST")

    drop table("QAD_SYPJ_DET")

    drop table("QAD_SPD_DET")

    drop table("QAD_SGID_DET")

    drop table("QAD_RQD_DET")

    drop table("QAD_PTC_DET")

    drop table("QAD_PI_MSTR")

    drop table("QAD_MPP_DET")

    drop table("QAD_STX_MSTR")

    drop table("QAD_SIX_REF")

    drop table("QAD_RSTD_DET")

    drop table("QAD_RQJ_MSTR")

    drop table("QAD_SOB_DET")

    drop table("QAD_SAB_DET")

    drop table("QAD_RQC_MSTR")

    drop table("QAD_PTV_DET")

    drop table("QAD_PK_DET")

    drop table("QAD_PFC_DET")

    drop table("QAD_SBI_MSTR")

    drop table("QAD_PTLS_DET")

    drop table("QAD_PJD_DET")

    drop table("QAD_PCD_DET")

    drop table("QAD_MP_MSTR")

    drop table("QAD_RSU_MSTR")

    drop table("QAD_QRO_DET")

    drop table("QAD_PTS_DET")

    drop table("QAD_PIGP_DET")

    drop table("QAD_OPS_CTRL")

    drop table("QAD_LNG_MSTR")

    drop table("QAD_QC_MSTR")

    drop table("QAD_PTT_DET")

    drop table("QAD_POULD_DET")

    drop table("QAD_MU_MSTR")

    drop table("QAD_KNBRS_MSTR")

    drop table("QAD_PTA_DET")

    drop table("QAD_PLD_DET")

    drop table("QAD_PFD_DET")

    drop table("QAD_LOC_MSTR")

    drop table("QAD_LD_DET")

    drop table("QAD_EA_MSTR")

    drop table("QAD_PLT_DET")

    drop table("QAD_PJSH_HIST")

    drop table("QAD_PCLD_DET")

    drop table("QAD_LND_DET")

    drop table("QAD_KNBFD_DET")

    drop table("QAD_PCL_MSTR")

    drop table("QAD_MRPP_DET")

    drop table("QAD_LAC_CTRL")

    drop table("QAD_KNBISM_DET")

    drop table("QAD_IB_DET")

    drop table("QAD_OPM_MSTR")

    drop table("QAD_LUA_DET")

    drop table("QAD_KNBI_MSTR")

    drop table("QAD_GRIC_DET")

    drop table("QAD_GLRD_DET")

    drop table("QAD_FLSCD_DET")

    drop table("QAD_LOTW_WKFL")

    drop table("QAD_IMG_MSG")

    drop table("QAD_HD_MSTR")

    drop table("QAD_GLCD_DET")

    drop table("QAD_FLDF_MSTR")

    drop table("QAD_FAB_DET")

    drop table("QAD_LGS_MSTR")

    drop table("QAD_IM_MSTR")

    drop table("QAD_GRC_MSTR")

    drop table("QAD_GLTW_WKFL")

    drop table("QAD_ESS_MSTR")

    drop table("QAD_KNP_MSTR")

    drop table("QAD_KNBD_DET")

    drop table("QAD_GRR_MSTR")

    drop table("QAD_GRDF_MTX")

    drop table("QAD_EGD_DET")

    drop table("QAD_KBTRR_DET")

    drop table("QAD_ILD_DET")

    drop table("QAD_GRIG_MTX")

    drop table("QAD_GLSD_MSTR")

    drop table("QAD_CILD_DET")

    drop table("QAD_KBTRD_DET")

    drop table("QAD_IS_MSTR")

    drop table("QAD_GIAP_MSTR")

    drop table("QAD_FPC_MSTR")

    drop table("QAD_EUC_CTRL")

    drop table("QAD_IP_MSTR")

    drop table("QAD_GRA_MSTR")

    drop table("QAD_FLCRH_HIST")

    drop table("QAD_FABD_DET")

    drop table("QAD_ESAPFC_DET")

    drop table("QAD_IFS_MSTR")

    drop table("QAD_GRHD_DET")

    drop table("QAD_FR_MSTR")

    drop table("QAD_FLPW_MSTR")

    drop table("QAD_ESWP_MSTR")

    drop table("QAD_DBS_MSTR")

    drop table("QAD_IEC_CTRL")

    drop table("QAD_GISI_MSTR")

    drop table("QAD_FRCD_DET")

    drop table("QAD_FLCR_MSTR")

    drop table("QAD_FABK_MSTR")

    drop table("QAD_ESWPFS_DET")

    drop table("QAD_GRIB_DET")

    drop table("QAD_FSC_MSTR")

    drop table("QAD_FLP_PLAN")

    drop table("QAD_ECD_DET")

    drop table("QAD_DC_MSTR")

    drop table("QAD_GLT_DET")

    drop table("QAD_GLC_CAL")

    drop table("QAD_FAMTRD_DET")

    drop table("QAD_EXRU_USAGE")

    drop table("QAD_ESAPMP_REF")

    drop table("QAD_FSPD_DET")

    drop table("QAD_FCS_SUM")

    drop table("QAD_EXC_MSTR")

    drop table("QAD_EGC_CTRL")

    drop table("QAD_DSR_MSTR")

    drop table("QAD_FSLP_PLN")

    drop table("QAD_FKT_MSTR")

    drop table("QAD_FA_MSTR")

    drop table("QAD_ERS_MSTR")

    drop table("QAD_DELT_MSTR")

    drop table("QAD_ESREC_DET")

    drop table("QAD_ESCAT_MSTR")

    drop table("QAD_DY_MSTR")

    drop table("QAD_DPRD_DET")

    drop table("QAD_CS_MSTR")

    drop table("QAD_EDLG_HIST")

    drop table("QAD_DRP_CTRL")

    drop table("QAD_CNCS_MSTR")

    drop table("QAD_CDF_MSTR")

    drop table("QAD_ATAP_MSTR")

    drop table("QAD_DSS_MSTR")

    drop table("QAD_CONT_MSTR")

    drop table("QAD_CF_MSTR")

    drop table("QAD_BKAD_DET")

    drop table("QAD_DSD_DET")

    drop table("QAD_CSLD_DET")

    drop table("QAD_CNCUD_DET")

    drop table("QAD_CD_DET")

    drop table("QAD_ACOD_MSTR")

    drop table("QAD_DPT_MSTR")

    drop table("QAD_DF_MSTR")

    drop table("QAD_CSIL_MSTR")

    drop table("QAD_CP_MSTR")

    drop table("QAD_ABSL_DET")

    drop table("QAD_DEFR_DET")

    drop table("QAD_CNSU_MSTR")

    drop table("QAD_CMT_DET")

    drop table("QAD_CCTR_HIST")

    drop table("QAD_COM_MSTR")

    drop table("QAD_CNCU_MSTR")

    drop table("QAD_CLS_MSTR")

    drop table("QAD_ATWP_MSTR")

    drop table("QAD_CNSS_MSTR")

    drop table("QAD_CMF_MSTR")

    drop table("QAD_AC_MSTR")

    drop table("QAD_CNSIX_MSTR")

    drop table("QAD_CMD_DET")

    drop table("QAD_CHG_MSTR")

    drop table("QAD_BA_MSTR")

    drop table("QAD_CNCIX_MSTR")

    drop table("QAD_ATAK_DET")

    drop table("QAD_ALD_DET")

    drop table("QAD_CCT_MSTR")

    drop table("QAD_BK_MSTR")

    drop table("QAD_BTB_DET")

    drop table("QAD_ATC_CTRL")
  end
end
