defmodule Elixir.Conduit.QAD.Table.Vef_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vef_ctrl" do
    field :vef__qadi03, :integer

    field :vef_asn_leadtime, :string

    field :vef_days_early, :integer

    field :vef_days_late, :integer

    field :vef_use_shippct, Conduit.QAD.Types.Bool

    field :vef_overship_pct, :decimal

    field :vef_undership_pct, :decimal

    field :vef_use_shipqty, Conduit.QAD.Types.Bool

    field :vef_overship_qty, :integer

    field :vef_undership_qty, :integer

    field :vef_use_shippct_cost, Conduit.QAD.Types.Bool

    field :vef_overship_pct_cost, :decimal

    field :vef_use_shipqty_cost, Conduit.QAD.Types.Bool

    field :vef_overship_qty_cost, :decimal

    field :vef_points, :decimal

    field :vef_pp_factor, :integer

    field :vef_pp_counter, Conduit.QAD.Types.Bool

    field :vef_first_level_title, :string

    field :vef_second_level_title, :string

    field :vef_third_level_title, :string

    field :vef_fourth_level_title, :string

    field :vef_fifth_level_title, :string

    field :vef_first_level_max, :integer

    field :vef_second_level_max, :integer

    field :vef_third_level_max, :integer

    field :vef_fourth_level_max, :integer

    field :vef_fifth_level_max, :integer

    field :vef_early_rcpt, :string

    field :vef_late_rcpt, :string

    field :vef_over_ship, :string

    field :vef_under_ship, :string

    field :vef_missed_ship, :string

    field :vef_dup_asn, :string

    field :vef_late_asn, :string

    field :vef_asn_data, :string

    field :vef_po_receipts, :string

    field :vef_do_receipts, :string

    field :vef_rts_receipts, :string

    field :vef_matl_quality, :string

    field :vef_using_sup_perf, Conduit.QAD.Types.Bool

    field :vef_enable_po_rtn, Conduit.QAD.Types.Bool

    field :vef_enable_inv_xfer, Conduit.QAD.Types.Bool

    field :vef_same_day_receipts, Conduit.QAD.Types.Bool

    field :vef_miss_ship_as_of_date, Conduit.QAD.Types.Date

    field :vef_miss_ship_run_date, Conduit.QAD.Types.Date

    field :vef_po_only_flag, Conduit.QAD.Types.Bool

    field :vef_do_only_flag, Conduit.QAD.Types.Bool

    field :vef_mod_userid, :string

    field :vef_mod_date, Conduit.QAD.Types.Date

    field :vef_user1, :string

    field :vef_user2, :string

    field :vef_user3, :string

    field :vef_user4, :string

    field :vef__qadc01, :string

    field :vef__qadc02, :string

    field :vef__qadc03, :string

    field :vef__qadc04, :string

    field :vef__qadd01, :decimal

    field :vef__qadd02, :decimal

    field :vef__qadl01, Conduit.QAD.Types.Bool

    field :vef__qadl02, Conduit.QAD.Types.Bool

    field :vef__qadt01, Conduit.QAD.Types.Date

    field :vef__qadt02, Conduit.QAD.Types.Date

    field :vef__qadi01, :integer

    field :vef__qadi02, :integer

    field :vef_domain, :string

    field :oid_vef_ctrl, :decimal, primary_key: true

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
