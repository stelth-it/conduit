defmodule Elixir.Conduit.QAD.Table.Exc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_exc_mstr" do
    field :exc_curr, :string

    field :exc_acc, :string

    field :exc_xcc, :string

    field :exc_xac_type, :string

    field :exc_xall_cc, Conduit.QAD.Types.Bool

    field :exc_user1, :string

    field :exc_user2, :string

    field :exc__qadc01, :string

    field :exc_curr2, :string

    field :exc_domain, :string

    field :oid_exc_mstr, :decimal, primary_key: true

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
