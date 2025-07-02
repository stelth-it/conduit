defmodule Elixir.Conduit.QAD.Table.Ecd2_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd2_det" do
    field :ecd2_nbr, :string

    field :ecd2_routing, :string

    field :ecd2_op, :integer

    field :ecd2_std_op, :string

    field :ecd2_desc, :string

    field :ecd2_wkctr, :string

    field :ecd2_setup, :decimal

    field :ecd2_run, :decimal

    field :ecd2_yield_pct, :decimal

    field :ecd2_tool, :string

    field :ecd2_vend, :string

    field :ecd2_sub_cost, :decimal

    field :ecd2_subcntrt, Conduit.QAD.Types.Bool

    field :ecd2_mch, :string

    field :ecd2_setup_men, :decimal

    field :ecd2_men_mch, :decimal

    field :ecd2_mch_op, :integer

    field :ecd2_batch, :decimal

    field :ecd2_run_per_b, :decimal

    field :ecd2_cmtindx, :integer

    field :ecd2_recindx, :integer

    field :ecd2_process, :string

    field :ecd2__qad01, Conduit.QAD.Types.Bool

    field :ecd2__qad02, Conduit.QAD.Types.Date

    field :ecd2__qad03, :string

    field :ecd2__qad04, :string

    field :ecd2__qad05, :string

    field :ecd2_mod_date, Conduit.QAD.Types.Date

    field :ecd2_userid, :string

    field :ecd2_user1, :string

    field :ecd2_user2, :string

    field :ecd2_domain, :string

    field :oid_ecd2_det, :decimal, primary_key: true

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
