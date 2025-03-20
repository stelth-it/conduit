defmodule Elixir.Conduit.QAD.Table.Qps_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qps_det" do
    field :qps_routing, :string

    field :qps_op, :integer

    field :qps_part, :string

    field :qps_user1, :string

    field :qps_qty, :decimal

    field :qps_user2, :string

    field :qps__chr01, :string

    field :qps__chr03, :string

    field :qps__dec01, :decimal

    field :qps__log01, Conduit.QAD.Types.Bool

    field :qps__chr04, :string

    field :qps__chr05, :string

    field :qps__dec02, :decimal

    field :qps__dec03, :decimal

    field :qps_domain, :string

    field :oid_qps_det, :decimal, primary_key: true

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
