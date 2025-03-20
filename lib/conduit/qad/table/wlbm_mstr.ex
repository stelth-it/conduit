defmodule Elixir.Conduit.QAD.Table.Wlbm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wlbm_mstr" do
    field :wlbm_bom_code, :string

    field :wlbm_start, Conduit.QAD.Types.Date

    field :wlbm_trc_comps, Conduit.QAD.Types.Bool

    field :wlbm_trc_ref, Conduit.QAD.Types.Bool

    field :wlbm_comp_cmb_ok, Conduit.QAD.Types.Bool

    field :wlbm_end, Conduit.QAD.Types.Date

    field :wlbm_mod_date, Conduit.QAD.Types.Date

    field :wlbm_mod_userid, :string

    field :wlbm__qadc01, :string

    field :wlbm__qadc02, :string

    field :wlbm__qadc03, :string

    field :wlbm__qadc04, :string

    field :wlbm__qadd01, :decimal

    field :wlbm__qadd02, :decimal

    field :wlbm__qadi01, :integer

    field :wlbm__qadi02, :integer

    field :wlbm__qadl01, Conduit.QAD.Types.Bool

    field :wlbm__qadl02, Conduit.QAD.Types.Bool

    field :wlbm__qadt01, Conduit.QAD.Types.Date

    field :wlbm__qadt02, Conduit.QAD.Types.Date

    field :wlbm__chr01, :string

    field :wlbm__chr02, :string

    field :wlbm__chr03, :string

    field :wlbm__chr04, :string

    field :wlbm__dec01, :decimal

    field :wlbm__dec02, :decimal

    field :wlbm__int01, :integer

    field :wlbm__int02, :integer

    field :wlbm__log01, Conduit.QAD.Types.Bool

    field :wlbm__log02, Conduit.QAD.Types.Bool

    field :wlbm__dte01, Conduit.QAD.Types.Date

    field :wlbm__dte02, Conduit.QAD.Types.Date

    field :wlbm_user1, :string

    field :wlbm_user2, :string

    field :wlbm_domain, :string

    field :oid_wlbm_mstr, :decimal, primary_key: true

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
