defmodule Elixir.Conduit.QAD.Table.Op_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_op_hist" do
    field :op_trnbr, :integer

    field :op_type, :string

    field :op_date, Conduit.QAD.Types.Date

    field :op_emp, :string

    field :op_wo_nbr, :string

    field :op_wo_op, :integer

    field :op_act_setup, :decimal

    field :op_act_run, :decimal

    field :op_qty_wip, :decimal

    field :op_qty_comp, :decimal

    field :op_qty_rjct, :decimal

    field :op_qty_rwrk, :decimal

    field :op_sub_cost, :decimal

    field :op_wkctr, :string

    field :op_wo_lot, :string

    field :op_lbr_cost, :decimal

    field :op_rsn, :string

    field :op_rsn_rjct, :string

    field :op_rsn_rwrk, :string

    field :op_part, :string

    field :op_bdn_cost, :decimal

    field :op__qad01, :string

    field :op__qad04, :string

    field :op_project, :string

    field :op_lbr_std, :decimal

    field :op_bdn_std, :decimal

    field :op_std_run, :decimal

    field :op_std_setup, :decimal

    field :op_wo_serial, :string

    field :op_shift, :string

    field :op_sub_std, :decimal

    field :op_po_nbr, :string

    field :op_dept, :string

    field :op_earn, :string

    field :op_comment, :string

    field :op_mch, :string

    field :op_milestone, Conduit.QAD.Types.Bool

    field :op_tran_date, Conduit.QAD.Types.Date

    field :op_pay_calc, Conduit.QAD.Types.Bool

    field :op_lbr_ovhd, :decimal

    field :op_act_rate, :decimal

    field :op_act_units, :decimal

    field :op_std_rate, :decimal

    field :op_std_units, :decimal

    field :op_cmtindx, :integer

    field :op_tool, :string

    field :op_pro_pct, :decimal

    field :op_user1, :string

    field :op_user2, :string

    field :op__qad05, :string

    field :op__qad06, :string

    field :op__qad07, :string

    field :op__qad08, :string

    field :op__qad02, :string

    field :op__qad03, :string

    field :op__chr01, :string

    field :op__chr02, :string

    field :op__chr03, :string

    field :op__chr04, :string

    field :op__chr05, :string

    field :op__dte01, Conduit.QAD.Types.Date

    field :op__dte02, Conduit.QAD.Types.Date

    field :op__dec01, :decimal

    field :op__dec02, :decimal

    field :op__log01, Conduit.QAD.Types.Bool

    field :op_site, :string

    field :op_program, :string

    field :op_time, :integer

    field :op_userid, :string

    field :op_sa_nbr, :string

    field :op_fsm_type, :string

    field :op_line, :string

    field :op_rsn_down, :string

    field :op_from_op, :integer

    field :op_to_op, :integer

    field :op_qty_scrap, :decimal

    field :op_qty_adjust, :decimal

    field :op_rsn_adjust, :string

    field :op_fsc_code, :string

    field :op_fcg_code, :string

    field :op_eng_area, :string

    field :op_ca_int_type, :string

    field :op_price, :decimal

    field :op_covered_amt, :decimal

    field :op_curr, :string

    field :op_ex_rate, :decimal

    field :op_flbr_std, :decimal

    field :op_flvrte_accr, :decimal

    field :op_flvrte_post, :decimal

    field :op_svc_type, :string

    field :op_sv_code, :string

    field :op_itm_line, :integer

    field :op_ca_opn_date, Conduit.QAD.Types.Date

    field :op_flbr_cstd, :decimal

    field :op_eng_code, :string

    field :op_sad_line, :integer

    field :op_ex_rate2, :decimal

    field :op_ex_ratetype, :string

    field :op_exru_seq, :integer

    field :op_wip_lotser, :string

    field :op_wip_ref, :string

    field :op_rsn_scrap, :string

    field :op_userc03, :string

    field :op_useri01, :integer

    field :op_userd01, :decimal

    field :op_userl01, Conduit.QAD.Types.Bool

    field :op_usert01, Conduit.QAD.Types.Date

    field :op_domain, :string

    field :oid_op_hist, :decimal, primary_key: true

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
