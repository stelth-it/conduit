defmodule Elixir.Conduit.QAD.Table.Gltmd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gltmd_det" do
    field :gltmd_acct, :string

    field :gltmd_entity, :string

    field :gltmd_line, :integer

    field :gltmd_match_nbr, :integer

    field :gltmd_mod_date, Conduit.QAD.Types.Date

    field :gltmd_mod_userid, :string

    field :gltmd_ref, :string

    field :gltmd_rflag, Conduit.QAD.Types.Bool

    field :gltmd_user1, :string

    field :gltmd_user2, :string

    field :gltmd_userd01, :decimal

    field :gltmd_useri01, :integer

    field :gltmd_userl01, Conduit.QAD.Types.Bool

    field :gltmd_usert01, Conduit.QAD.Types.Date

    field :gltmd__qadc01, :string

    field :gltmd__qadc02, :string

    field :gltmd__qadd01, :decimal

    field :gltmd__qadi01, :integer

    field :gltmd__qadl01, Conduit.QAD.Types.Bool

    field :gltmd__qadt01, Conduit.QAD.Types.Date

    field :gltmd_cons_trans, Conduit.QAD.Types.Bool

    field :gltmd_cons_amt, :decimal

    field :gltmd_domain, :string

    field :oid_gltmd_det, :decimal, primary_key: true

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
