defmodule Elixir.Conduit.QAD.Table.Qod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qod_det" do
    field :qod_nbr, :string

    field :qod_due_date, Conduit.QAD.Types.Date

    field :qod_per_date, Conduit.QAD.Types.Date

    field :qod_req_date, Conduit.QAD.Types.Date

    field :qod_line, :integer

    field :qod_part, :string

    field :qod_loc, :string

    field :qod_type, :string

    field :qod_price, :decimal

    field :qod_std_cost, :decimal

    field :qod_acct, :string

    field :qod_abnormal, Conduit.QAD.Types.Bool

    field :qod_taxable, Conduit.QAD.Types.Bool

    field :qod_serial, :string

    field :qod_desc, :string

    field :qod_um, :string

    field :qod_cc, :string

    field :qod__qad01, {:array, :string}

    field :qod_lot, :string

    field :qod_um_conv, :decimal

    field :qod_fa_nbr, :string

    field :qod_disc_pct, :decimal

    field :qod_project, :string

    field :qod_cmtindx, :integer

    field :qod_custpart, :string

    field :qod__qad02, :integer

    field :qod_status, :string

    field :qod_xslspsn, {:array, :string}

    field :qod_comm_pct, {:array, :decimal}

    field :qod_dsc_acct, :string

    field :qod_dsc_cc, :string

    field :qod_list_pr, :decimal

    field :qod_user1, :string

    field :qod_user2, :string

    field :qod_qty_quot, :decimal

    field :qod_qty_rel, :decimal

    field :qod_rel_chg, :decimal

    field :qod_rsn_lost, :string

    field :qod_pst, Conduit.QAD.Types.Bool

    field :qod_fst_rate, :decimal

    field :qod_fst_tax, :decimal

    field :qod_pst_tax, :decimal

    field :qod_tax_in, Conduit.QAD.Types.Bool

    field :qod__qad03, Conduit.QAD.Types.Bool

    field :qod_taxc, :string

    field :qod_fst_list, Conduit.QAD.Types.Bool

    field :qod_site, :string

    field :qod_qob_std, Conduit.QAD.Types.Bool

    field :qod_qob_rev, Conduit.QAD.Types.Date

    field :qod_prodline, :string

    field :qod__chr01, :string

    field :qod__chr02, :string

    field :qod__chr03, :string

    field :qod__chr04, :string

    field :qod__chr05, :string

    field :qod__chr06, :string

    field :qod__chr07, :string

    field :qod__chr08, :string

    field :qod__chr09, :string

    field :qod__chr10, :string

    field :qod__dte01, Conduit.QAD.Types.Date

    field :qod__dte02, Conduit.QAD.Types.Date

    field :qod__dec01, :decimal

    field :qod__dec02, :decimal

    field :qod__log01, Conduit.QAD.Types.Bool

    field :qod_tax_max, :decimal

    field :qod_fr_rate, :decimal

    field :qod_slspsn, {:array, :string}

    field :qod_fix_pr, Conduit.QAD.Types.Bool

    field :qod_fr_wt, :decimal

    field :qod_fr_wt_um, :string

    field :qod_fr_class, :string

    field :qod_fr_chg, :decimal

    field :qod_tax_usage, :string

    field :qod_tax_env, :string

    field :qod_fr_list, :string

    field :qod_crt_int, :decimal

    field :qod_pricing_dt, Conduit.QAD.Types.Date

    field :qod_bonus, Conduit.QAD.Types.Bool

    field :qod_cfg_type, :string

    field :qod_div, :string

    field :qod_pl_priority, :integer

    field :qod_prig1, :string

    field :qod_prig2, :string

    field :qod_sub, :string

    field :qod_dsc_sub, :string

    field :qod_dsc_project, :string

    field :qod_manual_fr_list, Conduit.QAD.Types.Bool

    field :qod_domain, :string

    field :oid_qod_det, :decimal, primary_key: true

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
