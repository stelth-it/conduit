defmodule Elixir.Conduit.QAD.Table.Gral_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gral_det" do
    field :gral_an_code, :string

    field :gral_link_code, :string

    field :gral_seq, :decimal

    field :gral_user1, :string

    field :gral_user2, :string

    field :gral__qadc01, :string

    field :gral_domain, :string

    field :oid_gral_det, :decimal, primary_key: true

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
