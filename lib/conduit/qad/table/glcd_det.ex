defmodule Elixir.Conduit.QAD.Table.Glcd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_glcd_det" do
    field :glcd_year, :integer

    field :glcd_per, :integer

    field :glcd_entity, :string

    field :glcd_gl_clsd, Conduit.QAD.Types.Bool

    field :glcd_closed, Conduit.QAD.Types.Bool

    field :glcd_yr_clsd, Conduit.QAD.Types.Bool

    field :glcd_user1, :string

    field :glcd_user2, :string

    field :glcd__qadc01, :string

    field :glcd_domain, :string

    field :oid_glcd_det, :decimal, primary_key: true

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
