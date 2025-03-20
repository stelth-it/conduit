defmodule Elixir.Conduit.QAD.Table.Wlrd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wlrd_det" do
    field :wlrd_routing, :string

    field :wlrd_op, :integer

    field :wlrd_start, Conduit.QAD.Types.Date

    field :wlrd_wip_split_ok, Conduit.QAD.Types.Bool

    field :wlrd_wip_cmb_ok, Conduit.QAD.Types.Bool

    field :wlrd_overissue, Conduit.QAD.Types.Bool

    field :wlrd_mod_date, Conduit.QAD.Types.Date

    field :wlrd_mod_userid, :string

    field :wlrd__qadc01, :string

    field :wlrd__qadc02, :string

    field :wlrd__qadc03, :string

    field :wlrd__qadc04, :string

    field :wlrd__qadd01, :decimal

    field :wlrd__qadd02, :decimal

    field :wlrd__qadi01, :integer

    field :wlrd__qadi02, :integer

    field :wlrd__qadl01, Conduit.QAD.Types.Bool

    field :wlrd__qadl02, Conduit.QAD.Types.Bool

    field :wlrd__qadt01, Conduit.QAD.Types.Date

    field :wlrd__qadt02, Conduit.QAD.Types.Date

    field :wlrd__chr01, :string

    field :wlrd__chr02, :string

    field :wlrd__chr03, :string

    field :wlrd__chr04, :string

    field :wlrd__dec01, :decimal

    field :wlrd__dec02, :decimal

    field :wlrd__int01, :integer

    field :wlrd__int02, :integer

    field :wlrd__log01, Conduit.QAD.Types.Bool

    field :wlrd__log02, Conduit.QAD.Types.Bool

    field :wlrd__dte01, Conduit.QAD.Types.Date

    field :wlrd__dte02, Conduit.QAD.Types.Date

    field :wlrd_user1, :string

    field :wlrd_user2, :string

    field :wlrd_domain, :string

    field :oid_wlrd_det, :decimal, primary_key: true

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
