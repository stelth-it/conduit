defmodule Elixir.Conduit.QAD.Table.Gltm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gltm_mstr" do
    field :gltm_entity, :string

    field :gltm_acct, :string

    field :gltm_match_nbr, :integer

    field :gltm_eff_dt, Conduit.QAD.Types.Date

    field :gltm_ref, :string

    field :gltm_rflag, Conduit.QAD.Types.Bool

    field :gltm_line, :integer

    field :gltm_mod_userid, :string

    field :gltm_mod_date, Conduit.QAD.Types.Date

    field :gltm_user1, :string

    field :gltm_user2, :string

    field :gltm_userd01, :decimal

    field :gltm_useri01, :integer

    field :gltm_userl01, Conduit.QAD.Types.Bool

    field :gltm_usert01, Conduit.QAD.Types.Date

    field :gltm__qadc01, :string

    field :gltm__qadc02, :string

    field :gltm__qadd01, :decimal

    field :gltm__qadi01, :integer

    field :gltm__qadl01, Conduit.QAD.Types.Bool

    field :gltm__qadt01, Conduit.QAD.Types.Date

    field :gltm_domain, :string

    field :oid_gltm_mstr, :decimal, primary_key: true

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
