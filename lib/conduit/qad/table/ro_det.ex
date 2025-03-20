defmodule Elixir.Conduit.QAD.Table.Ro_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ro_det" do
    field :ro_routing, :string

    field :ro_op, :integer

    field :ro_desc, :string

    field :ro_wkctr, :string

    field :ro_setup, :decimal

    field :ro_run, :decimal

    field :ro_move, :decimal

    field :ro_yield_pct, :decimal

    field :ro_tool, :string

    field :ro_vend, :string

    field :ro_sub_cost, :decimal

    field :ro_start, Conduit.QAD.Types.Date

    field :ro_end, Conduit.QAD.Types.Date

    field :ro_tran_qty, :integer

    field :ro_inv_value, :decimal

    field :ro_cmtindx, :integer

    field :ro_mch, :string

    field :ro_milestone, Conduit.QAD.Types.Bool

    field :ro_batch, :decimal

    field :ro_user1, :string

    field :ro_user2, :string

    field :ro_std_op, :string

    field :ro_setup_men, :decimal

    field :ro_men_mch, :decimal

    field :ro_mch_op, :integer

    field :ro_lbr_ovhd, :decimal

    field :ro_queue, :decimal

    field :ro_wait, :decimal

    field :ro_sub_lead, :integer

    field :ro_cyc_unit, :decimal

    field :ro_cyc_rate, :decimal

    field :ro__chr01, :string

    field :ro__chr02, :string

    field :ro__chr03, :string

    field :ro__chr04, :string

    field :ro__chr05, :string

    field :ro__dte01, Conduit.QAD.Types.Date

    field :ro__dte02, Conduit.QAD.Types.Date

    field :ro__dec01, :decimal

    field :ro__dec02, :decimal

    field :ro__log01, Conduit.QAD.Types.Bool

    field :ro_std_batch, :decimal

    field :ro_rollup, Conduit.QAD.Types.Bool

    field :ro_rollup_id, :string

    field :ro_elm_lbr, :string

    field :ro_elm_bdn, :string

    field :ro_elm_sub, :string

    field :ro_start_ecn, :string

    field :ro_end_ecn, :string

    field :ro_po_nbr, :string

    field :ro_po_line, :integer

    field :ro_mv_nxt_op, Conduit.QAD.Types.Bool

    field :ro_wipmtl_part, :string

    field :ro_auto_lbr, Conduit.QAD.Types.Bool

    field :ro_bom_code, :string

    field :ro_cost, :decimal

    field :ro_fsm_type, :string

    field :ro_price, :decimal

    field :ro_mod_date, Conduit.QAD.Types.Date

    field :ro_mod_userid, :string

    field :ro__qadc01, :string

    field :ro__qadc02, :string

    field :ro__qadc03, :string

    field :ro__qade01, :decimal

    field :ro__qade02, :decimal

    field :ro__qadt01, Conduit.QAD.Types.Date

    field :ro__qadt02, Conduit.QAD.Types.Date

    field :ro__qadl01, Conduit.QAD.Types.Bool

    field :ro__qadl02, Conduit.QAD.Types.Bool

    field :ro_fsc_code, :string

    field :ro_domain, :string

    field :oid_ro_det, :decimal, primary_key: true

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
