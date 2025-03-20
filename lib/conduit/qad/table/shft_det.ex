defmodule Elixir.Conduit.QAD.Table.Shft_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_shft_det" do
    field :shft_wkctr, :string

    field :shft_mch, :string

    field :shft_day, :integer

    field :shft_start1, :decimal

    field :shft_start2, :decimal

    field :shft_start3, :decimal

    field :shft_start4, :decimal

    field :shft_hour1, :decimal

    field :shft_hour2, :decimal

    field :shft_hour3, :decimal

    field :shft_hour4, :decimal

    field :shft_pat1, :string

    field :shft_pat2, :string

    field :shft_pat3, :string

    field :shft_pat4, :string

    field :shft_load1, :decimal

    field :shft_load2, :decimal

    field :shft_load3, :decimal

    field :shft_load4, :decimal

    field :shft_user1, :string

    field :shft_user2, :string

    field :shft__chr01, :string

    field :shft__chr02, :string

    field :shft__chr03, :string

    field :shft__chr04, :string

    field :shft__chr05, :string

    field :shft__dec01, :decimal

    field :shft__dec02, :decimal

    field :shft__dec03, :decimal

    field :shft__dec04, :decimal

    field :shft__log01, Conduit.QAD.Types.Bool

    field :shft_site, :string

    field :shft_domain, :string

    field :oid_shft_det, :decimal, primary_key: true

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
