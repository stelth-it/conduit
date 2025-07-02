defmodule Elixir.Conduit.QAD.Table.Vo_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vo_mstr" do
    field :vo_ref, :string

    field :vo_cr_terms, :string

    field :vo_invoice, :string

    field :vo_applied, :decimal

    field :vo_disc_date, Conduit.QAD.Types.Date

    field :vo_due_date, Conduit.QAD.Types.Date

    field :vo_hold, Conduit.QAD.Types.Bool

    field :vo_paid_date, Conduit.QAD.Types.Date

    field :vo_amt_chg, :decimal

    field :vo_disc_chg, :decimal

    field :vo_po, :string

    field :vo_receiver, :string

    field :vo_ndisc_amt, :decimal

    field :vo_hold_amt, :decimal

    field :vo_cmtindx, :integer

    field :vo_curr, :string

    field :vo_ex_rate, :decimal

    field :vo_user1, :string

    field :vo_separate, Conduit.QAD.Types.Bool

    field :vo_ship, :string

    field :vo__chr01, :string

    field :vo__chr02, :string

    field :vo__chr03, :string

    field :vo__chr04, :string

    field :vo__chr05, :string

    field :vo__dte01, Conduit.QAD.Types.Date

    field :vo__dte02, Conduit.QAD.Types.Date

    field :vo__dec01, :decimal

    field :vo__dec02, :decimal

    field :vo__log01, Conduit.QAD.Types.Bool

    field :vo_tax_pct, {:array, :decimal}

    field :vo_type, :string

    field :vo_confirmed, Conduit.QAD.Types.Bool

    field :vo_conf_by, :string

    field :vo_po_rcvd, Conduit.QAD.Types.Bool

    field :vo_prepay, :decimal

    field :vo_tax_date, Conduit.QAD.Types.Date

    field :vo_modok, Conduit.QAD.Types.Bool

    field :vo_user2, :string

    field :vo_tax_env, :string

    field :vo_recur, Conduit.QAD.Types.Bool

    field :vo_rcycle, :string

    field :vo_rnbr_cyc, :integer

    field :vo_rstart, Conduit.QAD.Types.Date

    field :vo_rexpire, Conduit.QAD.Types.Date

    field :vo_rel_date, Conduit.QAD.Types.Date

    field :vo_rv_nbr, :string

    field :vo_lc_amt, :decimal

    field :vo__qad01, :string

    field :vo__qad02, :string

    field :vo__qad03, Conduit.QAD.Types.Bool

    field :vo_is_ers, Conduit.QAD.Types.Bool

    field :vo_taxable, Conduit.QAD.Types.Bool

    field :vo_taxc, :string

    field :vo_tax_usage, :string

    field :vo_ex_rate2, :decimal

    field :vo_ex_ratetype, :string

    field :vo_base_applied, :decimal

    field :vo_base_amt_chg, :decimal

    field :vo_base_disc_chg, :decimal

    field :vo_base_ndisc, :decimal

    field :vo_base_hold_amt, :decimal

    field :vo_exru_seq, :integer

    field :vo_waiting_exp, Conduit.QAD.Types.Bool

    field :vo_resale_amt, :decimal

    field :vo_domain, :string

    field :oid_vo_mstr, :decimal, primary_key: true

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
