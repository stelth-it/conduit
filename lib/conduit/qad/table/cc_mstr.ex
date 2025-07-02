defmodule Elixir.Conduit.QAD.Table.Cc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cc_mstr" do
    field :cc_ctr, :string

    field :cc_desc, :string

    field :cc_user1, :string

    field :cc_user2, :string

    field :cc_active, Conduit.QAD.Types.Bool

    field :cc__qadc01, :string

    field :cc_domain, :string

    field :oid_cc_mstr, :decimal, primary_key: true

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
