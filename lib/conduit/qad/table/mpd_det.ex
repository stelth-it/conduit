defmodule Elixir.Conduit.QAD.Table.Mpd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mpd_det" do
    field :mpd_nbr, :string

    field :mpd_type, :string

    field :mpd_label, :string

    field :mpd_tol, :string

    field :mpd_tol_type, :string

    field :mpd_cmtindx, :integer

    field :mpd_user1, :string

    field :mpd_user2, :string

    field :mpd__chr01, :string

    field :mpd__chr02, :string

    field :mpd__chr03, :string

    field :mpd__chr04, :string

    field :mpd__chr05, :string

    field :mpd__dec01, :decimal

    field :mpd__dec02, :decimal

    field :mpd_domain, :string

    field :oid_mpd_det, :decimal, primary_key: true

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
