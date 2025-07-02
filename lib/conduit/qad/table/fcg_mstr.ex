defmodule Elixir.Conduit.QAD.Table.Fcg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fcg_mstr" do
    field :fcg_billable, Conduit.QAD.Types.Bool

    field :fcg_code, :string

    field :fcg_contract, Conduit.QAD.Types.Bool

    field :fcg_desc, :string

    field :fcg_fix_billable, Conduit.QAD.Types.Bool

    field :fcg_giveaway, Conduit.QAD.Types.Bool

    field :fcg_index, :integer

    field :fcg_project, Conduit.QAD.Types.Bool

    field :fcg_warranty, Conduit.QAD.Types.Bool

    field :fcg__chr01, :string

    field :fcg__chr02, :string

    field :fcg__chr03, :string

    field :fcg__chr04, :string

    field :fcg__dec01, :decimal

    field :fcg__dec02, :decimal

    field :fcg__dec03, :decimal

    field :fcg__dte01, Conduit.QAD.Types.Date

    field :fcg__dte02, Conduit.QAD.Types.Date

    field :fcg__dte03, Conduit.QAD.Types.Date

    field :fcg__log01, Conduit.QAD.Types.Bool

    field :fcg__log02, Conduit.QAD.Types.Bool

    field :fcg__log03, Conduit.QAD.Types.Bool

    field :fcg__qadc01, :string

    field :fcg__qadc02, :string

    field :fcg__qadc03, :string

    field :fcg__qadc04, :string

    field :fcg__qadd01, Conduit.QAD.Types.Date

    field :fcg__qadd02, Conduit.QAD.Types.Date

    field :fcg__qadd03, Conduit.QAD.Types.Date

    field :fcg__qadde01, :decimal

    field :fcg__qadde02, :decimal

    field :fcg__qadde03, :decimal

    field :fcg__qadl01, Conduit.QAD.Types.Bool

    field :fcg__qadl02, Conduit.QAD.Types.Bool

    field :fcg__qadl03, Conduit.QAD.Types.Bool

    field :fcg_fix_index, Conduit.QAD.Types.Bool

    field :fcg_covered, Conduit.QAD.Types.Bool

    field :fcg_user1, :string

    field :fcg_user2, :string

    field :fcg_mod_userid, :string

    field :fcg_mod_date, Conduit.QAD.Types.Date

    field :fcg_domain, :string

    field :oid_fcg_mstr, :decimal, primary_key: true

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
