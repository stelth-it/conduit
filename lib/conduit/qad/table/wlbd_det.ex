defmodule Elixir.Conduit.QAD.Table.Wlbd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wlbd_det" do
    field :wlbd_bom_code, :string

    field :wlbd_comp, :string

    field :wlbd_start, Conduit.QAD.Types.Date

    field :wlbd_trc_comps, Conduit.QAD.Types.Bool

    field :wlbd_trc_ref, Conduit.QAD.Types.Bool

    field :wlbd_comp_cmb_ok, Conduit.QAD.Types.Bool

    field :wlbd_mod_date, Conduit.QAD.Types.Date

    field :wlbd_mod_userid, :string

    field :wlbd__qadc01, :string

    field :wlbd__qadc02, :string

    field :wlbd__qadc03, :string

    field :wlbd__qadc04, :string

    field :wlbd__qadd01, :decimal

    field :wlbd__qadd02, :decimal

    field :wlbd__qadi01, :integer

    field :wlbd__qadi02, :integer

    field :wlbd__qadl01, Conduit.QAD.Types.Bool

    field :wlbd__qadl02, Conduit.QAD.Types.Bool

    field :wlbd__qadt01, Conduit.QAD.Types.Date

    field :wlbd__qadt02, Conduit.QAD.Types.Date

    field :wlbd__chr01, :string

    field :wlbd__chr02, :string

    field :wlbd__chr03, :string

    field :wlbd__chr04, :string

    field :wlbd__dec01, :decimal

    field :wlbd__dec02, :decimal

    field :wlbd__int01, :integer

    field :wlbd__int02, :integer

    field :wlbd__log01, Conduit.QAD.Types.Bool

    field :wlbd__log02, Conduit.QAD.Types.Bool

    field :wlbd__dte01, Conduit.QAD.Types.Date

    field :wlbd__dte02, Conduit.QAD.Types.Date

    field :wlbd_user1, :string

    field :wlbd_user2, :string

    field :wlbd_domain, :string

    field :oid_wlbd_det, :decimal, primary_key: true

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
