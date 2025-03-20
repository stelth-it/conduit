defmodule Elixir.Conduit.QAD.Table.Eswpmp_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_eswpmp_ref" do
    field :oid_eswpmp_ref, :decimal, primary_key: true

    field :oid_eswp_mstr, :decimal, primary_key: true

    field :eswpmp_exec, :string

    field :eswpmp_esig_active, Conduit.QAD.Types.Bool

    field :eswpmp_mod_date, Conduit.QAD.Types.Date

    field :eswpmp_mod_userid, :string

    field :eswpmp_user1, :string

    field :eswpmp_user2, :string

    field :eswpmp__qadc01, :string

    field :eswpmp__qadc02, :string

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
