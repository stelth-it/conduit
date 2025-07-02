defmodule Elixir.Conduit.QAD.Table.Knpd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knpd_det" do
    field :knpd_keyid, :decimal

    field :knpd_knp_keyid, :decimal

    field :knpd_knbi_keyid, :decimal

    field :knpd_epe_interval, :decimal

    field :knpd_epei_auto_calc, Conduit.QAD.Types.Bool

    field :knpd_mix_pct, :decimal

    field :knpd_yield_pct, :decimal

    field :knpd_cycle_time, :decimal

    field :knpd_equip_time, :decimal

    field :knpd_lead_time, :decimal

    field :knpd_setup_time, :decimal

    field :knpd_move_time, :decimal

    field :knpd_work_content, :decimal

    field :knpd_req_operators, :decimal

    field :knpd_op_start, :integer

    field :knpd_op_end, :integer

    field :knpd_mfg_seq, :integer

    field :knpd_mod_date, Conduit.QAD.Types.Date

    field :knpd_mod_userid, :string

    field :knpd_user1, :string

    field :knpd_user2, :string

    field :knpd__qadc01, :string

    field :knpd__qadc02, :string

    field :knpd_domain, :string

    field :knpd_min_epe_interval, :decimal

    field :oid_knpd_det, :decimal, primary_key: true

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
