defmodule Elixir.Conduit.QAD.Table.Apc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_apc_ctrl" do
    field :apc_batch, :integer

    field :apc_voucher, :integer

    field :apc_jrnl, :integer

    field :apc_vchr_all, Conduit.QAD.Types.Bool

    field :apc_gl_sum, Conduit.QAD.Types.Bool

    field :apc__qad01, :integer

    field :apc_ckfrm, :string

    field :apc_user1, :string

    field :apc_user2, :string

    field :apc_ship, :string

    field :apc__qad03, :string

    field :apc__qad02, Conduit.QAD.Types.Date

    field :apc__qadi01, :integer

    field :apc_ex_tol, :decimal

    field :apc_bank, :string

    field :apc__qadc03, :string

    field :apc__qadc05, :string

    field :apc_confirm, Conduit.QAD.Types.Bool

    field :apc_pip, Conduit.QAD.Types.Bool

    field :apc_vo_pre, :string

    field :apc__qadc01, :string

    field :apc__qadc02, :string

    field :apc_use_drft, Conduit.QAD.Types.Bool

    field :apc_expvar, Conduit.QAD.Types.Bool

    field :apc_rv_conf, Conduit.QAD.Types.Bool

    field :apc_approv, Conduit.QAD.Types.Bool

    field :apc_ext_ref, Conduit.QAD.Types.Bool

    field :apc__qad04, Conduit.QAD.Types.Bool

    field :apc_ers_ps_err, Conduit.QAD.Types.Bool

    field :apc_gl_avg_cst, Conduit.QAD.Types.Bool

    field :apc_ers_vo_tp, :integer

    field :apc_ex_ratetype, :string

    field :apc_sum_lvl, :integer

    field :apc__qadc04, :string

    field :apc_multi_entity_pay, Conduit.QAD.Types.Bool

    field :apc_domain, :string

    field :oid_apc_ctrl, :decimal, primary_key: true

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
