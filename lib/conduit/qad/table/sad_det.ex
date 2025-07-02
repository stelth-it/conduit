defmodule Elixir.Conduit.QAD.Table.Sad_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sad_det" do
    field :sad_nbr, :string

    field :sad_end_date, Conduit.QAD.Types.Date

    field :sad_per_date, Conduit.QAD.Types.Date

    field :sad_st_date, Conduit.QAD.Types.Date

    field :sad_line, :integer

    field :sad_sv_code, :string

    field :sad_qty_item, :decimal

    field :sad_qty_bld, :decimal

    field :sad_type, :string

    field :sad_price, :decimal

    field :sad_std_cost, :decimal

    field :sad_qty_chg, :decimal

    field :sad_acct, :string

    field :sad_taxable, Conduit.QAD.Types.Bool

    field :sad_serial, :string

    field :sad_desc, :string

    field :sad_um, :string

    field :sad_cc, :string

    field :sad_comment, {:array, :string}

    field :sad_um_conv, :decimal

    field :sad_disc_pct, :decimal

    field :sad_project, :string

    field :sad_cmtindx, :integer

    field :sad_custpart, :string

    field :sad_status, :string

    field :sad_xslspsn, {:array, :string}

    field :sad_xcomm_pct, {:array, :decimal}

    field :sad_user1, :string

    field :sad_user2, :string

    field :sad_expire, Conduit.QAD.Types.Date

    field :sad_taxc, :string

    field :sad_prodline, :string

    field :sad_tax_in, Conduit.QAD.Types.Bool

    field :sad_fst_list, Conduit.QAD.Types.Bool

    field :sad_pst, Conduit.QAD.Types.Bool

    field :sad__chr01, :string

    field :sad__chr02, :string

    field :sad__chr03, :string

    field :sad__chr04, :string

    field :sad__chr05, :string

    field :sad__chr06, :string

    field :sad__chr07, :string

    field :sad__chr08, :string

    field :sad__chr09, :string

    field :sad__chr10, :string

    field :sad__dte01, Conduit.QAD.Types.Date

    field :sad__dte02, Conduit.QAD.Types.Date

    field :sad__dec01, :decimal

    field :sad__dec02, :decimal

    field :sad__log01, Conduit.QAD.Types.Bool

    field :sad_for, :string

    field :sad_list_pr, :decimal

    field :sad_dsc_acct, :string

    field :sad_dsc_cc, :string

    field :sad_pr_list, :string

    field :sad_prefix, :string

    field :sad_qty_lst, :decimal

    field :sad_lstcover, Conduit.QAD.Types.Date

    field :sad_lastbill, Conduit.QAD.Types.Date

    field :sad_ref, :integer

    field :sad_st_cover, Conduit.QAD.Types.Date

    field :sad_qty_per, :decimal

    field :sad_nxt_bill, Conduit.QAD.Types.Date

    field :sad_qty_litm, :decimal

    field :sad_lst_bill, Conduit.QAD.Types.Date

    field :sad_cycle, :string

    field :sad_cancel, Conduit.QAD.Types.Date

    field :sad_site, :string

    field :sad_eu_nbr, :string

    field :sad_visits, :decimal

    field :sad_ca_nbr, :string

    field :sad_pvm_route, :string

    field :sad_pvm_bom, :string

    field :sad_amt_type, :string

    field :sad_pct_type, :string

    field :sad_priority, :integer

    field :sad__qadc05, :string

    field :sad__qadc06, :string

    field :sad_so_ship, :string

    field :sad_sod_line, :integer

    field :sad_discount, Conduit.QAD.Types.Bool

    field :sad_area, :string

    field :sad_fix_pr, Conduit.QAD.Types.Bool

    field :sad_es_nbr, :string

    field :sad_tax_env, :string

    field :sad_tax_usage, :string

    field :sad_pvm_bill, Conduit.QAD.Types.Bool

    field :sad_pvm_only, Conduit.QAD.Types.Bool

    field :sad_so_shipln, :integer

    field :sad_crt_int, :decimal

    field :sad_pricing_dt, Conduit.QAD.Types.Date

    field :sad_total_bld, :decimal

    field :sad__qadc01, :string

    field :sad__qadc02, :string

    field :sad__qadc03, :string

    field :sad__qadc04, :string

    field :sad__qadt01, Conduit.QAD.Types.Date

    field :sad__qadt02, Conduit.QAD.Types.Date

    field :sad__qadt03, Conduit.QAD.Types.Date

    field :sad__qadd01, :decimal

    field :sad__qadd02, :decimal

    field :sad__qadd03, :decimal

    field :sad_prlist_fnd, Conduit.QAD.Types.Bool

    field :sad__qadl02, Conduit.QAD.Types.Bool

    field :sad__qadl03, Conduit.QAD.Types.Bool

    field :sad_mrp, Conduit.QAD.Types.Bool

    field :sad_mod_userid, :string

    field :sad_mod_date, Conduit.QAD.Types.Date

    field :sad_slspsn, {:array, :string}

    field :sad_comm_pct, {:array, :decimal}

    field :sad__qadl01, Conduit.QAD.Types.Bool

    field :sad_sub, :string

    field :sad_dsc_sub, :string

    field :sad_dsc_project, :string

    field :sad_accrued, Conduit.QAD.Types.Bool

    field :sad_line_type, :string

    field :sad_ui_line, :integer

    field :sad_parent_line, :integer

    field :sad_cust, :string

    field :sad_bill_to, :string

    field :sad_blanket_eu, Conduit.QAD.Types.Bool

    field :sad_so_nbr, :string

    field :sad_autorenew, Conduit.QAD.Types.Bool

    field :sad_po, :string

    field :sad_curr, :string

    field :sad_exru_seq, :integer

    field :sad_ex_rate, :decimal

    field :sad_ex_rate2, :decimal

    field :sad_ex_ratetype, :string

    field :sad_fix_rate, Conduit.QAD.Types.Bool

    field :sad_released, Conduit.QAD.Types.Bool

    field :sad_renewed_to, :string

    field :sad_domain, :string

    field :oid_sad_det, :decimal, primary_key: true

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
