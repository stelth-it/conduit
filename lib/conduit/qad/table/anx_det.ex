defmodule Elixir.Conduit.QAD.Table.Anx_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_anx_det" do
    field :anx_type, :string

    field :anx_code, :string

    field :anx_node, :string

    field :anx_active, Conduit.QAD.Types.Bool

    field :anx_user1, :string

    field :anx_user2, :string

    field :anx__qadc01, :string

    field :anx__qadd01, :decimal

    field :anx_domain, :string

    field :oid_anx_det, :decimal, primary_key: true

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
