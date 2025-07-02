defmodule Elixir.Conduit.QAD.Table.Woc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_woc_ctrl" do
    field :woc_auto_nbr, Conduit.QAD.Types.Bool

    field :woc_nbr, :integer

    field :woc__qadi01, :integer

    field :woc_wcmmts, Conduit.QAD.Types.Bool

    field :woc_rcmmts, Conduit.QAD.Types.Bool

    field :woc_move, Conduit.QAD.Types.Bool

    field :woc_paper_lt, :integer

    field :woc__qadl02, Conduit.QAD.Types.Bool

    field :woc__qadl01, Conduit.QAD.Types.Bool

    field :woc_user1, :string

    field :woc_user2, :string

    field :woc__qadi02, :integer

    field :woc_sched, :string

    field :woc_time_ind, :string

    field :woc_lbr_up, Conduit.QAD.Types.Bool

    field :woc_bdn_up, Conduit.QAD.Types.Bool

    field :woc_gl_lbr, Conduit.QAD.Types.Bool

    field :woc_gl_bdn, Conduit.QAD.Types.Bool

    field :woc_var, Conduit.QAD.Types.Bool

    field :woc_nbr_pre, :string

    field :woc_domain, :string

    field :oid_woc_ctrl, :decimal, primary_key: true

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
