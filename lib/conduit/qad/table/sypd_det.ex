defmodule Elixir.Conduit.QAD.Table.Sypd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sypd_det" do
    field :sypd_profl_id, :string

    field :sypd_fldname, :string

    field :sypd_seq, :integer

    field :sypd_reqd_add, Conduit.QAD.Types.Bool

    field :sypd_reqd_chgdel, Conduit.QAD.Types.Bool

    field :sypd_mod_userid, :string

    field :sypd_mod_date, Conduit.QAD.Types.Date

    field :sypd_user1, :string

    field :sypd_user2, :string

    field :sypd__chr01, :string

    field :sypd__chr02, :string

    field :sypd__dec01, :decimal

    field :sypd__dec02, :decimal

    field :sypd__int01, :integer

    field :sypd__int02, :integer

    field :sypd__log01, Conduit.QAD.Types.Bool

    field :sypd__log02, Conduit.QAD.Types.Bool

    field :sypd__dte01, Conduit.QAD.Types.Date

    field :sypd__dte02, Conduit.QAD.Types.Date

    field :sypd__qadc01, :string

    field :sypd__qadc02, :string

    field :sypd__qadc03, :string

    field :sypd__qadc04, :string

    field :sypd__qadd01, :decimal

    field :sypd__qadd02, :decimal

    field :sypd__qadi01, :integer

    field :sypd__qadi02, :integer

    field :sypd__qadl01, Conduit.QAD.Types.Bool

    field :sypd__qadl02, Conduit.QAD.Types.Bool

    field :sypd__qadt01, Conduit.QAD.Types.Date

    field :sypd__qadt02, Conduit.QAD.Types.Date

    field :sypd_prereq_add, Conduit.QAD.Types.Bool

    field :oid_sypd_det, :decimal, primary_key: true

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
