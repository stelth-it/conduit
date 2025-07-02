defmodule Elixir.Conduit.QAD.Table.Knbism_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbism_det" do
    field :knbism_keyid, :decimal

    field :knbism_knbi_keyid, :decimal

    field :knbism_knbsm_keyid, :decimal

    field :knbism_working_buffer, :decimal

    field :knbism_max_buf, :decimal

    field :knbism_buf_limit_chg, Conduit.QAD.Types.Date

    field :knbism_buf_limit_disp, :string

    field :knbism_buf_method, :string

    field :knbism_buf_modified, Conduit.QAD.Types.Bool

    field :knbism_critical_limit, :decimal

    field :knbism_warning_limit, :decimal

    field :knbism_daily_demand, :decimal

    field :knbism_demand_method, :string

    field :knbism_demand_modified, Conduit.QAD.Types.Bool

    field :knbism_demand_pct, :decimal

    field :knbism_var_factor, :decimal

    field :knbism_template_used, :string

    field :knbism_pack_qty, :decimal

    field :knbism_pack_type, :string

    field :knbism_order_point, :decimal

    field :knbism_ss_method, :string

    field :knbism_safety_stock, :decimal

    field :knbism_safety_time, :decimal

    field :knbism_ss_total_qty, :decimal

    field :knbism_peak_period, :integer

    field :knbism_service_level, :decimal

    field :knbism_dest_fax, :string

    field :knbism_dest_fax2, :string

    field :knbism_dest_email, :string

    field :knbism_mod_date, Conduit.QAD.Types.Date

    field :knbism_mod_userid, :string

    field :knbism_user1, :string

    field :knbism_user2, :string

    field :knbism__qadc01, :string

    field :knbism__qadc02, :string

    field :knbism_domain, :string

    field :knbism_avg_inv_method, :integer

    field :knbism_ss_template, :string

    field :knbism_count_tolerance, :decimal

    field :knbism_lag_factor, :decimal

    field :oid_knbism_det, :decimal, primary_key: true

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
