defmodule Elixir.Conduit.QAD.Table.Shd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_shd_det" do
    field :shd_code, :string

    field :shd_src_site, :string

    field :shd_rec_site, :string

    field :shd_departs, Conduit.QAD.Types.Date

    field :shd_user1, :string

    field :shd_user2, :string

    field :shd__qadc01, :string

    field :shd_domain, :string

    field :oid_shd_det, :decimal, primary_key: true

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
