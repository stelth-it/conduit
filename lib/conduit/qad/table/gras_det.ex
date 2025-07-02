defmodule Elixir.Conduit.QAD.Table.Gras_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gras_det" do
    field :gras_an_code, :string

    field :gras_sel_low, :string

    field :gras_sel_high, :string

    field :gras_include, Conduit.QAD.Types.Bool

    field :gras_gl_type, :string

    field :gras_user1, :string

    field :gras_user2, :string

    field :gras__qadc01, :string

    field :gras_domain, :string

    field :oid_gras_det, :decimal, primary_key: true

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
