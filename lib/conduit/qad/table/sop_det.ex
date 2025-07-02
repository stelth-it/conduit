defmodule Elixir.Conduit.QAD.Table.Sop_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sop_det" do
    field :sop_sim, :string

    field :sop_routing, :string

    field :sop_op, :integer

    field :sop_element, :string

    field :sop_cost, :decimal

    field :sop_user1, :string

    field :sop_user2, :string

    field :sop_wkctr, :string

    field :sop_setup, :decimal

    field :sop_run, :decimal

    field :sop_yield_pct, :decimal

    field :sop_sub_cost, :decimal

    field :sop_start, Conduit.QAD.Types.Date

    field :sop_end, Conduit.QAD.Types.Date

    field :sop_inv_value, :decimal

    field :sop_milestone, Conduit.QAD.Types.Bool

    field :sop_batch, :decimal

    field :sop_setup_men, :decimal

    field :sop_men_mch, :decimal

    field :sop_mch_op, :integer

    field :sop_std_batch, :decimal

    field :sop_elm_lbr, :string

    field :sop_elm_bdn, :string

    field :sop_elm_sub, :string

    field :sop__qadc01, :string

    field :sop_domain, :string

    field :oid_sop_det, :decimal, primary_key: true

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
