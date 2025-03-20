defmodule Elixir.Conduit.QAD.Table.Sim_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sim_det" do
    field :sim_site, :string

    field :sim_inv_mov, :string

    field :sim_canrun, {:array, :string}

    field :sim_user1, :string

    field :sim_user2, :string

    field :sim__qadc01, :string

    field :sim_domain, :string

    field :oid_sim_det, :decimal, primary_key: true

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
