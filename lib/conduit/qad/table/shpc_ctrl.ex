defmodule Elixir.Conduit.QAD.Table.Shpc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_shpc_ctrl" do
    field :shpc__qadi01, :integer

    field :shpc_active, Conduit.QAD.Types.Bool

    field :shpc_include_so, Conduit.QAD.Types.Bool

    field :shpc_include_sched, Conduit.QAD.Types.Bool

    field :shpc_include_do, Conduit.QAD.Types.Bool

    field :shpc_use_current, Conduit.QAD.Types.Bool

    field :shpc_shipper_reasons, Conduit.QAD.Types.Bool

    field :shpc_mod_userid, :string

    field :shpc_mod_date, Conduit.QAD.Types.Date

    field :shpc_meas_subtype, :integer

    field :shpc_include_rma, Conduit.QAD.Types.Bool

    field :shpc_sched_type, :integer

    field :shpc_include_mo, Conduit.QAD.Types.Bool

    field :shpc__qadc01, :string

    field :shpc__qadc02, :string

    field :shpc_user1, :string

    field :shpc_user2, :string

    field :shpc_domain, :string

    field :oid_shpc_ctrl, :decimal, primary_key: true

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
