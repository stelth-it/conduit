defmodule Elixir.Conduit.QAD.Table.Fpd_cost do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fpd_cost" do
    field :fpd_part, :string

    field :fpd_site, :string

    field :fpd_price, :decimal

    field :fpd_rate1, :decimal

    field :fpd_cost1, :decimal

    field :fpd_user1, :string

    field :fpd_user2, :string

    field :fpd__chr01, :string

    field :fpd__chr02, :string

    field :fpd__chr03, :string

    field :fpd__chr04, :string

    field :fpd__chr05, :string

    field :fpd__dec01, :decimal

    field :fpd__dec02, :decimal

    field :fpd__dec03, :decimal

    field :fpd__dec04, :decimal

    field :fpd__dec05, :decimal

    field :fpd_sim, :string

    field :fpd_rate2, :decimal

    field :fpd_cost2, :decimal

    field :fpd_rate3, :decimal

    field :fpd_cost3, :decimal

    field :fpd_rate4, :decimal

    field :fpd_cost4, :decimal

    field :fpd_rate5, :decimal

    field :fpd_cost5, :decimal

    field :fpd_domain, :string

    field :oid_fpd_cost, :decimal, primary_key: true

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
