defmodule Elixir.Conduit.QAD.Table.Glr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_glr_mstr" do
    field :glr_code, :string

    field :glr_title, :string

    field :glr_user1, :string

    field :glr_user2, :string

    field :glr__qadc01, :string

    field :glr_domain, :string

    field :oid_glr_mstr, :decimal, primary_key: true

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
