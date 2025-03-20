defmodule Elixir.Conduit.QAD.Table.Glec_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_glec_det" do
    field :glec_domain, :string

    field :glec_cons_ref, :string

    field :glec_cons_rflag, Conduit.QAD.Types.Bool

    field :glec_cons_line, :integer

    field :glec_sub_domain, :string

    field :glec_sub_ref, :string

    field :glec_sub_rflag, Conduit.QAD.Types.Bool

    field :glec_sub_line, :integer

    field :glec_mod_userid, :string

    field :glec_mod_date, Conduit.QAD.Types.Date

    field :glec_user1, :string

    field :glec_user2, :string

    field :glec__qadc01, :string

    field :glec__qadc02, :string

    field :glec_cons_entity, :string

    field :glec_sub_entity, :string

    field :oid_glec_det, :decimal, primary_key: true

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
