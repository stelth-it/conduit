defmodule Elixir.Conduit.QAD.Table.Its_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_its_mstr" do
    field :its_part, :string

    field :its_site, :string

    field :its_date, Conduit.QAD.Types.Date

    field :its_target, :integer

    field :its_qty_oh, :decimal

    field :its_user1, :string

    field :its_user2, :string

    field :its__dec01, :decimal

    field :its__dec02, :decimal

    field :its__dec03, :decimal

    field :its_domain, :string

    field :oid_its_mstr, :decimal, primary_key: true

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
