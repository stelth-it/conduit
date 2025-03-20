defmodule Elixir.Conduit.QAD.Table.Knp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_knp_mstr" do
    field :knp_site, :string

    field :knp_process_id, :string

    field :knp_desc, :string

    field :knp_keyid, :decimal

    field :knp_time_avail, :decimal

    field :knp_pct_uptime, :decimal

    field :knp_process_function, :string

    field :knp_production_line, :string

    field :knp_loc, :string

    field :knp_planner_id, :string

    field :knp_level_mix_seq, :string

    field :knp_takt_time_calc, :string

    field :knp_epei_disp, :integer

    field :knp_chg_over_avail, :decimal

    field :knp_co_per_interval, :decimal

    field :knp_cycle_time, :decimal

    field :knp_move_time, :decimal

    field :knp_epe_interval, :decimal

    field :knp_takt_time, :decimal

    field :knp_pitch_interval, :decimal

    field :knp_pitch_quantity, :decimal

    field :knp_pitch_um, :string

    field :knp_mod_date, Conduit.QAD.Types.Date

    field :knp_mod_userid, :string

    field :knp_user1, :string

    field :knp_user2, :string

    field :knp__qadc01, :string

    field :knp__qadc02, :string

    field :knp_domain, :string

    field :knp_min_epe_interval, :decimal

    field :knp_resources, :decimal

    field :knp_load_limit, :decimal

    field :knp_lead_time_method, :integer

    field :knp_cmtindx, :integer

    field :oid_knp_mstr, :decimal, primary_key: true

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
