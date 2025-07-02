defmodule Elixir.Conduit.QAD.Table.Sadh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sadh_hist" do
    field :sadh__qadc05, :string

    field :sadh_amt_type, :string

    field :sadh_area, :string

    field :sadh_cancel, Conduit.QAD.Types.Date

    field :sadh_ca_nbr, :string

    field :sadh__qadc06, :string

    field :sadh_cmtindx, :integer

    field :sadh_comment, {:array, :string}

    field :sadh_comm_pct, {:array, :decimal}

    field :sadh_crt_int, :decimal

    field :sadh_custpart, :string

    field :sadh_cycle, :string

    field :sadh__qadc07, :string

    field :sadh__qadc08, :string

    field :sadh_desc, :string

    field :sadh_discount, Conduit.QAD.Types.Bool

    field :sadh_disc_pct, :decimal

    field :sadh__qadc09, :string

    field :sadh__qadc10, :string

    field :sadh_end_date, Conduit.QAD.Types.Date

    field :sadh_es_nbr, :string

    field :sadh_eu_nbr, :string

    field :sadh_expire, Conduit.QAD.Types.Date

    field :sadh_fix_pr, Conduit.QAD.Types.Bool

    field :sadh_for, :string

    field :sadh_fst_list, Conduit.QAD.Types.Bool

    field :sadh_lastbill, Conduit.QAD.Types.Date

    field :sadh_line, :integer

    field :sadh_list_pr, :decimal

    field :sadh_lstcover, Conduit.QAD.Types.Date

    field :sadh_lst_bill, Conduit.QAD.Types.Date

    field :sadh_nbr, :string

    field :sadh_nxt_bill, Conduit.QAD.Types.Date

    field :sadh_part, :string

    field :sadh_pct_type, :string

    field :sadh_per_date, Conduit.QAD.Types.Date

    field :sadh_prefix, :string

    field :sadh_price, :decimal

    field :sadh_priority, :integer

    field :sadh_prodline, :string

    field :sadh_project, :string

    field :sadh_pr_list, :string

    field :sadh_pst, Conduit.QAD.Types.Bool

    field :sadh_pvm_bill, Conduit.QAD.Types.Bool

    field :sadh_pvm_bom, :string

    field :sadh_pvm_only, Conduit.QAD.Types.Bool

    field :sadh_pvm_route, :string

    field :sadh_qty_bld, :decimal

    field :sadh_qty_chg, :decimal

    field :sadh_qty_item, :decimal

    field :sadh_qty_litm, :decimal

    field :sadh_qty_lst, :decimal

    field :sadh_qty_per, :decimal

    field :sadh_ref, :integer

    field :sadh_serial, :string

    field :sadh_site, :string

    field :sadh_slspsn, {:array, :string}

    field :sadh_so_line, :integer

    field :sadh_so_ship, :string

    field :sadh_so_shipln, :integer

    field :sadh_status, :string

    field :sadh_std_cost, :decimal

    field :sadh_st_cover, Conduit.QAD.Types.Date

    field :sadh_st_date, Conduit.QAD.Types.Date

    field :sadh_taxable, Conduit.QAD.Types.Bool

    field :sadh_taxc, :string

    field :sadh_tax_env, :string

    field :sadh_tax_in, Conduit.QAD.Types.Bool

    field :sadh_tax_usage, :string

    field :sadh_total_bld, :decimal

    field :sadh_total_price, :decimal

    field :sadh_trnbr, :integer

    field :sadh_type, :string

    field :sadh_um, :string

    field :sadh_um_conv, :decimal

    field :sadh_user1, :string

    field :sadh_user2, :string

    field :sadh_visits, :decimal

    field :sadh__chr01, :string

    field :sadh__chr02, :string

    field :sadh__chr03, :string

    field :sadh__chr04, :string

    field :sadh__chr05, :string

    field :sadh__chr06, :string

    field :sadh__chr07, :string

    field :sadh__chr08, :string

    field :sadh__chr09, :string

    field :sadh__chr10, :string

    field :sadh__dec01, :decimal

    field :sadh__dec02, :decimal

    field :sadh__dec03, :decimal

    field :sadh__dte01, Conduit.QAD.Types.Date

    field :sadh__dte02, Conduit.QAD.Types.Date

    field :sadh__dte03, Conduit.QAD.Types.Date

    field :sadh__log01, Conduit.QAD.Types.Bool

    field :sadh__log02, Conduit.QAD.Types.Bool

    field :sadh__log03, Conduit.QAD.Types.Bool

    field :sadh__qadc01, :string

    field :sadh__qadc02, :string

    field :sadh__qadc03, :string

    field :sadh__qadc04, :string

    field :sadh__qadt01, Conduit.QAD.Types.Date

    field :sadh__qadt02, Conduit.QAD.Types.Date

    field :sadh__qadt03, Conduit.QAD.Types.Date

    field :sadh__qadd01, :decimal

    field :sadh__qadd02, :decimal

    field :sadh__qadd03, :decimal

    field :sadh_prlist_fnd, Conduit.QAD.Types.Bool

    field :sadh__qadl02, Conduit.QAD.Types.Bool

    field :sadh__qadl03, Conduit.QAD.Types.Bool

    field :sadh_mrp, Conduit.QAD.Types.Bool

    field :sadh_mod_userid, :string

    field :sadh_mod_date, Conduit.QAD.Types.Date

    field :sadh_pricing_dt, Conduit.QAD.Types.Date

    field :sadh__qadl01, Conduit.QAD.Types.Bool

    field :sadh_domain, :string

    field :oid_sadh_hist, :decimal, primary_key: true

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
