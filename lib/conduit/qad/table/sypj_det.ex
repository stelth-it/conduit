defmodule Elixir.Conduit.QAD.Table.Sypj_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sypj_det" do
    field :sypj_profl_id, :string

    field :sypj_join_profl, :string

    field :sypj_relation, :string

    field :sypj_join_crit, {:array, :string}

    field :sypj_mod_userid, :string

    field :sypj_mod_date, Conduit.QAD.Types.Date

    field :sypj_user1, :string

    field :sypj_user2, :string

    field :sypj__chr01, :string

    field :sypj__chr02, :string

    field :sypj__dec01, :decimal

    field :sypj__dec02, :decimal

    field :sypj__int01, :integer

    field :sypj__int02, :integer

    field :sypj__log01, Conduit.QAD.Types.Bool

    field :sypj__log02, Conduit.QAD.Types.Bool

    field :sypj__dte01, Conduit.QAD.Types.Date

    field :sypj__dte02, Conduit.QAD.Types.Date

    field :sypj__qadc01, :string

    field :sypj__qadc02, :string

    field :sypj__qadc03, :string

    field :sypj__qadc04, :string

    field :sypj__qadd01, :decimal

    field :sypj__qadd02, :decimal

    field :sypj__qadi01, :integer

    field :sypj__qadi02, :integer

    field :sypj__qadl01, Conduit.QAD.Types.Bool

    field :sypj__qadl02, Conduit.QAD.Types.Bool

    field :sypj__qadt01, Conduit.QAD.Types.Date

    field :sypj__qadt02, Conduit.QAD.Types.Date

    field :sypj_reqd_join, Conduit.QAD.Types.Bool

    field :sypj_publ_joined, Conduit.QAD.Types.Bool

    field :sypj_seq, :integer

    field :oid_sypj_det, :decimal, primary_key: true

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
