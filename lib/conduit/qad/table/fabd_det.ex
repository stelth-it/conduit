defmodule Elixir.Conduit.QAD.Table.Fabd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fabd_det" do
    field :fabd_fa_id, :string

    field :fabd_fabk_id, :string

    field :fabd_faloc_id, :string

    field :fabd_facls_id, :string

    field :fabd_yrper, :string

    field :fabd_adj_yrper, :string

    field :fabd_post, Conduit.QAD.Types.Bool

    field :fabd_accamt, :decimal

    field :fabd_peramt, :decimal

    field :fabd__qadl03, Conduit.QAD.Types.Bool

    field :fabd_retired, Conduit.QAD.Types.Bool

    field :fabd_transfer, Conduit.QAD.Types.Bool

    field :fabd_resrv, :integer

    field :fabd_resrv_type, :string

    field :fabd_suspend, Conduit.QAD.Types.Bool

    field :fabd_seq, :integer

    field :fabd_upper, :integer

    field :fabd_accup, :integer

    field :fabd_trn_loc, :string

    field :fabd_glseq, :integer

    field :fabd__qadl04, Conduit.QAD.Types.Bool

    field :fabd_rt_period, Conduit.QAD.Types.Bool

    field :fabd_mod_userid, :string

    field :fabd_mod_date, Conduit.QAD.Types.Date

    field :fabd_user1, :string

    field :fabd_user2, :string

    field :fabd__chr01, :string

    field :fabd__dec01, :decimal

    field :fabd__log01, Conduit.QAD.Types.Bool

    field :fabd__dte01, Conduit.QAD.Types.Date

    field :fabd__int01, :integer

    field :fabd__qadc01, :string

    field :fabd__qadc02, :string

    field :fabd__qadd01, :decimal

    field :fabd__qadl01, Conduit.QAD.Types.Bool

    field :fabd__qadi01, :integer

    field :fabd__qadt01, Conduit.QAD.Types.Date

    field :fabd__qadd02, :decimal

    field :fabd__qadi02, :integer

    field :fabd__qadl02, Conduit.QAD.Types.Bool

    field :fabd__qadt02, Conduit.QAD.Types.Date

    field :fabd_entity, :string

    field :fabd_trn_glseq, :integer

    field :fabd_trn_entity, :string

    field :fabd_migrate, Conduit.QAD.Types.Bool

    field :fabd_domain, :string

    field :oid_fabd_det, :decimal, primary_key: true

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
