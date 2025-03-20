defmodule Elixir.Conduit.QAD.Table.Wlc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wlc_ctrl" do
    field :wlc_trc_parents, Conduit.QAD.Types.Bool

    field :wlc_maxlotsize, :decimal

    field :wlc_nrm_id, :string

    field :wlc_wip_split_ok, Conduit.QAD.Types.Bool

    field :wlc_wip_cmb_ok, Conduit.QAD.Types.Bool

    field :wlc_overissue, Conduit.QAD.Types.Bool

    field :wlc_trc_comps, Conduit.QAD.Types.Bool

    field :wlc_trc_ref, Conduit.QAD.Types.Bool

    field :wlc_comp_cmb_ok, Conduit.QAD.Types.Bool

    field :wlc__qadi03, :integer

    field :wlc_mod_date, Conduit.QAD.Types.Date

    field :wlc_mod_userid, :string

    field :wlc__qadc01, :string

    field :wlc__qadc02, :string

    field :wlc__qadc03, :string

    field :wlc__qadc04, :string

    field :wlc__qadd01, :decimal

    field :wlc__qadd02, :decimal

    field :wlc__qadi01, :integer

    field :wlc__qadi02, :integer

    field :wlc__qadl01, Conduit.QAD.Types.Bool

    field :wlc__qadl02, Conduit.QAD.Types.Bool

    field :wlc__qadt01, Conduit.QAD.Types.Date

    field :wlc__qadt02, Conduit.QAD.Types.Date

    field :wlc__chr01, :string

    field :wlc__chr02, :string

    field :wlc__chr03, :string

    field :wlc__chr04, :string

    field :wlc__dec01, :decimal

    field :wlc__dec02, :decimal

    field :wlc__int01, :integer

    field :wlc__int02, :integer

    field :wlc__log01, Conduit.QAD.Types.Bool

    field :wlc__log02, Conduit.QAD.Types.Bool

    field :wlc__dte01, Conduit.QAD.Types.Date

    field :wlc__dte02, Conduit.QAD.Types.Date

    field :wlc_user1, :string

    field :wlc_user2, :string

    field :wlc_enable_wlt, Conduit.QAD.Types.Bool

    field :wlc_domain, :string

    field :oid_wlc_ctrl, :decimal, primary_key: true

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
