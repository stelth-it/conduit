defmodule Elixir.Conduit.QAD.Table.Emc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_emc_ctrl" do
    field :emc_nbr, :integer

    field :emc__qad01, :integer

    field :emc_user1, :string

    field :emc_user2, :string

    field :emc__qadi01, :integer

    field :emc_domain, :string

    field :oid_emc_ctrl, :decimal, primary_key: true

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
