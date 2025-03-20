defmodule Elixir.Conduit.QAD.Table.Rpc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rpc_ctrl" do
    field :rpc__qadi01, :integer

    field :rpc_nbr, :integer

    field :rpc_nbr_pre, :string

    field :rpc_sch_bck, :integer

    field :rpc_sch_fwd, :integer

    field :rpc_wk_start, :integer

    field :rpc_user1, :string

    field :rpc_user2, :string

    field :rpc_eff_days, :integer

    field :rpc_eff_dflt, :string

    field :rpc_inc_yld, Conduit.QAD.Types.Bool

    field :rpc_using_new, Conduit.QAD.Types.Bool

    field :rpc_wxfer_acct, :string

    field :rpc_wxfer_cc, :string

    field :rpc_xfer_wip, Conduit.QAD.Types.Bool

    field :rpc__qadc01, :string

    field :rpc_wxfer_sub, :string

    field :rpc_domain, :string

    field :oid_rpc_ctrl, :decimal, primary_key: true

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
