defmodule Elixir.Conduit.QAD.Table.Sac_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sac_ctrl" do
    field :sac_auto_sa, Conduit.QAD.Types.Bool

    field :sac_sa, :integer

    field :sac_ln_fmt, Conduit.QAD.Types.Bool

    field :sac_print, Conduit.QAD.Types.Bool

    field :sac_company, :string

    field :sac_fob, :string

    field :sac_hcmmts, Conduit.QAD.Types.Bool

    field :sac_lcmmts, Conduit.QAD.Types.Bool

    field :sac_trl_tax, {:array, :string}

    field :sac__qad01, :integer

    field :sac_trl_ntax, {:array, :string}

    field :sac_user1, :string

    field :sac_user2, :string

    field :sac_index1, :integer

    field :sac_sa_pre, :string

    field :sac_saqo_nbr, Conduit.QAD.Types.Bool

    field :sac_qo, :integer

    field :sac_qo_pre, :string

    field :sac_so_nbr, :integer

    field :sac_so_pre, :string

    field :sac_free_mth, :integer

    field :sac_free_gt, :integer

    field :sac_free_be, Conduit.QAD.Types.Bool

    field :sac__chr01, :string

    field :sac__chr02, :string

    field :sac__chr03, :string

    field :sac__chr04, :string

    field :sac__chr05, :string

    field :sac__chr06, :string

    field :sac__chr07, :string

    field :sac__chr08, :string

    field :sac__chr09, :string

    field :sac__chr10, :string

    field :sac__dec01, :decimal

    field :sac__dec02, :decimal

    field :sac__dec03, :decimal

    field :sac__dte01, Conduit.QAD.Types.Date

    field :sac__dte02, Conduit.QAD.Types.Date

    field :sac__dte03, Conduit.QAD.Types.Date

    field :sac__dte04, Conduit.QAD.Types.Date

    field :sac__log01, Conduit.QAD.Types.Bool

    field :sac__log02, Conduit.QAD.Types.Bool

    field :sac__log03, Conduit.QAD.Types.Bool

    field :sac__log04, Conduit.QAD.Types.Bool

    field :sac__log05, Conduit.QAD.Types.Bool

    field :sac_so_hist, Conduit.QAD.Types.Bool

    field :sac_deferred, Conduit.QAD.Types.Bool

    field :sac_contract_pr, Conduit.QAD.Types.Bool

    field :sac_sa_site, :string

    field :sac__qadl04, Conduit.QAD.Types.Bool

    field :sac_gen_def, Conduit.QAD.Types.Bool

    field :sac_calls_mrp, Conduit.QAD.Types.Bool

    field :sac_create_pm, Conduit.QAD.Types.Bool

    field :sac_limits_wnd, Conduit.QAD.Types.Bool

    field :sac_renewal_days, :integer

    field :sac_renew_fmt, :string

    field :sac_reval_bill, Conduit.QAD.Types.Bool

    field :sac_reval_wnd, Conduit.QAD.Types.Bool

    field :sac_rvidx_nxtbl, Conduit.QAD.Types.Bool

    field :sac_sa_multi, Conduit.QAD.Types.Bool

    field :sac_user_pricing, Conduit.QAD.Types.Bool

    field :sac__qadc01, :string

    field :sac__qadc02, :string

    field :sac__qadc03, :string

    field :sac__qadi01, :integer

    field :sac__qadi02, :integer

    field :sac__qadl01, Conduit.QAD.Types.Bool

    field :sac__qadl02, Conduit.QAD.Types.Bool

    field :sac__qadl03, Conduit.QAD.Types.Bool

    field :sac_mod_userid, :string

    field :sac_mod_date, Conduit.QAD.Types.Date

    field :sac_pm_days, Conduit.QAD.Types.Bool

    field :sac_limit_copy, :string

    field :sac_lim_hist, Conduit.QAD.Types.Bool

    field :sac_ex_ratetype, :string

    field :sac_pt_isb, Conduit.QAD.Types.Bool

    field :sac_revenue, :string

    field :sac_bill_enduser, Conduit.QAD.Types.Bool

    field :sac_bill_summary, Conduit.QAD.Types.Bool

    field :sac_item_enduser, Conduit.QAD.Types.Bool

    field :sac_eu_totals, Conduit.QAD.Types.Bool

    field :sac_eu_add_chrg, Conduit.QAD.Types.Bool

    field :sac_add_chrg, Conduit.QAD.Types.Bool

    field :sac_domain, :string

    field :oid_sac_ctrl, :decimal, primary_key: true

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
