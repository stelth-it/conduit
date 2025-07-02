defmodule Elixir.Conduit.QAD.Table.Dyd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dyd_mstr" do
    field :dyd_tr_type, :string

    field :dyd_doc_type, :string

    field :dyd_dy_code, :string

    field :dyd_user1, :string

    field :dyd_user2, :string

    field :dyd__qadc01, :string

    field :dyd_entity_fr, :string

    field :dyd_entity_to, :string

    field :dyd_domain, :string

    field :oid_dyd_mstr, :decimal, primary_key: true

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
