defmodule Elixir.Conduit.QAD.Table.Cah_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cah_hist" do
    field :cah_nbr, :string

    field :cah_nxt_date, Conduit.QAD.Types.Date

    field :cah_que, :string

    field :cah_assign, :string

    field :cah_enter_by, :string

    field :cah_status, :string

    field :cah_type, :string

    field :cah_part, :string

    field :cah_serial, :string

    field :cah_nxt_act, :string

    field :cah_name, :string

    field :cah_phone, :string

    field :cah_problem, :string

    field :cah_pri, :integer

    field :cah_desc, :string

    field :cah_evt_date, Conduit.QAD.Types.Date

    field :cah_cmtindx, :integer

    field :cah_sv_code, :string

    field :cah__chr01, :string

    field :cah__chr02, :string

    field :cah__chr03, :string

    field :cah__chr04, :string

    field :cah__chr05, :string

    field :cah__dec01, :decimal

    field :cah__chr06, :string

    field :cah__chr07, :string

    field :cah__chr08, :string

    field :cah__chr09, :string

    field :cah__chr10, :string

    field :cah__dte01, Conduit.QAD.Types.Date

    field :cah__dte02, Conduit.QAD.Types.Date

    field :cah__dte03, Conduit.QAD.Types.Date

    field :cah__dte04, Conduit.QAD.Types.Date

    field :cah__dte05, Conduit.QAD.Types.Date

    field :cah__dec02, :decimal

    field :cah__dec03, :decimal

    field :cah__log01, Conduit.QAD.Types.Bool

    field :cah__log02, Conduit.QAD.Types.Bool

    field :cah__log03, Conduit.QAD.Types.Bool

    field :cah__log04, Conduit.QAD.Types.Bool

    field :cah__log05, Conduit.QAD.Types.Bool

    field :cah__chr11, :string

    field :cah_trv_dist, :integer

    field :cah_trv_um, :string

    field :cah_from_que, :string

    field :cah_snt_date, Conduit.QAD.Types.Date

    field :cah_snt_time, :integer

    field :cah_code, :string

    field :cah_seq, :integer

    field :cah_evt_time, :string

    field :cah_nxt_time, :string

    field :cah_time_log, :decimal

    field :cah_billed, Conduit.QAD.Types.Bool

    field :cah_resolve, :string

    field :cah_severity, :string

    field :cah_user1, :string

    field :cah_user2, :string

    field :cah_ref, :integer

    field :cah_eu_nbr, :string

    field :cah_eng_group, :string

    field :cah_escalate, :string

    field :cah_int_type, :string

    field :cah_date_stmp, Conduit.QAD.Types.Date

    field :cah_time_stmp, :string

    field :cah_area, :string

    field :cah_category, :string

    field :cah_eng_area, :string

    field :cah_cmmt_mod, Conduit.QAD.Types.Bool

    field :cah_es_nbr, :string

    field :cah_es_seq, :integer

    field :cah_opn_date, Conduit.QAD.Types.Date

    field :cah_contract, :string

    field :cah_eu_date, Conduit.QAD.Types.Date

    field :cah_eu_time, :string

    field :cah__qadc01, :string

    field :cah__qadc02, :string

    field :cah__qadc03, :string

    field :cah__qadd01, :decimal

    field :cah__qadd02, :decimal

    field :cah__qadd03, :decimal

    field :cah__qadi01, :integer

    field :cah__qadi02, :integer

    field :cah__qadi03, :integer

    field :cah__qadl01, Conduit.QAD.Types.Bool

    field :cah__qadl02, Conduit.QAD.Types.Bool

    field :cah__qadl03, Conduit.QAD.Types.Bool

    field :cah__qadt01, Conduit.QAD.Types.Date

    field :cah__qadt02, Conduit.QAD.Types.Date

    field :cah__qadt03, Conduit.QAD.Types.Date

    field :cah_domain, :string

    field :oid_cah_hist, :decimal, primary_key: true

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
