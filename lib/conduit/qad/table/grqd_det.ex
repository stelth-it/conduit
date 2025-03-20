defmodule Elixir.Conduit.QAD.Table.Grqd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grqd_det" do
    field :grqd_per_end, :integer

    field :grqd_quarter, :integer

    field :grqd_user1, :string

    field :grqd_user2, :string

    field :grqd_year, :integer

    field :grqd_per_start, :integer

    field :grqd__qadc01, :string

    field :grqd_domain, :string

    field :oid_grqd_det, :decimal, primary_key: true

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
