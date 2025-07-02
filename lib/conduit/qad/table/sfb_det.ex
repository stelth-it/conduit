defmodule Elixir.Conduit.QAD.Table.Sfb_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sfb_det" do
    field :sfb_cmtindx, :integer

    field :sfb_covered_amt, :decimal

    field :sfb_desc, :string

    field :sfb_fis_column, :integer

    field :sfb_fis_sort, :string

    field :sfb_fsc_code, :string

    field :sfb_line, :integer

    field :sfb_nbr, :string

    field :sfb_op, :integer

    field :sfb_part, :string

    field :sfb_price, :decimal

    field :sfb_qty_billed, :decimal

    field :sfb_qty_inv, :decimal

    field :sfb_qty_req, :decimal

    field :sfb_serial, :string

    field :sfb_so_line, :integer

    field :sfb_total_std, :decimal

    field :sfb__chr01, :string

    field :sfb__chr02, :string

    field :sfb__chr03, :string

    field :sfb__chr04, :string

    field :sfb__dec01, :decimal

    field :sfb__dec02, :decimal

    field :sfb__dec03, :decimal

    field :sfb__dte01, Conduit.QAD.Types.Date

    field :sfb__dte02, Conduit.QAD.Types.Date

    field :sfb__dte03, Conduit.QAD.Types.Date

    field :sfb__log01, Conduit.QAD.Types.Bool

    field :sfb__log02, Conduit.QAD.Types.Bool

    field :sfb__log03, Conduit.QAD.Types.Bool

    field :sfb__qadc01, :string

    field :sfb__qadc02, :string

    field :sfb__qadc03, :string

    field :sfb__qadc04, :string

    field :sfb__qadd01, Conduit.QAD.Types.Date

    field :sfb__qadd02, Conduit.QAD.Types.Date

    field :sfb__qadd03, Conduit.QAD.Types.Date

    field :sfb__qadde01, :decimal

    field :sfb__qadde02, :decimal

    field :sfb__qadde03, :decimal

    field :sfb__qadl01, Conduit.QAD.Types.Bool

    field :sfb__qadl02, Conduit.QAD.Types.Bool

    field :sfb_exchange, Conduit.QAD.Types.Bool

    field :sfb_fcg_code, :string

    field :sfb_qty_ret, :decimal

    field :sfb_exg_price, :decimal

    field :sfb_um, :string

    field :sfb_detail, Conduit.QAD.Types.Bool

    field :sfb_fixed_cost, :decimal

    field :sfb_fixed_price, :decimal

    field :sfb_invoice_cost, :decimal

    field :sfb_ca_opn_date, Conduit.QAD.Types.Date

    field :sfb_pt_type, :integer

    field :sfb_user1, :string

    field :sfb_user2, :string

    field :sfb_mod_date, Conduit.QAD.Types.Date

    field :sfb_mod_userid, :string

    field :sfb_report, :string

    field :sfb_ret_serial, :string

    field :sfb_taxc, :string

    field :sfb_tax_usage, :string

    field :sfb_taxable, Conduit.QAD.Types.Bool

    field :sfb_tax_in, Conduit.QAD.Types.Bool

    field :sfb_tax_env, :string

    field :sfb_pst, Conduit.QAD.Types.Bool

    field :sfb__qadl03, Conduit.QAD.Types.Bool

    field :sfb__qadl04, Conduit.QAD.Types.Bool

    field :sfb_price_on_inv, Conduit.QAD.Types.Bool

    field :sfb_qty_on_inv, Conduit.QAD.Types.Bool

    field :sfb_domain, :string

    field :oid_sfb_det, :decimal, primary_key: true

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
