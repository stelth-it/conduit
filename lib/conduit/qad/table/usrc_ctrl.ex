defmodule Elixir.Conduit.QAD.Table.Usrc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_usrc_ctrl" do
    field :usrc_index1, :integer

    field :usrc_sec_opt, :string

    field :usrc_sess_id, :string

    field :usrc_timeout_min, :integer

    field :usrc_expire_days, :integer

    field :usrc__qad01, :string

    field :usrc__qad02, :string

    field :usrc_user1, :string

    field :usrc_user2, :string

    field :usrc_right_hdr_disp, :integer

    field :usrc_max_access_fails, :integer

    field :usrc_warning_days, :integer

    field :usrc_min_length, :integer

    field :usrc_min_numeric, :integer

    field :usrc_reuse_days, :integer

    field :usrc_reuse_changes, :integer

    field :usrc_logon_hist_level, :string

    field :usrc_min_non_numeric, :integer

    field :usrc_active_rsn_type, :string

    field :usrc_deactivation_rsn, :string

    field :usrc_password_create, :string

    field :oid_usrg_mstr_admin, :decimal, primary_key: true

    field :usrc_em_system_id, :string

    field :oid_usrc_ctrl, :decimal, primary_key: true

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
