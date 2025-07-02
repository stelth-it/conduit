defmodule Elixir.Conduit.QAD.Table.Acx_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_acx_mstr" do
    field :acx_acc, :string

    field :acx_cc, :string

    field :acx__qad01, Conduit.QAD.Types.Bool

    field :acx_to_ent, :string

    field :acx_to_acc, :string

    field :acx_to_cc, :string

    field :acx_xcons_cc, Conduit.QAD.Types.Bool

    field :acx_user1, :string

    field :acx_user2, :string

    field :acx_entity, :string

    field :acx_sub, :string

    field :acx_to_sub, :string

    field :acx_domain, :string

    field :acx_to_domain, :string

    field :oid_acx_mstr, :decimal, primary_key: true

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
