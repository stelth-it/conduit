defmodule Elixir.Conduit.QAD.Table.Lng_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lng_mstr" do
    field :lng_lang, :string

    field :lng_dir, :string

    field :lng_nbr, :integer

    field :lng_desc, :string

    field :lng_user1, :string

    field :lng_user2, :string

    field :lng__qad01, :string

    field :lng__qad02, :string

    field :oid_lng_mstr, :decimal, primary_key: true

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
