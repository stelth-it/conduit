defmodule Elixir.Conduit.QAD.Table.Vrc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vrc_ctrl" do
    field :vrc_v86, :string

    field :vrc_user1, :string

    field :vrc_user2, :string

    field :vrc__qadc01, :string

    field :vrc_domain, :string

    field :oid_vrc_ctrl, :decimal, primary_key: true

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
