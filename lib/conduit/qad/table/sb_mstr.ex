defmodule Elixir.Conduit.QAD.Table.Sb_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sb_mstr" do
    field :sb_sub, :string

    field :sb_desc, :string

    field :sb_user1, :string

    field :sb_user2, :string

    field :sb_active, Conduit.QAD.Types.Bool

    field :sb__qadc01, :string

    field :sb_domain, :string

    field :oid_sb_mstr, :decimal, primary_key: true

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
