defmodule Elixir.Conduit.QAD.Table.Arc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_arc_ctrl" do
    field :arc_memo, :integer

    field :arc_batch, :integer

    field :arc_jrnl, :integer

    field :arc_gl_sum, Conduit.QAD.Types.Bool

    field :arc__qad01, :integer

    field :arc_user1, :string

    field :arc_user2, :string

    field :arc__qad03, :string

    field :arc__qad02, Conduit.QAD.Types.Date

    field :arc__qadi01, :integer

    field :arc__qadc03, :string

    field :arc__qadc05, :string

    field :arc_ex_tol, :decimal

    field :arc_memo_pre, :string

    field :arc_drft_acc, :string

    field :arc_drft_cc, :string

    field :arc_use_drft, Conduit.QAD.Types.Bool

    field :arc_auto_drft, Conduit.QAD.Types.Bool

    field :arc_auto_late_int, Conduit.QAD.Types.Bool

    field :arc_nxt_pmt, :string

    field :arc_nxt_drft, :string

    field :arc_coll_mthd, :string

    field :arc_ext_drft_ref, Conduit.QAD.Types.Bool

    field :arc_drft_min, :decimal

    field :arc_drft_max, :decimal

    field :arc__qadc01, :string

    field :arc__qadc02, :string

    field :arc_ex_ratetype, :string

    field :arc_sum_lvl, :integer

    field :arc_drft_sub, :string

    field :arc__qadc04, :string

    field :arc_domain, :string

    field :oid_arc_ctrl, :decimal, primary_key: true

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
