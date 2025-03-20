defmodule Elixir.Conduit.QAD.Table.Sfh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sfh_hist" do
    field :sfh_cmtindx, :integer

    field :sfh_covered_amt, :decimal

    field :sfh_desc, :string

    field :sfh_fis_column, :integer

    field :sfh_fis_sort, :string

    field :sfh_fsc_code, :string

    field :sfh_line, :integer

    field :sfh_nbr, :string

    field :sfh_op, :integer

    field :sfh_part, :string

    field :sfh_price, :decimal

    field :sfh_qty_billed, :decimal

    field :sfh_qty_inv, :decimal

    field :sfh_qty_req, :decimal

    field :sfh_serial, :string

    field :sfh_so_line, :integer

    field :sfh_total_std, :decimal

    field :sfh__chr01, :string

    field :sfh__chr02, :string

    field :sfh__chr03, :string

    field :sfh__chr04, :string

    field :sfh__dec01, :decimal

    field :sfh__dec02, :decimal

    field :sfh__dec03, :decimal

    field :sfh__dte01, Conduit.QAD.Types.Date

    field :sfh__dte02, Conduit.QAD.Types.Date

    field :sfh__dte03, Conduit.QAD.Types.Date

    field :sfh__log01, Conduit.QAD.Types.Bool

    field :sfh__log02, Conduit.QAD.Types.Bool

    field :sfh__log03, Conduit.QAD.Types.Bool

    field :sfh__qadc01, :string

    field :sfh__qadc02, :string

    field :sfh__qadc03, :string

    field :sfh__qadc04, :string

    field :sfh__qadd01, Conduit.QAD.Types.Date

    field :sfh__qadd02, Conduit.QAD.Types.Date

    field :sfh__qadd03, Conduit.QAD.Types.Date

    field :sfh__qadde01, :decimal

    field :sfh__qadde02, :decimal

    field :sfh__qadde03, :decimal

    field :sfh__qadl01, Conduit.QAD.Types.Bool

    field :sfh__qadl02, Conduit.QAD.Types.Bool

    field :sfh_exchange, Conduit.QAD.Types.Bool

    field :sfh_fcg_code, :string

    field :sfh_qty_ret, :decimal

    field :sfh_exg_price, :decimal

    field :sfh_um, :string

    field :sfh_detail, Conduit.QAD.Types.Bool

    field :sfh_fixed_cost, :decimal

    field :sfh_fixed_price, :decimal

    field :sfh_invoice_cost, :decimal

    field :sfh_ca_opn_date, Conduit.QAD.Types.Date

    field :sfh_inv_nbr, :string

    field :sfh_pt_type, :integer

    field :sfh_user1, :string

    field :sfh_user2, :string

    field :sfh_mod_date, Conduit.QAD.Types.Date

    field :sfh_mod_userid, :string

    field :sfh_report, :string

    field :sfh_ret_serial, :string

    field :sfh_trnbr, :integer

    field :sfh_taxc, :string

    field :sfh_tax_usage, :string

    field :sfh_taxable, Conduit.QAD.Types.Bool

    field :sfh_tax_in, Conduit.QAD.Types.Bool

    field :sfh_tax_env, :string

    field :sfh_pst, Conduit.QAD.Types.Bool

    field :sfh__qadl03, Conduit.QAD.Types.Bool

    field :sfh__qadl04, Conduit.QAD.Types.Bool

    field :sfh_price_on_inv, Conduit.QAD.Types.Bool

    field :sfh_qty_on_inv, Conduit.QAD.Types.Bool

    field :sfh_domain, :string

    field :oid_sfh_hist, :decimal, primary_key: true

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
