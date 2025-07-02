defmodule Elixir.Conduit.QAD.Table.Defr_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_defr_det" do
    field :defr_nbr, :string

    field :defr_prefix, :string

    field :defr_line, :integer

    field :defr_inv_nbr, :string

    field :defr_curr, :string

    field :defr_cust, :string

    field :defr_eff_date, Conduit.QAD.Types.Date

    field :defr_entity, :string

    field :defr_eu_nbr, :string

    field :defr_ex_rate, :decimal

    field :defr_ex_rate2, :decimal

    field :defr_ex_ratetype, :string

    field :defr_exru_seq, :integer

    field :defr_for, :string

    field :defr_accr_amt, :decimal

    field :defr_inv_amt, :decimal

    field :defr_per_period_amt, :decimal

    field :defr_period_curr_amt, :decimal

    field :defr_period_remain, :decimal

    field :defr_rev_amt, :decimal

    field :defr_rec_amt, :decimal

    field :defr_project, :string

    field :defr_sls_acct, :string

    field :defr_sls_sub, :string

    field :defr_sls_cc, :string

    field :defr_acct, :string

    field :defr_sub, :string

    field :defr_cc, :string

    field :defr_user1, :string

    field :defr_user2, :string

    field :defr_userd01, :decimal

    field :defr_useri01, :integer

    field :defr_userl01, Conduit.QAD.Types.Bool

    field :defr_usert01, Conduit.QAD.Types.Date

    field :defr__qadc01, :string

    field :defr__qadd01, :decimal

    field :defr__qadi01, :integer

    field :defr__qadl01, Conduit.QAD.Types.Bool

    field :defr__qadt01, Conduit.QAD.Types.Date

    field :defr_mod_userid, :string

    field :defr_mod_date, Conduit.QAD.Types.Date

    field :defr__qadc02, :string

    field :defr_bill_to, :string

    field :defr_domain, :string

    field :oid_defr_det, :decimal, primary_key: true

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
