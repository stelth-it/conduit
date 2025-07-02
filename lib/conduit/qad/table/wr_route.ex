defmodule Elixir.Conduit.QAD.Table.Wr_route do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wr_route" do
    field :wr_nbr, :string

    field :wr_op, :integer

    field :wr_desc, :string

    field :wr_wkctr, :string

    field :wr_mch_op, :decimal

    field :wr_setup, :decimal

    field :wr_run, :decimal

    field :wr_move, :decimal

    field :wr_act_setup, :decimal

    field :wr_act_run, :decimal

    field :wr_qty_ord, :decimal

    field :wr_qty_wip, :decimal

    field :wr_qty_comp, :decimal

    field :wr_qty_rjct, :decimal

    field :wr_qty_rwrk, :decimal

    field :wr_status, :string

    field :wr_tool, :string

    field :wr_vend, :string

    field :wr_po_nbr, :string

    field :wr_start, Conduit.QAD.Types.Date

    field :wr_due, Conduit.QAD.Types.Date

    field :wr_lot, :string

    field :wr_sub_act, :decimal

    field :wr_yield_pct, :decimal

    field :wr_part, :string

    field :wr_bdn_std, :decimal

    field :wr_bdn_act, :decimal

    field :wr_lbr_std, :decimal

    field :wr_lbr_act, :decimal

    field :wr_sub_std, :decimal

    field :wr_cmtindx, :integer

    field :wr_mch, :string

    field :wr_milestone, Conduit.QAD.Types.Bool

    field :wr_user1, :string

    field :wr_user2, :string

    field :wr_std_op, :string

    field :wr_setup_men, :decimal

    field :wr_men_mch, :decimal

    field :wr_tran_qty, :integer

    field :wr_lbr_ovhd, :decimal

    field :wr_queue, :decimal

    field :wr_wait, :decimal

    field :wr_sub_lead, :integer

    field :wr_qty_move, :decimal

    field :wr__chr01, :string

    field :wr__chr02, :string

    field :wr__chr03, :string

    field :wr__chr04, :string

    field :wr__chr05, :string

    field :wr__dte01, Conduit.QAD.Types.Date

    field :wr__dte02, Conduit.QAD.Types.Date

    field :wr__dec01, :decimal

    field :wr__dec02, :decimal

    field :wr__log01, Conduit.QAD.Types.Bool

    field :wr_mtl_totx, :decimal

    field :wr_lbr_totx, :decimal

    field :wr_bdn_totx, :decimal

    field :wr_sub_totx, :decimal

    field :wr_ovh_totx, :decimal

    field :wr_lvuse_post, :decimal

    field :wr_bvuse_post, :decimal

    field :wr_svuse_post, :decimal

    field :wr_sub_comp, :decimal

    field :wr_lvrte_post, :decimal

    field :wr_bvrte_post, :decimal

    field :wr_svrte_post, :decimal

    field :wr_lvrte_accr, :decimal

    field :wr_lvuse_accr, :decimal

    field :wr_bvrte_accr, :decimal

    field :wr_bvuse_accr, :decimal

    field :wr_svrte_accr, :decimal

    field :wr_svuse_accr, :decimal

    field :wr_lvrte_rval, :decimal

    field :wr_lvuse_rval, :decimal

    field :wr_bvrte_rval, :decimal

    field :wr_bvuse_rval, :decimal

    field :wr_svrte_rval, :decimal

    field :wr_svuse_rval, :decimal

    field :wr_sub_cost, :decimal

    field :wr_setup_rte, :decimal

    field :wr_lbr_rate, :decimal

    field :wr_bdn_pct, :decimal

    field :wr_bdn_rate, :decimal

    field :wr_mch_bdn, :decimal

    field :wr_slvuse_post, :decimal

    field :wr_sbvuse_post, :decimal

    field :wr_qty_inque, :decimal

    field :wr_qty_outque, :decimal

    field :wr_qty_rejque, :decimal

    field :wr_qty_inqueb, :decimal

    field :wr_qty_outqueb, :decimal

    field :wr_qty_rejqueb, :decimal

    field :wr_qty_cumrjct, :decimal

    field :wr_qty_cumoscrap, :decimal

    field :wr_qty_cumrscrap, :decimal

    field :wr_qty_cumoadj, :decimal

    field :wr_qty_cumradj, :decimal

    field :wr_qty_cummove, :decimal

    field :wr_qty_cumproc, :decimal

    field :wr_qty_cumrwrk, :decimal

    field :wr_po_line, :integer

    field :wr_wipmtl_part, :string

    field :wr_mtl_act, :decimal

    field :wr_mv_nxt_op, Conduit.QAD.Types.Bool

    field :wr_lbr_ll_act, :decimal

    field :wr_bdn_ll_act, :decimal

    field :wr_sub_ll_act, :decimal

    field :wr_mtl_ll_act, :decimal

    field :wr_ovh_act, :decimal

    field :wr_ovh_ll_act, :decimal

    field :wr_lbr_ll_totx, :decimal

    field :wr_bdn_ll_totx, :decimal

    field :wr_sub_ll_totx, :decimal

    field :wr_mtl_ll_totx, :decimal

    field :wr_ovh_ll_totx, :decimal

    field :wr_auto_lbr, Conduit.QAD.Types.Bool

    field :wr_ca_int_type, :string

    field :wr_covered_amt, :decimal

    field :wr_curr, :string

    field :wr_end_time, :string

    field :wr_eng_code, :string

    field :wr_fcg_code, :string

    field :wr_fcg_index, :integer

    field :wr_fis_column, :integer

    field :wr_fis_sort, :string

    field :wr_fsc_code, :string

    field :wr_fsm_type, :string

    field :wr_list_pr, :decimal

    field :wr_price, :decimal

    field :wr_prod_line, :string

    field :wr_st_time, :string

    field :wr_act_posted, :decimal

    field :wr_expense, Conduit.QAD.Types.Bool

    field :wr_covered_post, :decimal

    field :wr__qadd05, :decimal

    field :wr_sv_code, :string

    field :wr_posted_run, :decimal

    field :wr_flbr_std, :decimal

    field :wr_flbr_cstd, :decimal

    field :wr_project, :string

    field :wr_um, :string

    field :wr_fbdn_std, :decimal

    field :wr_itm_line, :integer

    field :wr__qadc01, :string

    field :wr__qadc02, :string

    field :wr__qadc03, :string

    field :wr__qadc04, :string

    field :wr__qade01, :decimal

    field :wr__qade02, :decimal

    field :wr__qade03, :decimal

    field :wr__qade04, :decimal

    field :wr__qadi01, :integer

    field :wr__qadi02, :integer

    field :wr__qadl01, Conduit.QAD.Types.Bool

    field :wr__qadl02, Conduit.QAD.Types.Bool

    field :wr_unprocessed_amt, :decimal

    field :wr_domain, :string

    field :oid_wr_route, :decimal, primary_key: true

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
