defmodule Elixir.Conduit.QAD.Table.Syps_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_syps_det" do
    field :syps_profl_id, :string

    field :syps_app_id, :string

    field :syps_doc_std, :string

    field :syps_doc_typ, :string

    field :syps_doc_rev, :string

    field :syps_tradptr_id, :string

    field :syps_trig_updt, Conduit.QAD.Types.Bool

    field :syps_im_doc, Conduit.QAD.Types.Bool

    field :syps_mod_userid, :string

    field :syps_mod_date, Conduit.QAD.Types.Date

    field :syps_user1, :string

    field :syps_user2, :string

    field :syps__chr01, :string

    field :syps__chr02, :string

    field :syps__dec01, :decimal

    field :syps__dec02, :decimal

    field :syps__int01, :integer

    field :syps__int02, :integer

    field :syps__log01, Conduit.QAD.Types.Bool

    field :syps__log02, Conduit.QAD.Types.Bool

    field :syps__dte01, Conduit.QAD.Types.Date

    field :syps__dte02, Conduit.QAD.Types.Date

    field :syps__qadc01, :string

    field :syps__qadc02, :string

    field :syps__qadc03, :string

    field :syps__qadc04, :string

    field :syps__qadd01, :decimal

    field :syps__qadd02, :decimal

    field :syps__qadi01, :integer

    field :syps__qadi02, :integer

    field :syps__qadl01, Conduit.QAD.Types.Bool

    field :syps__qadl02, Conduit.QAD.Types.Bool

    field :syps__qadt01, Conduit.QAD.Types.Date

    field :syps__qadt02, Conduit.QAD.Types.Date

    field :oid_syps_det, :decimal, primary_key: true

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
