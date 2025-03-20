defmodule Elixir.Conduit.QAD.Table.Mrpc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mrpc_ctrl" do
    field :mrpc_horizon, :integer

    field :mrpc_sum_def, :integer

    field :mrpc_user1, :string

    field :mrpc_user2, :string

    field :mrpc__qadi01, :integer

    field :mrpc_drp, Conduit.QAD.Types.Bool

    field :mrpc_reldays, :integer

    field :mrpc__qadc01, :string

    field :mrpc_op_yield, Conduit.QAD.Types.Bool

    field :mrpc_domain, :string

    field :oid_mrpc_ctrl, :decimal, primary_key: true

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
