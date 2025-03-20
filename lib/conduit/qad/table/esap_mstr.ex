defmodule Elixir.Conduit.QAD.Table.Esap_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esap_mstr" do
    field :oid_esap_mstr, :decimal, primary_key: true

    field :oid_escat_mstr, :decimal, primary_key: true

    field :esap_esig_active, Conduit.QAD.Types.Bool

    field :esap_begin_date, Conduit.QAD.Types.Date

    field :esap_filter_mode, :string

    field :esap_comment_prompt, Conduit.QAD.Types.Bool

    field :esap_latest_display, Conduit.QAD.Types.Bool

    field :esap_data_frame_opt, Conduit.QAD.Types.Bool

    field :esap_preview_prompt, Conduit.QAD.Types.Bool

    field :esap_mod_date, Conduit.QAD.Types.Date

    field :esap_mod_userid, :string

    field :esap_user1, :string

    field :esap_user2, :string

    field :esap__qadc01, :string

    field :esap__qadc02, :string

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
