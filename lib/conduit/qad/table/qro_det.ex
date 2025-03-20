defmodule Elixir.Conduit.QAD.Table.Qro_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qro_det" do
    field :qro_routing, :string

    field :qro_op, :integer

    field :qro_desc, :string

    field :qro_wkctr, :string

    field :qro_tool, :string

    field :qro_cmtindx, :integer

    field :qro_mch, :string

    field :qro_user1, :string

    field :qro_user2, :string

    field :qro_mch_op, :integer

    field :qro_queue, :decimal

    field :qro__chr01, :string

    field :qro__chr02, :string

    field :qro__chr03, :string

    field :qro__chr04, :string

    field :qro__chr05, :string

    field :qro__dte01, Conduit.QAD.Types.Date

    field :qro__dte02, Conduit.QAD.Types.Date

    field :qro__dec01, :decimal

    field :qro__dec02, :decimal

    field :qro__log01, Conduit.QAD.Types.Bool

    field :qro_domain, :string

    field :oid_qro_det, :decimal, primary_key: true

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
