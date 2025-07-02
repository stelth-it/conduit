defmodule Elixir.Conduit.QAD.Table.Bc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bc_mstr" do
    field :bc_batch, :string

    field :bc_perm, Conduit.QAD.Types.Bool

    field :bc_priority, :integer

    field :bc_user1, :string

    field :bc_user2, :string

    field :bc_desc, :string

    field :bc_cmtindx, :integer

    field :bc_canrun, :string

    field :bc__qadc01, :string

    field :bc_domain, :string

    field :oid_bc_mstr, :decimal, primary_key: true

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
