defmodule Elixir.Conduit.QAD.Table.Udd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_udd_det" do
    field :udd_userid, :string

    field :udd_domain, :string

    field :udd_primary, Conduit.QAD.Types.Bool

    field :udd_mod_userid, :string

    field :udd_mod_date, Conduit.QAD.Types.Date

    field :udd_user1, :string

    field :udd_user2, :string

    field :udd__qadc01, :string

    field :udd__qadc02, :string

    field :udd_groups, :string

    field :oid_udd_det, :decimal, primary_key: true

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
