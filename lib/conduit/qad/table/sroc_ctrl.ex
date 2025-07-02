defmodule Elixir.Conduit.QAD.Table.Sroc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sroc_ctrl" do
    field :sroc_sro, :integer

    field :sroc__qad01, :integer

    field :sroc_user1, :string

    field :sroc_user2, :string

    field :sroc__qadi01, :integer

    field :sroc_sro_pre, :string

    field :sroc_domain, :string

    field :oid_sroc_ctrl, :decimal, primary_key: true

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
