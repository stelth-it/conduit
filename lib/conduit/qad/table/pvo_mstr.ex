defmodule Elixir.Conduit.QAD.Table.Pvo_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pvo_mstr" do
    field :pvo_id, :integer

    field :pvo_buyer, :string

    field :pvo_lc_charge, :string

    field :pvo_supplier, :string

    field :pvo_internal_ref_type, :string

    field :pvo_internal_ref, :string

    field :pvo_external_ref, :string

    field :pvo_trans_date, Conduit.QAD.Types.Date

    field :pvo_eff_date, Conduit.QAD.Types.Date

    field :pvo_cost_update, Conduit.QAD.Types.Bool

    field :pvo_last_voucher, :string

    field :pvo_ers_status, :integer

    field :pvo_ers_opt, :integer

    field :pvo_ers_price_lst_opt, :integer

    field :pvo_shipfrom, :string

    field :pvo_shipto, :string

    field :pvo_order_type, :string

    field :pvo_order, :string

    field :pvo_line, :integer

    field :pvo_part, :string

    field :pvo_trans_qty, :decimal

    field :pvo_vouchered_qty, :decimal

    field :pvo_curr, :string

    field :pvo_ex_rate, :decimal

    field :pvo_ex_rate2, :decimal

    field :pvo_ex_ratetype, :string

    field :pvo_exru_seq, :integer

    field :pvo_accrued_amt, :decimal

    field :pvo_vouchered_amt, :decimal

    field :pvo_accrual_acct, :string

    field :pvo_accrual_sub, :string

    field :pvo_accrual_cc, :string

    field :pvo_project, :string

    field :pvo_taxable, Conduit.QAD.Types.Bool

    field :pvo_taxc, :string

    field :pvo_tax_env, :string

    field :pvo_tax_in, Conduit.QAD.Types.Bool

    field :pvo_tax_usage, :string

    field :pvo_approver, :string

    field :pvo_consignment, Conduit.QAD.Types.Bool

    field :pvo_mod_userid, :string

    field :pvo_mod_date, Conduit.QAD.Types.Date

    field :pvo_user1, :string

    field :pvo_user2, :string

    field :pvo__qadc01, :string

    field :pvo__qadc02, :string

    field :pvo__qadc03, :string

    field :pvo__qadd01, :decimal

    field :pvo_domain, :string

    field :oid_pvo_mstr, :decimal, primary_key: true

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
