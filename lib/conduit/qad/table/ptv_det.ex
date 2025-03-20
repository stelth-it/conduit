defmodule Elixir.Conduit.QAD.Table.Ptv_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ptv_det" do
    field :ptv_part, :string

    field :ptv_ctry_exp, :string

    field :ptv_ctry_imp, :string

    field :ptv_stat_value, :decimal

    field :ptv_user1, :string

    field :ptv_user2, :string

    field :ptv__chr01, :string

    field :ptv__dec01, :decimal

    field :ptv__log01, Conduit.QAD.Types.Bool

    field :ptv__qad01, :string

    field :ptv__qad02, :string

    field :ptv__qad03, :decimal

    field :ptv__qad04, Conduit.QAD.Types.Bool

    field :ptv_domain, :string

    field :oid_ptv_det, :decimal, primary_key: true

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
