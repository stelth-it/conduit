defmodule Elixir.Conduit.QAD.Table.Grx1_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grx1_wkfl" do
    field :grx1_run_id, :integer

    field :grx1_an_code, :string

    field :grx1_link_type, :string

    field :grx1_link_code, :string

    field :grx1_user1, :string

    field :grx1_user2, :string

    field :grx1__qadc01, :string

    field :grx1_domain, :string

    field :oid_grx1_wkfl, :decimal, primary_key: true

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
