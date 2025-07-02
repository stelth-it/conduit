defmodule Elixir.Conduit.QAD.Table.Iro_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_iro_det" do
    field :iro_part, :string

    field :iro_site, :string

    field :iro_cost_set, :string

    field :iro_routing, :string

    field :iro_op, :integer

    field :iro_cost_tot, :decimal

    field :iro_date, Conduit.QAD.Types.Date

    field :iro_mtl_tl, :decimal

    field :iro_lbr_tl, :decimal

    field :iro_bdn_tl, :decimal

    field :iro_sub_tl, :decimal

    field :iro_ovh_tl, :decimal

    field :iro_mtl_ll, :decimal

    field :iro_lbr_ll, :decimal

    field :iro_bdn_ll, :decimal

    field :iro_sub_ll, :decimal

    field :iro_ovh_ll, :decimal

    field :iro_user1, :string

    field :iro_user2, :string

    field :iro_value01, :decimal

    field :iro_value02, :decimal

    field :iro_value03, :decimal

    field :iro_value04, :decimal

    field :iro_value05, :decimal

    field :iro_nrv, :decimal

    field :iro__qadc01, :string

    field :iro_domain, :string

    field :oid_iro_det, :decimal, primary_key: true

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
