defmodule Elixir.Conduit.QAD.Table.Grit_wkf do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grit_wkf" do
    field :grit_runid, :string

    field :grit_gl_code, :string

    field :grit_desc, :string

    field :grit_marker, :string

    field :grit_gl_type, :string

    field :grit_an_code, :string

    field :grit_user1, :string

    field :grit_user2, :string

    field :grit__qadc01, :string

    field :grit_domain, :string

    field :oid_grit_wkf, :decimal, primary_key: true

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
