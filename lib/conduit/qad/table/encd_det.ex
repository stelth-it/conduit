defmodule Elixir.Conduit.QAD.Table.Encd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_encd_det" do
    field :encd_domain, :string

    field :encd_cons_entity, :string

    field :encd_sub_entity, :string

    field :encd_pct, :decimal

    field :encd_sub_domain, :string

    field :encd_mod_userid, :string

    field :encd_mod_date, Conduit.QAD.Types.Date

    field :encd_user1, :string

    field :encd_user2, :string

    field :encd__qadc01, :string

    field :encd__qadc02, :string

    field :encd_consolidate, Conduit.QAD.Types.Bool

    field :oid_encd_det, :decimal, primary_key: true

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
