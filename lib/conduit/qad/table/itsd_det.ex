defmodule Elixir.Conduit.QAD.Table.Itsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_itsd_det" do
    field :itsd_part, :string

    field :itsd_site, :string

    field :itsd_qty, :decimal

    field :itsd_type, :string

    field :itsd_user1, :string

    field :itsd_user2, :string

    field :itsd_ref, :string

    field :itsd_date, Conduit.QAD.Types.Date

    field :itsd_loaded, Conduit.QAD.Types.Bool

    field :itsd__qadc01, :string

    field :itsd_domain, :string

    field :oid_itsd_det, :decimal, primary_key: true

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
