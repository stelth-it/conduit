defmodule Elixir.Conduit.QAD.Table.Tr_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_tr_hist" do
    field :tr_part, :string

    field :tr_date, Conduit.QAD.Types.Date

    field :tr_per_date, Conduit.QAD.Types.Date

    field :tr_type, :string

    field :tr_loc, :string

    field :tr_loc_begin, :decimal

    field :tr_begin_qoh, :decimal

    field :tr_qty_req, :decimal

    field :tr_qty_chg, :decimal

    field :tr_qty_short, :decimal

    field :tr_um, :string

    field :tr_last_date, Conduit.QAD.Types.Date

    field :tr_nbr, :string

    field :tr_so_job, :string

    field :tr_ship_type, :string

    field :tr_addr, :string

    field :tr_rmks, :string

    field :tr_xdr_acct, :string

    field :tr_xcr_acct, :string

    field :tr_mtl_std, :decimal

    field :tr_lbr_std, :decimal

    field :tr_bdn_std, :decimal

    field :tr_price, :decimal

    field :tr_trnbr, :integer

    field :tr_gl_amt, :decimal

    field :tr_xdr_cc, :string

    field :tr_xcr_cc, :string

    field :tr_lot, :string

    field :tr_sub_std, :decimal

    field :tr_gl_date, Conduit.QAD.Types.Date

    field :tr_qty_loc, :decimal

    field :tr_userid, :string

    field :tr_serial, :string

    field :tr_effdate, Conduit.QAD.Types.Date

    field :tr_prod_line, :string

    field :tr_xslspsn1, :string

    field :tr_xslspsn2, :string

    field :tr_xcr_proj, :string

    field :tr_xdr_proj, :string

    field :tr_line, :integer

    field :tr_user1, :string

    field :tr_user2, :string

    field :tr_curr, :string

    field :tr_ex_rate, :decimal

    field :tr_rev, :string

    field :tr_time, :integer

    field :tr_ovh_std, :decimal

    field :tr_site, :string

    field :tr_status, :string

    field :tr_grade, :string

    field :tr_expire, Conduit.QAD.Types.Date

    field :tr_assay, :decimal

    field :tr_xgl_ref, :string

    field :tr__chr01, :string

    field :tr__chr02, :string

    field :tr__chr03, :string

    field :tr__chr04, :string

    field :tr__chr05, :string

    field :tr__chr06, :string

    field :tr__chr07, :string

    field :tr__chr08, :string

    field :tr__chr09, :string

    field :tr__chr10, :string

    field :tr__chr11, :string

    field :tr__chr12, :string

    field :tr__chr13, :string

    field :tr__chr14, :string

    field :tr__chr15, :string

    field :tr__dte01, Conduit.QAD.Types.Date

    field :tr__dte02, Conduit.QAD.Types.Date

    field :tr__dte03, Conduit.QAD.Types.Date

    field :tr__dte04, Conduit.QAD.Types.Date

    field :tr__dte05, Conduit.QAD.Types.Date

    field :tr__dec01, :decimal

    field :tr__dec02, :decimal

    field :tr__dec03, :decimal

    field :tr__dec04, :decimal

    field :tr__dec05, :decimal

    field :tr__log01, Conduit.QAD.Types.Bool

    field :tr__log02, Conduit.QAD.Types.Bool

    field :tr_ref, :string

    field :tr_msg, :integer

    field :tr_program, :string

    field :tr_ord_rev, :integer

    field :tr_ref_site, :string

    field :tr_rsn_code, :string

    field :tr_vend_lot, :string

    field :tr_vend_date, Conduit.QAD.Types.Date

    field :tr_daycode, :string

    field :tr_for, :string

    field :tr_slspsn, {:array, :string}

    field :tr_fsm_type, :string

    field :tr_upd_isb, Conduit.QAD.Types.Bool

    field :tr_auto_install, Conduit.QAD.Types.Bool

    field :tr_ca_int_type, :string

    field :tr_covered_amt, :decimal

    field :tr_fcg_code, :string

    field :tr_batch, :string

    field :tr_fsc_code, :string

    field :tr_sa_nbr, :string

    field :tr_sv_code, :string

    field :tr_eng_area, :string

    field :tr_sys_prod, :string

    field :tr_svc_type, :string

    field :tr_ca_opn_date, Conduit.QAD.Types.Date

    field :tr_cprice, :decimal

    field :tr_eng_code, :string

    field :tr_wod_op, :integer

    field :tr_enduser, :string

    field :tr_ship_inv_mov, :string

    field :tr_ship_date, Conduit.QAD.Types.Date

    field :tr_ship_id, :string

    field :tr_ex_rate2, :decimal

    field :tr_ex_ratetype, :string

    field :tr_exru_seq, :integer

    field :tr_promise_date, Conduit.QAD.Types.Date

    field :tr_fldchg_cmtindx, :integer

    field :tr_domain, :string

    field :oid_tr_hist, :decimal, primary_key: true

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
