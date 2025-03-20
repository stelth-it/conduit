defmodule Elixir.Conduit.QAD.Table.Qoc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qoc_ctrl" do
    field :qoc_qo, :integer

    field :qoc_ln_fmt, Conduit.QAD.Types.Bool

    field :qoc_print, Conduit.QAD.Types.Bool

    field :qoc_company, :string

    field :qoc_fob, :string

    field :qoc_hcmmts, Conduit.QAD.Types.Bool

    field :qoc_lcmmts, Conduit.QAD.Types.Bool

    field :qoc_days, :integer

    field :qoc__qad01, :integer

    field :qoc_user1, :string

    field :qoc_user2, :string

    field :qoc__qadi01, :integer

    field :qoc_fr_by_site, Conduit.QAD.Types.Bool

    field :qoc_qo_pre, :string

    field :qoc_pl_req, Conduit.QAD.Types.Bool

    field :qoc_pc_line, Conduit.QAD.Types.Bool

    field :qoc_pt_req, Conduit.QAD.Types.Bool

    field :qoc_ex_ratetype, :string

    field :qoc_domain, :string

    field :oid_qoc_ctrl, :decimal, primary_key: true

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
