defmodule Elixir.Conduit.QAD.Table.Ins_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ins_mstr" do
    field :ins_ar_acct, :string

    field :ins_ar_sub, :string

    field :ins_ar_cc, :string

    field :ins_bill_to, :string

    field :ins_cmtindx, :integer

    field :ins_cr_terms, :string

    field :ins_curr, :string

    field :ins_fixed, Conduit.QAD.Types.Bool

    field :ins_hold, Conduit.QAD.Types.Bool

    field :ins_hold_rmks, :string

    field :ins_inv_amt, :decimal

    field :ins_sched_date, Conduit.QAD.Types.Date

    field :ins_inv_nbr, :string

    field :ins_inv_pct, :decimal

    field :ins_inv_type, :string

    field :ins_ord_date, Conduit.QAD.Types.Date

    field :ins_orig_date, Conduit.QAD.Types.Date

    field :ins_prepayment, Conduit.QAD.Types.Bool

    field :ins_prj_nbr, :string

    field :ins_rel_date, Conduit.QAD.Types.Date

    field :ins_released, Conduit.QAD.Types.Bool

    field :ins_rmks, :string

    field :ins_sched_nbr, :string

    field :ins_so_nbr, :string

    field :ins_sub_nbr, :integer

    field :ins_userid, :string

    field :ins_mod_date, Conduit.QAD.Types.Date

    field :ins_mod_userid, :string

    field :ins_user1, :string

    field :ins_user2, :string

    field :ins__qadc01, :string

    field :ins__qadd01, :decimal

    field :ins__qadi01, :integer

    field :ins__qadl01, Conduit.QAD.Types.Bool

    field :ins__qadt01, Conduit.QAD.Types.Date

    field :ins_domain, :string

    field :oid_ins_mstr, :decimal, primary_key: true

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
