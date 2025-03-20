defmodule Elixir.Conduit.QAD.Table.Grv_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grv_det" do
    field :grv_acc, :string

    field :grv_cc, :string

    field :grv_entity, :string

    field :grv_project, :string

    field :grv_sub, :string

    field :grv_user1, :string

    field :grv_user2, :string

    field :grv__qadc01, :string

    field :grv_domain, :string

    field :oid_grv_det, :decimal, primary_key: true

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
