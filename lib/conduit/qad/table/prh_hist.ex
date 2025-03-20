defmodule Elixir.Conduit.QAD.Table.Prh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_prh_hist" do
    field :prh_part, :string

    field :prh_nbr, :string

    field :prh_line, :integer

    field :prh_rcvd, :decimal

    field :prh_pur_cost, :decimal

    field :prh_pur_std, :decimal

    field :prh_rcp_date, Conduit.QAD.Types.Date

    field :prh_vend, :string

    field :prh_receiver, :string

    field :prh_lot, :string

    field :prh_ps_nbr, :string

    field :prh_ps_qty, :decimal

    field :prh_bo_qty, :decimal

    field :prh__qadc02, :string

    field :prh_xinvoice, :string

    field :prh_xinv_dt, Conduit.QAD.Types.Date

    field :prh__qadd01, :decimal

    field :prh_xinv_cst, :decimal

    field :prh__qadc03, :string

    field :prh__qadc04, :string

    field :prh__qadc05, :string

    field :prh_rev, :string

    field :prh_type, :string

    field :prh_print, Conduit.QAD.Types.Bool

    field :prh_lbr_std, :decimal

    field :prh_mtl_std, :decimal

    field :prh_bdn_std, :decimal

    field :prh_sub_std, :decimal

    field :prh_buyer, :string

    field :prh__qad03, :decimal

    field :prh__qad02, :string

    field :prh_shipto, :string

    field :prh_cst_up, Conduit.QAD.Types.Bool

    field :prh_um, :string

    field :prh_um_conv, :decimal

    field :prh_curr, :string

    field :prh_ex_rate, :decimal

    field :prh_curr_amt, :decimal

    field :prh_pay_um, :string

    field :prh_pum_conv, :decimal

    field :prh_user1, :string

    field :prh_user2, :string

    field :prh_ovh_std, :decimal

    field :prh_site, :string

    field :prh_ship, :string

    field :prh_qty_ord, :decimal

    field :prh_per_date, Conduit.QAD.Types.Date

    field :prh_rcp_type, :string

    field :prh_reason, :string

    field :prh_request, :string

    field :prh_approve, :string

    field :prh__qad04, :integer

    field :prh_tax_at, :string

    field :prh__chr01, :string

    field :prh__chr02, :string

    field :prh__chr03, :string

    field :prh__chr04, :string

    field :prh__chr05, :string

    field :prh__chr06, :string

    field :prh__chr07, :string

    field :prh__chr08, :string

    field :prh__chr09, :string

    field :prh__chr10, :string

    field :prh__dte01, Conduit.QAD.Types.Date

    field :prh__dte02, Conduit.QAD.Types.Date

    field :prh__dte03, Conduit.QAD.Types.Date

    field :prh__dte04, Conduit.QAD.Types.Date

    field :prh__dte05, Conduit.QAD.Types.Date

    field :prh__dec01, :decimal

    field :prh__dec02, :decimal

    field :prh__dec03, :decimal

    field :prh__dec04, :decimal

    field :prh__dec05, :decimal

    field :prh__log01, Conduit.QAD.Types.Bool

    field :prh__log02, Conduit.QAD.Types.Bool

    field :prh_rma_type, :string

    field :prh_fix_rate, Conduit.QAD.Types.Bool

    field :prh_po_site, :string

    field :prh_cum_req, :decimal

    field :prh_cum_rcvd, :decimal

    field :prh_fsm_type, :string

    field :prh_bank, :string

    field :prh_curr_rlse_id, {:array, :string}

    field :prh_element, :string

    field :prh_fix_pr, Conduit.QAD.Types.Bool

    field :prh_tax_usage, :string

    field :prh_tax_env, :string

    field :prh_crt_int, :decimal

    field :prh_tax_in, Conduit.QAD.Types.Bool

    field :prh_taxc, :string

    field :prh_vend_lot, :string

    field :prh_ship_date, Conduit.QAD.Types.Date

    field :prh__qadi01, :integer

    field :prh_ex_rate2, :decimal

    field :prh_ex_ratetype, :string

    field :prh_exru_seq, :integer

    field :prh__qadc06, :string

    field :prh__qadc01, :string

    field :prh_domain, :string

    field :oid_prh_hist, :decimal, primary_key: true

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
