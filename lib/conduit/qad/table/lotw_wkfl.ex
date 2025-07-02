defmodule Elixir.Conduit.QAD.Table.Lotw_wkfl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lotw_wkfl" do
    field :lotw_lotser, :string

    field :lotw_part, :string

    field :lotw_mfguser, :string

    field :lotw_userid, :string

    field :lotw_user1, :string

    field :lotw_user2, :string

    field :lotw__qadc01, :string

    field :lotw_domain, :string

    field :oid_lotw_wkfl, :decimal, primary_key: true

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
