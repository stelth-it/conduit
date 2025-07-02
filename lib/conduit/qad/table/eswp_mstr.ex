defmodule Elixir.Conduit.QAD.Table.Eswp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswp_mstr" do
    field :oid_eswp_mstr, :decimal, primary_key: true

    field :oid_escat_mstr, :decimal, primary_key: true

    field :eswp_collection, :string

    field :eswp_esig_active, Conduit.QAD.Types.Bool

    field :eswp_comment_prompt, Conduit.QAD.Types.Bool

    field :eswp_filter_mode, :string

    field :eswp_profile_type, :string

    field :eswp_latest_display, Conduit.QAD.Types.Bool

    field :eswp_data_frame_opt, Conduit.QAD.Types.Bool

    field :eswp_preview_prompt, Conduit.QAD.Types.Bool

    field :eswp_mod_date, Conduit.QAD.Types.Date

    field :eswp_mod_userid, :string

    field :eswp_user1, :string

    field :eswp_user2, :string

    field :eswp__qadc01, :string

    field :eswp__qadc02, :string

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
