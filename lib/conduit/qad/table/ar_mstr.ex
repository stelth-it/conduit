defmodule Elixir.Conduit.QAD.Table.Ar_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ar_mstr" do
    field :ar_type, :string

    field :ar_nbr, :string

    field :ar_cust, :string

    field :ar_so_nbr, :string

    field :ar_xcomm_pct, {:array, :decimal}

    field :ar_effdate, Conduit.QAD.Types.Date

    field :ar_date, Conduit.QAD.Types.Date

    field :ar_cr_terms, :string

    field :ar_po, :string

    field :ar_amt, :decimal

    field :ar_applied, :decimal

    field :ar_disc_date, Conduit.QAD.Types.Date

    field :ar_due_date, Conduit.QAD.Types.Date

    field :ar_expt_date, Conduit.QAD.Types.Date

    field :ar_acct, :string

    field :ar_cc, :string

    field :ar_sales_amt, :decimal

    field :ar_xslspsn1, :string

    field :ar_xslspsn2, :string

    field :ar_paid_date, Conduit.QAD.Types.Date

    field :ar_batch, :string

    field :ar_disc_acct, :string

    field :ar_disc_cc, :string

    field :ar_ship, :string

    field :ar_open, Conduit.QAD.Types.Bool

    field :ar_contested, Conduit.QAD.Types.Bool

    field :ar_check, :string

    field :ar_cmtindx, :integer

    field :ar_user1, :string

    field :ar_user2, :string

    field :ar_curr, :string

    field :ar_ex_rate, :decimal

    field :ar_var_acct, :string

    field :ar_var_cc, :string

    field :ar_bank, :string

    field :ar_mrgn_amt, :decimal

    field :ar_entity, :string

    field :ar_ent_ex, :decimal

    field :ar__chr01, :string

    field :ar__chr02, :string

    field :ar__chr03, :string

    field :ar__chr04, :string

    field :ar__chr05, :string

    field :ar__dte01, Conduit.QAD.Types.Date

    field :ar__dte02, Conduit.QAD.Types.Date

    field :ar__dec01, :decimal

    field :ar__dec02, :decimal

    field :ar__log01, Conduit.QAD.Types.Bool

    field :ar_draft, Conduit.QAD.Types.Bool

    field :ar_ldue_date, Conduit.QAD.Types.Date

    field :ar_print, Conduit.QAD.Types.Bool

    field :ar_inv_cr, :string

    field :ar_fr_terms, :string

    field :ar_comm_pct, {:array, :decimal}

    field :ar_slspsn, {:array, :string}

    field :ar_bill, :string

    field :ar_tax_date, Conduit.QAD.Types.Date

    field :ar_tax_env, :string

    field :ar__qad01, :string

    field :ar__qad02, :string

    field :ar__qad03, Conduit.QAD.Types.Bool

    field :ar_drft_sel, Conduit.QAD.Types.Bool

    field :ar_coll_mthd, :string

    field :ar_amt_chg, :decimal

    field :ar_disc_chg, :decimal

    field :ar_base_amt, :decimal

    field :ar_fsm_type, :string

    field :ar_comm_amt, {:array, :decimal}

    field :ar_dy_code, :string

    field :ar_dun_level, :integer

    field :ar_ex_rate2, :decimal

    field :ar_ex_ratetype, :string

    field :ar_base_amt_chg, :decimal

    field :ar_base_applied, :decimal

    field :ar_base_comm_amt, {:array, :decimal}

    field :ar_exru_seq, :integer

    field :ar_dd_curr, :string

    field :ar_dd_ex_rate, :decimal

    field :ar_dd_ex_rate2, :decimal

    field :ar_dd_exru_seq, :integer

    field :ar_app_owner, :string

    field :ar_sub, :string

    field :ar_disc_sub, :string

    field :ar_var_sub, :string

    field :ar_prepayment, Conduit.QAD.Types.Bool

    field :ar_shipfrom, :string

    field :ar_customer_bank, :string

    field :ar_draft_disc_date, Conduit.QAD.Types.Date

    field :ar_recon_date, Conduit.QAD.Types.Date

    field :ar_status, :string

    field :ar_customer_initiated, Conduit.QAD.Types.Bool

    field :ar_draft_submit_date, Conduit.QAD.Types.Date

    field :ar_pay_method, :string

    field :ar_void_date, Conduit.QAD.Types.Date, primary_key: true

    field :ar_domain, :string

    field :oid_ar_mstr, :decimal, primary_key: true

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
