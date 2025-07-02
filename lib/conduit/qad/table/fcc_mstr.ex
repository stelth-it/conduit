defmodule Elixir.Conduit.QAD.Table.Fcc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fcc_mstr" do
    field :fcc_ca_int_type, :string

    field :fcc_fcg_code, :string

    field :fcc_fsc_code, :string

    field :fcc_prod_line, :string

    field :fcc_pt_prod_line, :string

    field :fcc_pt_svc_group, :string

    field :fcc_sv_code, :string

    field :fcc__chr01, :string

    field :fcc__chr02, :string

    field :fcc__chr03, :string

    field :fcc__chr04, :string

    field :fcc__dec01, :decimal

    field :fcc__dec02, :decimal

    field :fcc__dec03, :decimal

    field :fcc__dte01, Conduit.QAD.Types.Date

    field :fcc__dte02, Conduit.QAD.Types.Date

    field :fcc__dte03, Conduit.QAD.Types.Date

    field :fcc__log01, Conduit.QAD.Types.Bool

    field :fcc__log02, Conduit.QAD.Types.Bool

    field :fcc__log03, Conduit.QAD.Types.Bool

    field :fcc__qadc01, :string

    field :fcc__qadc02, :string

    field :fcc__qadc03, :string

    field :fcc__qadc04, :string

    field :fcc__qadt01, Conduit.QAD.Types.Date

    field :fcc__qadt02, Conduit.QAD.Types.Date

    field :fcc__qadt03, Conduit.QAD.Types.Date

    field :fcc__qadd01, :decimal

    field :fcc__qadd02, :decimal

    field :fcc__qadd03, :decimal

    field :fcc__qadl01, Conduit.QAD.Types.Bool

    field :fcc__qadl02, Conduit.QAD.Types.Bool

    field :fcc__qadl03, Conduit.QAD.Types.Bool

    field :fcc_type, :string

    field :fcc_mod_date, Conduit.QAD.Types.Date

    field :fcc_mod_userid, :string

    field :fcc_user1, :string

    field :fcc_user2, :string

    field :fcc_domain, :string

    field :oid_fcc_mstr, :decimal, primary_key: true

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
