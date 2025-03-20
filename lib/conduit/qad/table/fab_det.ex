defmodule Elixir.Conduit.QAD.Table.Fab_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fab_det" do
    field :fab_fa_id, :string

    field :fab_fabk_seq, :integer

    field :fab_fabk_id, :string

    field :fab_famt_id, :string

    field :fab_life, :decimal

    field :fab_date, Conduit.QAD.Types.Date

    field :fab_amt, :decimal

    field :fab_ovrdt, Conduit.QAD.Types.Date

    field :fab_ovramt, :decimal

    field :fab_salvamt, :decimal

    field :fab_resrv, :integer

    field :fab_uplife, :integer

    field :fab_upper, :integer

    field :fab_um, :string

    field :fab_famtr_id, :string

    field :fab_upcost, :decimal

    field :fab_cst_adjper, :string

    field :fab_mod_userid, :string

    field :fab_mod_date, Conduit.QAD.Types.Date

    field :fab_user1, :string

    field :fab_user2, :string

    field :fab__chr01, :string

    field :fab__dec01, :decimal

    field :fab__log01, Conduit.QAD.Types.Bool

    field :fab__dte01, Conduit.QAD.Types.Date

    field :fab__int01, :integer

    field :fab__qadc01, :string

    field :fab__int02, :integer

    field :fab__dec02, :decimal

    field :fab__qadd01, :decimal

    field :fab__qadl01, Conduit.QAD.Types.Bool

    field :fab__qadi01, :integer

    field :fab__qadt01, Conduit.QAD.Types.Date

    field :fab__qadc02, :string

    field :fab__qadd02, :decimal

    field :fab__qadi02, :integer

    field :fab__qadl02, Conduit.QAD.Types.Bool

    field :fab__qadt02, Conduit.QAD.Types.Date

    field :fab__qadc03, :string

    field :fab_domain, :string

    field :oid_fab_det, :decimal, primary_key: true

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
