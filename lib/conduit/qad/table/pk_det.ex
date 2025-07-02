defmodule Elixir.Conduit.QAD.Table.Pk_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pk_det" do
    field :pk_user, :string

    field :pk_part, :string

    field :pk_qty, :decimal

    field :pk_loc, :string

    field :pk_lot, :string

    field :pk_start, Conduit.QAD.Types.Date

    field :pk_end, Conduit.QAD.Types.Date

    field :pk_user1, :string

    field :pk_user2, :string

    field :pk_reference, :string

    field :pk__qadc01, :string

    field :pk_domain, :string

    field :oid_pk_det, :decimal, primary_key: true

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
