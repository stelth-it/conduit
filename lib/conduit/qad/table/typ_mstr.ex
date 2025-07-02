defmodule Elixir.Conduit.QAD.Table.Typ_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_typ_mstr" do
    field :typ_type, :string

    field :typ_desc, :string

    field :typ_method, :string

    field :typ__qad01, Conduit.QAD.Types.Bool

    field :typ__qad02, :string

    field :typ__qad03, :string

    field :typ_user1, :string

    field :typ_user2, :string

    field :oid_typ_mstr, :decimal, primary_key: true

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
