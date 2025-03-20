defmodule Elixir.Conduit.QAD.Table.Sal_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sal_mstr" do
    field :sal_nbr, :string

    field :sal_prefix, :string

    field :sal_file, :string

    field :sal_code, :string

    field :sal_limit_amt, :decimal

    field :sal_total, :decimal

    field :sal_ca_int_type, :string

    field :sal_type, :string

    field :sal_line, :integer

    field :sal_user1, :string

    field :sal_user2, :string

    field :sal_budget, :decimal

    field :sal_end, Conduit.QAD.Types.Date

    field :sal_fcg_code, :string

    field :sal_fis_sort, :string

    field :sal_fsc_code, :string

    field :sal__qadl04, Conduit.QAD.Types.Bool

    field :sal_ov_fcg_code, :string

    field :sal_pct_covered, :decimal

    field :sal_per_call, Conduit.QAD.Types.Bool

    field :sal_start, Conduit.QAD.Types.Date

    field :sal__chr01, :string

    field :sal__chr02, :string

    field :sal__chr03, :string

    field :sal__chr04, :string

    field :sal__dec01, :decimal

    field :sal__dec02, :decimal

    field :sal__dec03, :decimal

    field :sal__dte01, Conduit.QAD.Types.Date

    field :sal__dte02, Conduit.QAD.Types.Date

    field :sal__dte03, Conduit.QAD.Types.Date

    field :sal__log01, Conduit.QAD.Types.Bool

    field :sal__log02, Conduit.QAD.Types.Bool

    field :sal__log03, Conduit.QAD.Types.Bool

    field :sal__qadc01, :string

    field :sal__qadc02, :string

    field :sal__qadc03, :string

    field :sal__qadc04, :string

    field :sal__qadd01, Conduit.QAD.Types.Date

    field :sal__qadd02, Conduit.QAD.Types.Date

    field :sal__qadd03, Conduit.QAD.Types.Date

    field :sal__qadde01, :decimal

    field :sal__qadde02, :decimal

    field :sal__qadde03, :decimal

    field :sal__qadl01, Conduit.QAD.Types.Bool

    field :sal__qadl02, Conduit.QAD.Types.Bool

    field :sal__qadl03, Conduit.QAD.Types.Bool

    field :sal_unposted_amt, :decimal

    field :sal_listpr_limit, :decimal

    field :sal_calls_allow, :integer

    field :sal_calls_total, :integer

    field :sal_mod_userid, :string

    field :sal_mod_date, Conduit.QAD.Types.Date

    field :sal_sequence, :integer

    field :sal_days, :integer

    field :sal_first_activity, Conduit.QAD.Types.Date

    field :sal_last_activity, Conduit.QAD.Types.Date

    field :sal_bg_price, :decimal

    field :sal_domain, :string

    field :oid_sal_mstr, :decimal, primary_key: true

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
