defmodule Elixir.Conduit.QAD.Table.Cs_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cs_mstr" do
    field :cs_set, :string

    field :cs_desc, :string

    field :cs_method, :string

    field :cs_type, :string

    field :cs_user1, :string

    field :cs_user2, :string

    field :cs__qadc01, :string

    field :cs_domain, :string

    field :oid_cs_mstr, :decimal, primary_key: true

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
