defmodule Elixir.Conduit.QAD.Table.Esgc_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esgc_ref" do
    field :oid_esgc_ref, :decimal, primary_key: true

    field :oid_escat_mstr, :decimal, primary_key: true

    field :oid_atg_mstr, :decimal, primary_key: true

    field :esgc_mod_date, Conduit.QAD.Types.Date

    field :esgc_mod_userid, :string

    field :esgc_user1, :string

    field :esgc_user2, :string

    field :esgc__qadc01, :string

    field :esgc__qadc02, :string

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
