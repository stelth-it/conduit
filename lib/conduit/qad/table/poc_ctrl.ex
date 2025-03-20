defmodule Elixir.Conduit.QAD.Table.Poc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_poc_ctrl" do
    field :poc_bill, :string

    field :poc_ship, :string

    field :poc_po_nbr, :integer

    field :poc_ln_fmt, Conduit.QAD.Types.Bool

    field :poc_insp_loc, :string

    field :poc_rcv_type, :decimal

    field :poc_rcv_nbr, :decimal

    field :poc_ln_stat, :string

    field :poc_tol_pct, :decimal

    field :poc_tol_cst, :decimal

    field :poc_hcmmts, Conduit.QAD.Types.Bool

    field :poc_lcmmts, Conduit.QAD.Types.Bool

    field :poc_fst_id, :string

    field :poc_pst_id, :string

    field :poc_rcv_all, Conduit.QAD.Types.Bool

    field :poc__qad01, :integer

    field :poc_user1, :string

    field :poc_user2, :string

    field :poc__qadi03, :integer

    field :poc_req_nbr, :integer

    field :poc_po_pre, :string

    field :poc_rcv_pre, :string

    field :poc_req_pre, :string

    field :poc_sort_by, Conduit.QAD.Types.Bool

    field :poc__qadc04, :string

    field :poc__qadc05, :string

    field :poc_apv_req, Conduit.QAD.Types.Bool

    field :poc_po_hist, Conduit.QAD.Types.Bool

    field :poc_pl_req, Conduit.QAD.Types.Bool

    field :poc_crtacc_acct, :string

    field :poc_crtacc_cc, :string

    field :poc_crtapp_acct, :string

    field :poc_crtapp_cc, :string

    field :poc_next_batch, :integer

    field :poc_pc_line, Conduit.QAD.Types.Bool

    field :poc_pt_req, Conduit.QAD.Types.Bool

    field :poc_ers_proc, Conduit.QAD.Types.Bool

    field :poc_ers_opt, :string

    field :poc__qadc01, :string

    field :poc__qadc02, :string

    field :poc__qadc03, :string

    field :poc__qadt01, Conduit.QAD.Types.Date

    field :poc__qadd01, :decimal

    field :poc__qadd02, :decimal

    field :poc__qadi01, :integer

    field :poc__qadi02, :integer

    field :poc__qadl01, Conduit.QAD.Types.Bool

    field :poc__qadl02, Conduit.QAD.Types.Bool

    field :poc__qadl03, Conduit.QAD.Types.Bool

    field :poc__qadl04, Conduit.QAD.Types.Bool

    field :poc__qadl05, Conduit.QAD.Types.Bool

    field :poc__qadl06, Conduit.QAD.Types.Bool

    field :poc_ack_req, Conduit.QAD.Types.Bool

    field :poc_ex_ratetype, :string

    field :poc_crtacc_sub, :string

    field :poc_crtapp_sub, :string

    field :poc_multi_due_dates, Conduit.QAD.Types.Bool

    field :poc_domain, :string

    field :oid_poc_ctrl, :decimal, primary_key: true

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
