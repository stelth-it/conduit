defmodule Elixir.Conduit.QAD.Table.Sytf_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sytf_mstr" do
    field :sytf_fldname, :string

    field :sytf_tblname, :string

    field :sytf_reqd_add, Conduit.QAD.Types.Bool

    field :sytf_reqd_chgdel, Conduit.QAD.Types.Bool

    field :sytf_mod_userid, :string

    field :sytf_mod_date, Conduit.QAD.Types.Date

    field :sytf_user1, :string

    field :sytf_user2, :string

    field :sytf__chr01, :string

    field :sytf__chr02, :string

    field :sytf__dec01, :decimal

    field :sytf__dec02, :decimal

    field :sytf__int01, :integer

    field :sytf__int02, :integer

    field :sytf__log01, Conduit.QAD.Types.Bool

    field :sytf__log02, Conduit.QAD.Types.Bool

    field :sytf__dte01, Conduit.QAD.Types.Date

    field :sytf__dte02, Conduit.QAD.Types.Date

    field :sytf__qadc01, :string

    field :sytf__qadc02, :string

    field :sytf__qadc03, :string

    field :sytf__qadc04, :string

    field :sytf__qadd01, :decimal

    field :sytf__qadd02, :decimal

    field :sytf__qadi01, :integer

    field :sytf__qadi02, :integer

    field :sytf__qadl01, Conduit.QAD.Types.Bool

    field :sytf__qadl02, Conduit.QAD.Types.Bool

    field :sytf__qadt01, Conduit.QAD.Types.Date

    field :sytf__qadt02, Conduit.QAD.Types.Date

    field :oid_sytf_mstr, :decimal, primary_key: true

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
