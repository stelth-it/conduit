defmodule Elixir.Conduit.QAD.Table.Egt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_egt_mstr" do
    field :egt_current, :string

    field :egt_user1, :string

    field :egt_user2, :string

    field :egt_start_time, :string

    field :egt_sched_date, Conduit.QAD.Types.Date

    field :egt_reschedule, Conduit.QAD.Types.Bool

    field :egt_multi, Conduit.QAD.Types.Bool

    field :egt_hours, :decimal

    field :egt_eng_code, :string

    field :egt_end_time, :string

    field :egt_create_date, Conduit.QAD.Types.Date

    field :egt_close, Conduit.QAD.Types.Bool

    field :egt_ca_nbr, :string

    field :egt_priority, :integer

    field :egt_trnbr, :integer

    field :egt_esh_schedule, :string

    field :egt__chr01, :string

    field :egt__chr02, :string

    field :egt__chr03, :string

    field :egt__chr04, :string

    field :egt__dec01, :decimal

    field :egt__dec02, :decimal

    field :egt__dec03, :decimal

    field :egt__dte01, Conduit.QAD.Types.Date

    field :egt__dte02, Conduit.QAD.Types.Date

    field :egt__dte03, Conduit.QAD.Types.Date

    field :egt__log01, Conduit.QAD.Types.Bool

    field :egt__log02, Conduit.QAD.Types.Bool

    field :egt__log03, Conduit.QAD.Types.Bool

    field :egt__qadc01, :string

    field :egt__qadc02, :string

    field :egt__qadc03, :string

    field :egt__qadc04, :string

    field :egt__qadd01, Conduit.QAD.Types.Date

    field :egt__qadd02, Conduit.QAD.Types.Date

    field :egt__qadd03, Conduit.QAD.Types.Date

    field :egt__qadde01, :decimal

    field :egt__qadde02, :decimal

    field :egt__qadde03, :decimal

    field :egt__qadl01, Conduit.QAD.Types.Bool

    field :egt__qadl02, Conduit.QAD.Types.Bool

    field :egt__qadl03, Conduit.QAD.Types.Bool

    field :egt_itm_prefix, :string

    field :egt_itm_type, :string

    field :egt_itm_itm_line, :integer

    field :egt_itm_line, :integer

    field :egt_domain, :string

    field :oid_egt_mstr, :decimal, primary_key: true

    field :egt_trv_dist, :decimal

    field :egt_trv_um, :string

    field :egt_trv_start_loc, :string

    field :egt_trv_type_loc, :string

    field :egt_trv_time, :string

    field :egt_end_date, Conduit.QAD.Types.Date

    field :egt_wo_lot, :string

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
