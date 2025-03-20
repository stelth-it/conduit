defmodule Elixir.Conduit.QAD.Table.Txed_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_txed_det" do
    field :txed_tax_env, :string

    field :txed_tax_type, :string

    field :txed_seq, :integer

    field :txed_round, :string

    field :txed_user1, :string

    field :txed_user2, :string

    field :txed__log01, Conduit.QAD.Types.Bool

    field :txed__qad01, :string

    field :txed__qad02, :string

    field :txed__qad03, Conduit.QAD.Types.Bool

    field :txed_domain, :string

    field :oid_txed_det, :decimal, primary_key: true

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
