defmodule Elixir.Conduit.QAD.Table.Frzd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_frzd_det" do
    field :frzd_fr_list, :string

    field :frzd_site, :string

    field :frzd_zone, :string

    field :frzd_post_st, :string

    field :frzd_post_en, :string

    field :frzd_start, Conduit.QAD.Types.Date

    field :frzd_end, Conduit.QAD.Types.Date

    field :frzd_user1, :string

    field :frzd_user2, :string

    field :frzd__chr01, :string

    field :frzd__chr02, :string

    field :frzd__chr03, :string

    field :frzd__chr04, :string

    field :frzd__chr05, :string

    field :frzd__chr06, :string

    field :frzd__chr07, :string

    field :frzd__chr08, :string

    field :frzd__dec01, :decimal

    field :frzd__dec02, :decimal

    field :frzd__dte01, Conduit.QAD.Types.Date

    field :frzd__dte02, Conduit.QAD.Types.Date

    field :frzd__log01, Conduit.QAD.Types.Bool

    field :frzd__log02, Conduit.QAD.Types.Bool

    field :frzd_domain, :string

    field :oid_frzd_det, :decimal, primary_key: true

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
