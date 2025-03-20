defmodule Elixir.Conduit.QAD.Table.Pjc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pjc_ctrl" do
    field :pjc__qadi02, :integer

    field :pjc_auto_mo, Conduit.QAD.Types.Bool

    field :pjc_bg_above, :decimal

    field :pjc_bg_below, :decimal

    field :pjc_dflt_que, :string

    field :pjc_global_inv, Conduit.QAD.Types.Bool

    field :pjc_hold_level, :integer

    field :pjc_hcmmts, Conduit.QAD.Types.Bool

    field :pjc_scmmts, Conduit.QAD.Types.Bool

    field :pjc_lcmmts, Conduit.QAD.Types.Bool

    field :pjc_paocmmts, Conduit.QAD.Types.Bool

    field :pjc_open_status, :string

    field :pjc_hold_status, :string

    field :pjc_comp_status, :string

    field :pjc_close_status, :string

    field :pjc_pao_nbr, :integer

    field :pjc_pao_pre, :string

    field :pjc_pao_open, :string

    field :pjc_pao_hold, :string

    field :pjc_pao_complete, :string

    field :pjc_pao_close, :string

    field :pjc_pao_cancel, :string

    field :pjc_par_detail, Conduit.QAD.Types.Bool

    field :pjc_par_return, :string

    field :pjc_par_scrap, :string

    field :pjc_pj_type, :string

    field :pjc_pjs_hist, Conduit.QAD.Types.Bool

    field :pjc_prj_nbr, :integer

    field :pjc_prj_pre, :string

    field :pjc_prj_site, :string

    field :pjc_pr_rollup, Conduit.QAD.Types.Bool

    field :pjc_ps_in_wip, Conduit.QAD.Types.Bool

    field :pjc_pt_prod, Conduit.QAD.Types.Bool

    field :pjc_schedule_pao, Conduit.QAD.Types.Bool

    field :pjc_so_nbr, :integer

    field :pjc_so_pre, :string

    field :pjc_sub_det, Conduit.QAD.Types.Bool

    field :pjc_use_budgets, Conduit.QAD.Types.Bool

    field :pjc_use_pay_rate, Conduit.QAD.Types.Bool

    field :pjc_mod_date, Conduit.QAD.Types.Date

    field :pjc_mod_userid, :string

    field :pjc_user1, :string

    field :pjc_user2, :string

    field :pjc__log01, Conduit.QAD.Types.Bool

    field :pjc__log02, Conduit.QAD.Types.Bool

    field :pjc__qadc01, :string

    field :pjc__qadc02, :string

    field :pjc__qadd01, :decimal

    field :pjc__qadi01, :integer

    field :pjc__qadl01, Conduit.QAD.Types.Bool

    field :pjc__qadl02, Conduit.QAD.Types.Bool

    field :pjc__qadt01, Conduit.QAD.Types.Date

    field :pjc_par_labor_st, Conduit.QAD.Types.Bool

    field :pjc_domain, :string

    field :oid_pjc_ctrl, :decimal, primary_key: true

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
