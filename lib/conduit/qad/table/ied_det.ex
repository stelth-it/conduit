defmodule Elixir.Conduit.QAD.Table.Ied_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ied_det" do
    field :ied_com_code, :string

    field :ied_ctry_origin, :string

    field :ied_line, :integer

    field :ied_mode_transp, :string

    field :ied_nat_trans, :string

    field :ied_nbr, :string

    field :ied_port_arrdisp, :string

    field :ied_port_transh, :string

    field :ied_stat_proc, :string

    field :ied_terms_deliv, :string

    field :ied_type, :string

    field :ied_userid, :string

    field :ied_mod_date, Conduit.QAD.Types.Date

    field :ied_ctry_desdisp, :string

    field :ied_intrastat, Conduit.QAD.Types.Bool

    field :ied_region, :string

    field :ied__chr01, :string

    field :ied__chr02, :string

    field :ied__chr03, :string

    field :ied__chr04, :string

    field :ied__chr05, :string

    field :ied__dec01, :decimal

    field :ied__dec02, :decimal

    field :ied__dec03, :decimal

    field :ied__dec04, :decimal

    field :ied__dec05, :decimal

    field :ied__dte01, Conduit.QAD.Types.Date

    field :ied__dte02, Conduit.QAD.Types.Date

    field :ied__dte03, Conduit.QAD.Types.Date

    field :ied__dte04, Conduit.QAD.Types.Date

    field :ied__dte05, Conduit.QAD.Types.Date

    field :ied__log01, Conduit.QAD.Types.Bool

    field :ied__log02, Conduit.QAD.Types.Bool

    field :ied__log03, Conduit.QAD.Types.Bool

    field :ied__qadc01, :string

    field :ied__qadc02, :string

    field :ied__qadc03, :string

    field :ied__qadc04, :string

    field :ied__qadc05, :string

    field :ied__qadd01, :decimal

    field :ied__qadd02, :decimal

    field :ied__qadd03, :decimal

    field :ied__qadd04, :decimal

    field :ied__qadd05, :decimal

    field :ied__qadl01, Conduit.QAD.Types.Bool

    field :ied__qadl02, Conduit.QAD.Types.Bool

    field :ied__qadl03, Conduit.QAD.Types.Bool

    field :ied__qadl04, Conduit.QAD.Types.Bool

    field :ied__qadl05, Conduit.QAD.Types.Bool

    field :ied__qadt01, Conduit.QAD.Types.Date

    field :ied__qadt02, Conduit.QAD.Types.Date

    field :ied__qadt03, Conduit.QAD.Types.Date

    field :ied__log04, Conduit.QAD.Types.Bool

    field :ied__log05, Conduit.QAD.Types.Bool

    field :ied__log06, Conduit.QAD.Types.Bool

    field :ied_user1, :string

    field :ied_user2, :string

    field :ied_shipvia, :string

    field :ied_affiliation, :string

    field :ied_item_spec, :string

    field :ied_csa, :integer

    field :ied_container, Conduit.QAD.Types.Bool

    field :ied_preference, :integer

    field :ied_decl_region, :string

    field :ied_req_nbr, :string

    field :ied_trnbr, :integer

    field :ied_domain, :string

    field :oid_ied_det, :decimal, primary_key: true

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
