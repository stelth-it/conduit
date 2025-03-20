defmodule Elixir.Conduit.QAD.Table.Mrpp_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mrpp_det" do
    field :mrpp_demand_mrp_keyid, :integer

    field :mrpp_supply_mrp_keyid, :integer

    field :mrpp_qty_pegged, :decimal

    field :mrpp_demand_due_date, Conduit.QAD.Types.Date

    field :mrpp_supply_due_date, Conduit.QAD.Types.Date

    field :mrpp_mod_userid, :string

    field :mrpp_mod_date, Conduit.QAD.Types.Date

    field :mrpp_user1, :string

    field :mrpp_user2, :string

    field :mrpp__qadc01, :string

    field :mrpp__qadc02, :string

    field :mrpp_domain, :string

    field :oid_mrpp_det, :decimal, primary_key: true

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
