defmodule Elixir.Conduit.QAD.Table.Rmc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rmc_ctrl" do
    field :rmc_loc_ov, :string

    field :rmc_hcmmts, Conduit.QAD.Types.Bool

    field :rmc_lcmmts, Conduit.QAD.Types.Bool

    field :rmc__qadi03, :integer

    field :rmc_user1, :string

    field :rmc_user2, :string

    field :rmc__qadi04, :integer

    field :rmc_route, :string

    field :rmc_dflt_rma, :string

    field :rmc__qadc05, :string

    field :rmc__qadc06, :string

    field :rmc_site_is, :string

    field :rmc_loc_is, :string

    field :rmc_site_os, :string

    field :rmc_loc_os, :string

    field :rmc_det_all, Conduit.QAD.Types.Bool

    field :rmc_all_days, :integer

    field :rmc_po_pre, :string

    field :rmc_po_nbr, :integer

    field :rmc_site_ov, :string

    field :rmc_site_iv, :string

    field :rmc_loc_iv, :string

    field :rmc_so_pre, :string

    field :rmc_so_nbr, :integer

    field :rmc_consume, Conduit.QAD.Types.Bool

    field :rmc__chr01, :string

    field :rmc__chr02, :string

    field :rmc__chr03, :string

    field :rmc__chr04, :string

    field :rmc__chr05, :string

    field :rmc__chr06, :string

    field :rmc__chr07, :string

    field :rmc__chr08, :string

    field :rmc__chr09, :string

    field :rmc__chr10, :string

    field :rmc__dec01, :decimal

    field :rmc__dec02, :decimal

    field :rmc__dec03, :decimal

    field :rmc__dte01, Conduit.QAD.Types.Date

    field :rmc__dte02, Conduit.QAD.Types.Date

    field :rmc__dte03, Conduit.QAD.Types.Date

    field :rmc__dte04, Conduit.QAD.Types.Date

    field :rmc__log01, Conduit.QAD.Types.Bool

    field :rmc__log02, Conduit.QAD.Types.Bool

    field :rmc__log03, Conduit.QAD.Types.Bool

    field :rmc__log04, Conduit.QAD.Types.Bool

    field :rmc__log05, Conduit.QAD.Types.Bool

    field :rmc_edit_isb, Conduit.QAD.Types.Bool

    field :rmc_hist, Conduit.QAD.Types.Bool

    field :rmc__qadc04, :string

    field :rmc_prt_rtn, Conduit.QAD.Types.Bool

    field :rmc_node, :string

    field :rmc_rtv_trn, :string

    field :rmc_pl, Conduit.QAD.Types.Bool

    field :rmc_rtn_taxc, :string

    field :rmc_history, Conduit.QAD.Types.Bool

    field :rmc_print_trail, Conduit.QAD.Types.Bool

    field :rmc_disp_trail, Conduit.QAD.Types.Bool

    field :rmc_issues, Conduit.QAD.Types.Bool

    field :rmc_turn_days, :integer

    field :rmc_rma_accounts, Conduit.QAD.Types.Bool

    field :rmc_site_lb, :string

    field :rmc_repair_cd, :string

    field :rmc__qadc01, :string

    field :rmc__qadc02, :string

    field :rmc__qadc03, :string

    field :rmc__qadl01, Conduit.QAD.Types.Bool

    field :rmc__qadl02, Conduit.QAD.Types.Bool

    field :rmc__qadl03, Conduit.QAD.Types.Bool

    field :rmc__qadi01, :integer

    field :rmc__qadi02, :integer

    field :rmc__qadd01, :decimal

    field :rmc__qadd02, :decimal

    field :rmc_mod_userid, :string

    field :rmc_mod_date, Conduit.QAD.Types.Date

    field :rmc_swsa, Conduit.QAD.Types.Bool

    field :rmc_so_ratetype, :string

    field :rmc_po_ratetype, :string

    field :rmc_domain, :string

    field :oid_rmc_ctrl, :decimal, primary_key: true

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
