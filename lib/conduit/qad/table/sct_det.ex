defmodule Elixir.Conduit.QAD.Table.Sct_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sct_det" do
    field :sct_sim, :string

    field :sct_part, :string

    field :sct_cst_tot, :decimal

    field :sct_mtl_tl, :decimal

    field :sct_lbr_tl, :decimal

    field :sct_bdn_tl, :decimal

    field :sct_ovh_tl, :decimal

    field :sct_sub_tl, :decimal

    field :sct_mtl_ll, :decimal

    field :sct_lbr_ll, :decimal

    field :sct_bdn_ll, :decimal

    field :sct_ovh_ll, :decimal

    field :sct_sub_ll, :decimal

    field :sct_cst_date, Conduit.QAD.Types.Date

    field :sct_user1, :string

    field :sct_user2, :string

    field :sct_serial, :string

    field :sct_site, :string

    field :sct_rollup, Conduit.QAD.Types.Bool

    field :sct_rollup_id, :string

    field :sct_nrv, :decimal

    field :sct__qadc01, :string

    field :sct_cost_changed, Conduit.QAD.Types.Bool

    field :sct_domain, :string

    field :oid_sct_det, :decimal, primary_key: true

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
