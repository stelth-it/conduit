defmodule Elixir.Conduit.QAD.Table.Frd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_frd_det" do
    field :frd_code, :string

    field :frd_weight, :decimal

    field :frd_rate, :decimal

    field :frd_user1, :string

    field :frd_user2, :string

    field :frd__qadc01, :string

    field :frd_domain, :string

    field :oid_frd_det, :decimal, primary_key: true

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
