defmodule Elixir.Conduit.QAD.Table.Salh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_salh_hist" do
    field :salh_budget, :decimal

    field :salh_ca_int_type, :string

    field :salh_code, :string

    field :salh_end, Conduit.QAD.Types.Date

    field :salh_fcg_code, :string

    field :salh_file, :string

    field :salh_fis_sort, :string

    field :salh_fsc_code, :string

    field :salh_limit_amt, :decimal

    field :salh__qadl04, Conduit.QAD.Types.Bool

    field :salh_line, :integer

    field :salh_nbr, :string

    field :salh_ov_fcg_code, :string

    field :salh_pct_covered, :decimal

    field :salh_per_call, Conduit.QAD.Types.Bool

    field :salh_prefix, :string

    field :salh_start, Conduit.QAD.Types.Date

    field :salh_total, :decimal

    field :salh_type, :string

    field :salh_user1, :string

    field :salh_user2, :string

    field :salh__chr01, :string

    field :salh__chr02, :string

    field :salh__chr03, :string

    field :salh__chr04, :string

    field :salh__dec01, :decimal

    field :salh__dec02, :decimal

    field :salh__dec03, :decimal

    field :salh__dte01, Conduit.QAD.Types.Date

    field :salh__dte02, Conduit.QAD.Types.Date

    field :salh__dte03, Conduit.QAD.Types.Date

    field :salh__log01, Conduit.QAD.Types.Bool

    field :salh__log02, Conduit.QAD.Types.Bool

    field :salh__log03, Conduit.QAD.Types.Bool

    field :salh__qadc01, :string

    field :salh__qadc02, :string

    field :salh__qadc03, :string

    field :salh__qadc04, :string

    field :salh__qadt01, Conduit.QAD.Types.Date

    field :salh__qadt02, Conduit.QAD.Types.Date

    field :salh__qadt03, Conduit.QAD.Types.Date

    field :salh__qadd01, :decimal

    field :salh__qadd02, :decimal

    field :salh__qadd03, :decimal

    field :salh__qadl01, Conduit.QAD.Types.Bool

    field :salh__qadl02, Conduit.QAD.Types.Bool

    field :salh__qadl03, Conduit.QAD.Types.Bool

    field :salh_unposted_amt, :decimal

    field :salh_calls_allow, :integer

    field :salh_mod_userid, :string

    field :salh_mod_date, Conduit.QAD.Types.Date

    field :salh_listpr_limit, :decimal

    field :salh_calls_total, :integer

    field :salh_sequence, :integer

    field :salh_days, :integer

    field :salh_first_activity, Conduit.QAD.Types.Date

    field :salh_last_activity, Conduit.QAD.Types.Date

    field :salh_usage, :string

    field :salh_report, :string

    field :salh_call, :string

    field :salh_category, :string

    field :salh_itm_line, :integer

    field :salh_op, :integer

    field :salh_consumed_amt, :decimal

    field :salh_trnbr, :integer

    field :salh__qadd04, :decimal

    field :salh_consumed_date, Conduit.QAD.Types.Date

    field :salh_itm_part, :string

    field :salh_domain, :string

    field :oid_salh_hist, :decimal, primary_key: true

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
