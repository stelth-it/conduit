defmodule Elixir.Conduit.QAD.Table.Wld_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wld_det" do
    field :wld_prodby_id, :string

    field :wld_prodby_op, :integer

    field :wld_lotser, :string

    field :wld_ref, :string

    field :wld_site, :string

    field :wld_wkctr, :string

    field :wld_mch, :string

    field :wld_alloc_id, :string

    field :wld_alloc_op, :integer

    field :wld_alloc_que, :string

    field :wld_qty_oh, :decimal

    field :wld_mod_date, Conduit.QAD.Types.Date

    field :wld_mod_userid, :string

    field :wld__qadc01, :string

    field :wld__qadc02, :string

    field :wld__qadc03, :string

    field :wld__qadc04, :string

    field :wld__qadd01, :decimal

    field :wld__qadd02, :decimal

    field :wld__qadi01, :integer

    field :wld__qadi02, :integer

    field :wld__qadl01, Conduit.QAD.Types.Bool

    field :wld__qadl02, Conduit.QAD.Types.Bool

    field :wld__qadt01, Conduit.QAD.Types.Date

    field :wld__qadt02, Conduit.QAD.Types.Date

    field :wld__chr01, :string

    field :wld__chr02, :string

    field :wld__chr03, :string

    field :wld__chr04, :string

    field :wld__dec01, :decimal

    field :wld__dec02, :decimal

    field :wld__int01, :integer

    field :wld__int02, :integer

    field :wld__log01, Conduit.QAD.Types.Bool

    field :wld__log02, Conduit.QAD.Types.Bool

    field :wld__dte01, Conduit.QAD.Types.Date

    field :wld__dte02, Conduit.QAD.Types.Date

    field :wld_user1, :string

    field :wld_user2, :string

    field :wld_domain, :string

    field :oid_wld_det, :decimal, primary_key: true

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
