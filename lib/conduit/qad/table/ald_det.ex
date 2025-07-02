defmodule Elixir.Conduit.QAD.Table.Ald_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ald_det" do
    field :ald_code, :string

    field :ald_acc, :string

    field :ald_cc, :string

    field :ald_project, :string

    field :ald_pct, :decimal

    field :ald_user1, :string

    field :ald_user2, :string

    field :ald__qad02, :string

    field :ald__qad01, Conduit.QAD.Types.Date

    field :ald_sub, :string

    field :ald_domain, :string

    field :oid_ald_det, :decimal, primary_key: true

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
