defmodule Elixir.Conduit.QAD.Table.Txe_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_txe_mstr" do
    field :txe_tax_env, :string

    field :txe_desc, :string

    field :txe_zone_to, :string

    field :txe_zone_from, :string

    field :txe_user1, :string

    field :txe_user2, :string

    field :txe__log01, Conduit.QAD.Types.Bool

    field :txe__qad01, :string

    field :txe__qad02, :string

    field :txe__qad03, Conduit.QAD.Types.Bool

    field :txe_domain, :string

    field :oid_txe_mstr, :decimal, primary_key: true

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
