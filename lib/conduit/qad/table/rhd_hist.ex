defmodule Elixir.Conduit.QAD.Table.Rhd_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rhd_hist" do
    field :rhd_nbr, :string

    field :rhd_part, :string

    field :rhd_line, :integer

    field :rhd_qty_ord, :decimal

    field :rhd_trans, :string

    field :rhd_qty_acp, :decimal

    field :rhd_user1, :string

    field :rhd_status, :string

    field :rhd_serial, :string

    field :rhd_price, :decimal

    field :rhd_user2, :string

    field :rhd__chr01, :string

    field :rhd_prodline, :string

    field :rhd__chr02, :string

    field :rhd__chr03, :string

    field :rhd__chr04, :string

    field :rhd__chr05, :string

    field :rhd__chr06, :string

    field :rhd__chr07, :string

    field :rhd__chr08, :string

    field :rhd__chr09, :string

    field :rhd__chr10, :string

    field :rhd__dte01, Conduit.QAD.Types.Date

    field :rhd__dte02, Conduit.QAD.Types.Date

    field :rhd__log01, Conduit.QAD.Types.Bool

    field :rhd__dec02, :decimal

    field :rhd__dec01, :decimal

    field :rhd_rev, :string

    field :rhd_prefix, :string

    field :rhd_loc, :string

    field :rhd_site, :string

    field :rhd_rma_line, :integer

    field :rhd_rma_nbr, :string

    field :rhd_cpl_date, Conduit.QAD.Types.Date

    field :rhd_exp_date, Conduit.QAD.Types.Date

    field :rhd_ref, :integer

    field :rhd_cvr_pct, :decimal

    field :rhd_rma_rtrn, Conduit.QAD.Types.Bool

    field :rhd_link, :integer

    field :rhd_type, :string

    field :rhd_fault_cd, :string

    field :rhd_cust, :string

    field :rhd_ship, :string

    field :rhd_histype, :string

    field :rhd_chg_type, :string

    field :rhd_sa_nbr, :string

    field :rhd_covered, :decimal

    field :rhd_sv_code, :string

    field :rhd_ins_date, Conduit.QAD.Types.Date

    field :rhd_par_date, Conduit.QAD.Types.Date

    field :rhd_par_part, :string

    field :rhd_process, :string

    field :rhd_par_ser, :string

    field :rhd_trnbr, :integer

    field :rhd_enduser, :string

    field :rhd_eng_area, :string

    field :rhd_eng_code, :string

    field :rhd_eu_area, :string

    field :rhd_file_type, :string

    field :rhd_desc, :string

    field :rhd_cmtindx, :integer

    field :rhd_restock, :decimal

    field :rhd_loaner, Conduit.QAD.Types.Bool

    field :rhd_ser_lon, :string

    field :rhd_done, Conduit.QAD.Types.Bool

    field :rhd_iss, Conduit.QAD.Types.Bool

    field :rhd_edit_isb, Conduit.QAD.Types.Bool

    field :rhd_um, :string

    field :rhd_um_conv, :decimal

    field :rhd_customs, :decimal

    field :rhd_qty_rel, :decimal

    field :rhd_end, :string

    field :rhd_qty_non, :decimal

    field :rhd_start, :string

    field :rhd_op_tran, :string

    field :rhd__qadc01, :string

    field :rhd__qadc02, :string

    field :rhd__qadc03, :string

    field :rhd__qadd01, Conduit.QAD.Types.Date

    field :rhd__qadd02, Conduit.QAD.Types.Date

    field :rhd__qadd03, Conduit.QAD.Types.Date

    field :rhd__qadde01, :decimal

    field :rhd__qadde02, :decimal

    field :rhd__qadi01, :integer

    field :rhd__qadi02, :integer

    field :rhd__qadl01, Conduit.QAD.Types.Bool

    field :rhd__qadl02, Conduit.QAD.Types.Bool

    field :rhd__qadl03, Conduit.QAD.Types.Bool

    field :rhd__qadi03, :integer

    field :rhd__qadde03, :decimal

    field :rhd__qadd04, Conduit.QAD.Types.Date

    field :rhd__qadd05, Conduit.QAD.Types.Date

    field :rhd_mod_userid, :string

    field :rhd_mod_date, Conduit.QAD.Types.Date

    field :rhd_domain, :string

    field :oid_rhd_hist, :decimal, primary_key: true

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
