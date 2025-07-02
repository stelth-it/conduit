defmodule Elixir.Conduit.QAD.Table.Ops_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ops_ctrl" do
    field :ops_cover, :decimal

    field :ops_plan, Conduit.QAD.Types.Bool

    field :ops_move, Conduit.QAD.Types.Bool

    field :ops__qadi01, :integer

    field :ops_user1, :string

    field :ops_user2, :string

    field :ops_round, Conduit.QAD.Types.Bool

    field :ops__qadc01, :string

    field :ops_domain, :string

    field :oid_ops_ctrl, :decimal, primary_key: true

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
