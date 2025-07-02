defmodule Elixir.Conduit.QAD.Table.Bl_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bl_ctrl" do
    field :bl_master_id, :string

    field :bl_user1, :string

    field :bl_user2, :string

    field :bl__qadc01, :string

    field :bl_domain, :string

    field :oid_bl_ctrl, :decimal, primary_key: true

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
