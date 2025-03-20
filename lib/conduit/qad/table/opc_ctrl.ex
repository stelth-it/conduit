defmodule Elixir.Conduit.QAD.Table.Opc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_opc_ctrl" do
    field :opc__qadi02, :integer

    field :opc_payroll, Conduit.QAD.Types.Bool

    field :opc_move, Conduit.QAD.Types.Bool

    field :opc_time_ind, :string

    field :opc_std_hrs, :decimal

    field :opc_std_per, :string

    field :opc_close_gl, Conduit.QAD.Types.Bool

    field :opc__qad01, :integer

    field :opc_user1, :string

    field :opc_user2, :string

    field :opc__qadi01, :integer

    field :opc_domain, :string

    field :oid_opc_ctrl, :decimal, primary_key: true

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
