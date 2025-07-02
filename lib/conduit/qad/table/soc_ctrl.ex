defmodule Elixir.Conduit.QAD.Table.Soc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_soc_ctrl" do
    field :soc_on_ord, Conduit.QAD.Types.Bool

    field :soc_req, Conduit.QAD.Types.Bool

    field :soc_all, Conduit.QAD.Types.Bool

    field :soc_pick, Conduit.QAD.Types.Bool

    field :soc__qad01, Conduit.QAD.Types.Bool

    field :soc__qad02, Conduit.QAD.Types.Bool

    field :soc_inv, :integer

    field :soc_so, :integer

    field :soc_all_days, :integer

    field :soc_all_avl, Conduit.QAD.Types.Bool

    field :soc_ln_fmt, Conduit.QAD.Types.Bool

    field :soc_jrnl, :integer

    field :soc_so_hist, Conduit.QAD.Types.Bool

    field :soc_shp_lead, :integer

    field :soc_print, Conduit.QAD.Types.Bool

    field :soc_ar, Conduit.QAD.Types.Bool

    field :soc_company, :string

    field :soc_fob, :string

    field :soc_hcmmts, Conduit.QAD.Types.Bool

    field :soc_lcmmts, Conduit.QAD.Types.Bool

    field :soc_ntaxdesc, {:array, :string}

    field :soc_sa, Conduit.QAD.Types.Bool

    field :soc_fcst_fwd, :integer

    field :soc_fcst_bck, :integer

    field :soc_trl_tax, {:array, :string}

    field :soc_inv_hist, Conduit.QAD.Types.Bool

    field :soc_ln_inv, Conduit.QAD.Types.Bool

    field :soc_confirm, Conduit.QAD.Types.Bool

    field :soc__qad03, :integer

    field :soc_det_all, Conduit.QAD.Types.Bool

    field :soc_fysm, :integer

    field :soc_trl_ntax, {:array, :string}

    field :soc_user1, :string

    field :soc_user2, :string

    field :soc_index1, :integer

    field :soc_next_abl, :integer

    field :soc_next_cid, :integer

    field :soc_fr_by_site, Conduit.QAD.Types.Bool

    field :soc_inv_pre, :string

    field :soc_so_pre, :string

    field :soc_margin, Conduit.QAD.Types.Bool

    field :soc_cr_hold, Conduit.QAD.Types.Bool

    field :soc_pl_req, Conduit.QAD.Types.Bool

    field :soc_min_ship, :decimal

    field :soc_inv_min, :decimal

    field :soc_fr_shp_calc, Conduit.QAD.Types.Bool

    field :soc_frc_returns, :string

    field :soc_crtacc_acct, :string

    field :soc_crtacc_cc, :string

    field :soc_crtapp_acct, :string

    field :soc_crtapp_cc, :string

    field :soc_edit_isb, Conduit.QAD.Types.Bool

    field :soc_min_shpamt, :decimal

    field :soc_pc_line, Conduit.QAD.Types.Bool

    field :soc_pim_isb, Conduit.QAD.Types.Bool

    field :soc_print_id, :string

    field :soc_pt_req, Conduit.QAD.Types.Bool

    field :soc_batch, Conduit.QAD.Types.Bool

    field :soc_batch_id, :string

    field :soc_returns_isb, Conduit.QAD.Types.Bool

    field :soc__qadl02, Conduit.QAD.Types.Bool

    field :soc__qadl03, Conduit.QAD.Types.Bool

    field :soc__qadc01, :string

    field :soc__qadc02, :string

    field :soc__qadc03, :string

    field :soc__qadi01, :integer

    field :soc__qadi02, :integer

    field :soc_apm, Conduit.QAD.Types.Bool

    field :soc_btb_type, :string

    field :soc_due_calc, Conduit.QAD.Types.Bool

    field :soc_btb_all, Conduit.QAD.Types.Bool

    field :soc_btb_sel, :string

    field :soc_use_btb, Conduit.QAD.Types.Bool

    field :soc_dum_loc, :string

    field :soc_mlevel_btb, Conduit.QAD.Types.Bool

    field :soc_ex_ratetype, :string

    field :soc_use_frt_trl_cd, Conduit.QAD.Types.Bool

    field :soc_crtapp_sub, :string

    field :soc_crtacc_sub, :string

    field :soc_pass_curr, Conduit.QAD.Types.Bool

    field :soc_auto_chg, Conduit.QAD.Types.Bool

    field :soc_atp_enabled, Conduit.QAD.Types.Bool

    field :soc_calc_promise_date, Conduit.QAD.Types.Bool

    field :soc_horizon, :integer

    field :soc_crn_next, :integer

    field :soc_crn_pre, :string

    field :soc_domain, :string

    field :oid_soc_ctrl, :decimal, primary_key: true

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
