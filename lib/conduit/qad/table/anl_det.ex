defmodule Elixir.Conduit.QAD.Table.Anl_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_anl_det" do
    field :anl_code, :string

    field :anl_link_code, :string

    field :anl_type, :string

    field :anl_desc, :string

    field :anl_user1, :string

    field :anl_user2, :string

    field :anl__qadc01, :string

    field :anl__qadd01, :decimal

    field :anl_domain, :string

    field :oid_anl_det, :decimal, primary_key: true

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
