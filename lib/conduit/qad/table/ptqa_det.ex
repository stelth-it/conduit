defmodule Elixir.Conduit.QAD.Table.Ptqa_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ptqa_det" do
    field :ptqa_part, :string

    field :ptqa_element, :string

    field :ptqa_qty, :decimal

    field :ptqa_um, :string

    field :ptqa_interval, :decimal

    field :ptqa_conf_pct, :decimal

    field :ptqa_cmtindx, :integer

    field :ptqa_user1, :string

    field :ptqa_user2, :string

    field :ptqa__chr01, :string

    field :ptqa__chr02, :string

    field :ptqa__chr03, :string

    field :ptqa__chr04, :string

    field :ptqa__chr05, :string

    field :ptqa__dec01, :decimal

    field :ptqa__dec02, :decimal

    field :ptqa__log01, Conduit.QAD.Types.Bool

    field :ptqa__log02, Conduit.QAD.Types.Bool

    field :ptqa_domain, :string

    field :oid_ptqa_det, :decimal, primary_key: true

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
