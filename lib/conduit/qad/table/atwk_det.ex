defmodule Elixir.Conduit.QAD.Table.Atwk_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atwk_det" do
    field :oid_atwk_det, :decimal, primary_key: true

    field :oid_atwp_mstr, :decimal, primary_key: true

    field :atwk_field_name, :string

    field :atwk_key_type, :string

    field :atwk_mod_date, Conduit.QAD.Types.Date

    field :atwk_mod_userid, :string

    field :atwk_user1, :string

    field :atwk_user2, :string

    field :atwk__qadc01, :string

    field :atwk__qadc02, :string

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
