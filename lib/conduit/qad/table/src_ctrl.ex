defmodule Elixir.Conduit.QAD.Table.Src_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_src_ctrl" do
    field :src_nbr, :integer

    field :src_user1, :string

    field :src_user2, :string

    field :src__qadi01, :integer

    field :src__qadc01, :string

    field :src_domain, :string

    field :oid_src_ctrl, :decimal, primary_key: true

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
