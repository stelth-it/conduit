defmodule Elixir.Conduit.QAD.Table.Dbs_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dbs_mstr" do
    field :dbs_major, :decimal

    field :dbs_minor, :string

    field :dbs_status, :string

    field :dbs_userid, :string

    field :dbs_date, Conduit.QAD.Types.Date

    field :dbs_time, :integer

    field :dbs_user1, :string

    field :dbs_user2, :string

    field :dbs__qadc01, :string

    field :oid_dbs_mstr, :decimal, primary_key: true

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
