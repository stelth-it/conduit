defmodule Elixir.Conduit.QAD.Table.Abd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_abd_det" do
    field :abd_book, :string

    field :abd_asset, :string

    field :abd_type, :string

    field :abd_active, Conduit.QAD.Types.Bool

    field :abd_cost, :decimal

    field :abd_curr_cost, :decimal

    field :abd_ex_rate, :decimal

    field :abd_ent_ex, :decimal

    field :abd_life_yr, :integer

    field :abd_life_mnth, :integer

    field :abd_rem_yr, :integer

    field :abd_rem_mnth, :integer

    field :abd_method, :string

    field :abd_salvage, :decimal

    field :abd_dtd, :decimal

    field :abd_ytd, :decimal

    field :abd_pd_depr, :decimal

    field :abd_last_depr, Conduit.QAD.Types.Date

    field :abd_expense, :decimal

    field :abd_bonus, :decimal

    field :abd_credit, :decimal

    field :abd_cr_amt, :decimal

    field :abd_conv, :string

    field :abd_db_pct, :decimal

    field :abd_uint1, :integer

    field :abd_uint2, :integer

    field :abd_uint3, :integer

    field :abd_udec1, :decimal

    field :abd_udec2, :decimal

    field :abd_udec3, :decimal

    field :abd_prior_ast, :decimal

    field :abd_user1, :string

    field :abd_user2, :string

    field :abd__qad01, :string

    field :abd__qad02, :string

    field :abd_rep_pct, :decimal

    field :abd_date, Conduit.QAD.Types.Date

    field :abd_periods, :integer

    field :abd_ytd_total, :decimal

    field :abd_first_mnth, :decimal

    field :abd_rt_date, Conduit.QAD.Types.Date

    field :abd__qad03, :string

    field :abd_sched_depr, :decimal

    field :abd_udec4, :decimal

    field :abd_ex_rate2, :decimal

    field :abd_ex_ratetype, :string

    field :abd_exru_seq, :integer

    field :oid_abd_det, :decimal, primary_key: true

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
