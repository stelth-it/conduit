defmodule Elixir.Conduit.QAD.Table.Wod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_wod_det" do
    field :wod_nbr, :string

    field :wod_lot, :string

    field :wod_iss_date, Conduit.QAD.Types.Date

    field :wod_part, :string

    field :wod_qty_req, :decimal

    field :wod_qty_all, :decimal

    field :wod_qty_pick, :decimal

    field :wod_qty_iss, :decimal

    field :wod_tot_std, :decimal

    field :wod_deliver, :string

    field :wod_qty_chg, :decimal

    field :wod_bo_chg, :decimal

    field :wod_loc, :string

    field :wod_serial, :string

    field :wod_cmtindx, :integer

    field :wod_user1, :string

    field :wod_user2, :string

    field :wod_op, :integer

    field :wod_critical, Conduit.QAD.Types.Bool

    field :wod_site, :string

    field :wod__chr01, :string

    field :wod__chr02, :string

    field :wod__chr03, :string

    field :wod__chr04, :string

    field :wod__chr05, :string

    field :wod__dte01, Conduit.QAD.Types.Date

    field :wod__dte02, Conduit.QAD.Types.Date

    field :wod__dec01, :decimal

    field :wod__dec02, :decimal

    field :wod__log01, Conduit.QAD.Types.Bool

    field :wod_bom_qty, :decimal

    field :wod_mtl_totx, :decimal

    field :wod_mvuse_post, :decimal

    field :wod_bom_amt, :decimal

    field :wod_mvrte_post, :decimal

    field :wod_mvrte_rval, :decimal

    field :wod_mvuse_rval, :decimal

    field :wod_mvrte_accr, :decimal

    field :wod_mvuse_accr, :decimal

    field :wod_ca_int_type, :string

    field :wod_covered_amt, :decimal

    field :wod_eng_code, :string

    field :wod_fcg_code, :string

    field :wod_fcg_index, :integer

    field :wod_fis_column, :integer

    field :wod_fis_sort, :string

    field :wod_fsc_code, :string

    field :wod_fsm_type, :string

    field :wod_list_pr, :decimal

    field :wod_price, :decimal

    field :wod_prod_line, :string

    field :wod_qty_posted, :decimal

    field :wod_qty_ret, :decimal

    field :wod_status, :string

    field :wod_line_price, :decimal

    field :wod_covered_post, :decimal

    field :wod_sv_code, :string

    field :wod_project, :string

    field :wod_ret_iss, :decimal

    field :wod_exg_price, :decimal

    field :wod_ret_site, :string

    field :wod_ret_loc, :string

    field :wod_std_cost, :decimal

    field :wod_itm_line, :integer

    field :wod_sod_line, :integer

    field :wod_sod_nbr, :string

    field :wod_seo_load, Conduit.QAD.Types.Bool

    field :wod_from_loc, :string

    field :wod_from_site, :string

    field :wod_ref, :string

    field :wod_ret_serial, :string

    field :wod__qadc01, :string

    field :wod__qadc02, :string

    field :wod__qadc03, :string

    field :wod__qadt01, Conduit.QAD.Types.Date

    field :wod__qadt02, Conduit.QAD.Types.Date

    field :wod__qade01, :decimal

    field :wod__qade02, :decimal

    field :wod__qadl01, Conduit.QAD.Types.Bool

    field :wod__qadl02, Conduit.QAD.Types.Bool

    field :wod_isb_ref, :integer

    field :wod_ret_ref, :string

    field :wod_yield_pct, :decimal

    field :wod_domain, :string

    field :oid_wod_det, :decimal, primary_key: true

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
