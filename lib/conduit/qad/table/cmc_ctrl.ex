defmodule Elixir.Conduit.QAD.Table.Cmc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cmc_ctrl" do
    field :cmc_nbr, :integer

    field :cmc_user1, :string

    field :cmc_user2, :string

    field :cmc__qadi01, :integer

    field :cmc__qadc01, :string

    field :cmc_domain, :string

    field :oid_cmc_ctrl, :decimal, primary_key: true

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
