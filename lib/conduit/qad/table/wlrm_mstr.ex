defmodule Elixir.Conduit.QAD.Table.Wlrm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wlrm_mstr" do
    field :wlrm_routing, :string

    field :wlrm_start, Conduit.QAD.Types.Date

    field :wlrm_trc_parent, Conduit.QAD.Types.Bool

    field :wlrm_maxlotsize, :decimal

    field :wlrm_nrm_id, :string

    field :wlrm_wip_split_ok, Conduit.QAD.Types.Bool

    field :wlrm_wip_cmb_ok, Conduit.QAD.Types.Bool

    field :wlrm_overissue, Conduit.QAD.Types.Bool

    field :wlrm_lt_startop, :integer

    field :wlrm_ser_startop, :integer

    field :wlrm_end, Conduit.QAD.Types.Date

    field :wlrm_mod_date, Conduit.QAD.Types.Date

    field :wlrm_mod_userid, :string

    field :wlrm__qadc01, :string

    field :wlrm__qadc02, :string

    field :wlrm__qadc03, :string

    field :wlrm__qadc04, :string

    field :wlrm__qadd01, :decimal

    field :wlrm__qadd02, :decimal

    field :wlrm__qadi01, :integer

    field :wlrm__qadi02, :integer

    field :wlrm__qadl01, Conduit.QAD.Types.Bool

    field :wlrm__qadl02, Conduit.QAD.Types.Bool

    field :wlrm__qadt01, Conduit.QAD.Types.Date

    field :wlrm__qadt02, Conduit.QAD.Types.Date

    field :wlrm__chr01, :string

    field :wlrm__chr02, :string

    field :wlrm__chr03, :string

    field :wlrm__chr04, :string

    field :wlrm__dec01, :decimal

    field :wlrm__dec02, :decimal

    field :wlrm__int01, :integer

    field :wlrm__int02, :integer

    field :wlrm__log01, Conduit.QAD.Types.Bool

    field :wlrm__log02, Conduit.QAD.Types.Bool

    field :wlrm__dte01, Conduit.QAD.Types.Date

    field :wlrm__dte02, Conduit.QAD.Types.Date

    field :wlrm_user1, :string

    field :wlrm_user2, :string

    field :wlrm_domain, :string

    field :oid_wlrm_mstr, :decimal, primary_key: true

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
