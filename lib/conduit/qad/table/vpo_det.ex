defmodule Elixir.Conduit.QAD.Table.Vpo_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vpo_det" do
    field :vpo_ref, :string

    field :vpo_po, :string

    field :vpo_user1, :string

    field :vpo_user2, :string

    field :vpo__qadc01, :string

    field :vpo_domain, :string

    field :oid_vpo_det, :decimal, primary_key: true

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
