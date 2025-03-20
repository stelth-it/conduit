defmodule Elixir.Conduit.QAD.Table.Wlt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wlt_mstr" do
    field :wlt_tr_type, :string

    field :wlt_trnbr, :integer

    field :wlt_prcons_ind, Conduit.QAD.Types.Bool

    field :wlt_mtl_type, :string

    field :wlt_prodby_id, :string

    field :wlt_prodby_op, :integer

    field :wlt_part, :string

    field :wlt_lotser, :string

    field :wlt_ref, :string

    field :wlt_qty, :decimal

    field :wlt_cr_date, Conduit.QAD.Types.Date

    field :wlt_cr_time, :integer

    field :wlt_mod_date, Conduit.QAD.Types.Date

    field :wlt_mod_time, :integer

    field :wlt_mod_userid, :string

    field :wlt__qadc01, :string

    field :wlt__qadc02, :string

    field :wlt__qadc03, :string

    field :wlt__qadc04, :string

    field :wlt__qadd01, :decimal

    field :wlt__qadd02, :decimal

    field :wlt__qadi01, :integer

    field :wlt__qadi02, :integer

    field :wlt__qadl01, Conduit.QAD.Types.Bool

    field :wlt__qadl02, Conduit.QAD.Types.Bool

    field :wlt__qadt01, Conduit.QAD.Types.Date

    field :wlt__qadt02, Conduit.QAD.Types.Date

    field :wlt__chr01, :string

    field :wlt__chr02, :string

    field :wlt__chr03, :string

    field :wlt__chr04, :string

    field :wlt__dec01, :decimal

    field :wlt__dec02, :decimal

    field :wlt__int01, :integer

    field :wlt__int02, :integer

    field :wlt__log01, Conduit.QAD.Types.Bool

    field :wlt__log02, Conduit.QAD.Types.Bool

    field :wlt__dte01, Conduit.QAD.Types.Date

    field :wlt__dte02, Conduit.QAD.Types.Date

    field :wlt_user1, :string

    field :wlt_user2, :string

    field :wlt_domain, :string

    field :oid_wlt_mstr, :decimal, primary_key: true

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
