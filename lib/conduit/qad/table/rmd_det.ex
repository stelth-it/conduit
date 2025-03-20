defmodule Elixir.Conduit.QAD.Table.Rmd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rmd_det" do
    field :rmd_nbr, :string

    field :rmd_line, :integer

    field :rmd_part, :string

    field :rmd_qty_ord, :decimal

    field :rmd_qty_acp, :decimal

    field :rmd__qadc04, :string

    field :rmd_price, :decimal

    field :rmd_ser, :string

    field :rmd_desc, :string

    field :rmd_comment, {:array, :string}

    field :rmd_cmtindx, :integer

    field :rmd_status, :string

    field :rmd_user1, :string

    field :rmd_user2, :string

    field :rmd_prodline, :string

    field :rmd__chr01, :string

    field :rmd__chr02, :string

    field :rmd__chr03, :string

    field :rmd__chr04, :string

    field :rmd__chr05, :string

    field :rmd__chr06, :string

    field :rmd__chr07, :string

    field :rmd__chr08, :string

    field :rmd__chr09, :string

    field :rmd__chr10, :string

    field :rmd__dte01, Conduit.QAD.Types.Date

    field :rmd__dte02, Conduit.QAD.Types.Date

    field :rmd__dec01, :decimal

    field :rmd__dec02, :decimal

    field :rmd__log01, Conduit.QAD.Types.Bool

    field :rmd_route, :string

    field :rmd_fault_cd, :string

    field :rmd_ref, :integer

    field :rmd_exp_date, Conduit.QAD.Types.Date

    field :rmd_cpl_date, Conduit.QAD.Types.Date

    field :rmd_rma_nbr, :string

    field :rmd_rma_line, :integer

    field :rmd_prefix, :string

    field :rmd_restock, :decimal

    field :rmd_loaner, Conduit.QAD.Types.Bool

    field :rmd_ser_lon, :string

    field :rmd_done, Conduit.QAD.Types.Bool

    field :rmd_type, :string

    field :rmd_link, :integer

    field :rmd_rma_rtrn, Conduit.QAD.Types.Bool

    field :rmd_cvr_pct, :decimal

    field :rmd_iss, Conduit.QAD.Types.Bool

    field :rmd_site, :string

    field :rmd_loc, :string

    field :rmd_edit_isb, Conduit.QAD.Types.Bool

    field :rmd_rev, :string

    field :rmd_chg_type, :string

    field :rmd_um, :string

    field :rmd_um_conv, :decimal

    field :rmd_sv_code, :string

    field :rmd_eng_code, :string

    field :rmd_customs, :decimal

    field :rmd_qty_rel, :decimal

    field :rmd_sa_nbr, :string

    field :rmd_covered, :decimal

    field :rmd_par_ser, :string

    field :rmd_end, :string

    field :rmd_qty_non, :decimal

    field :rmd_par_part, :string

    field :rmd_par_date, Conduit.QAD.Types.Date

    field :rmd_ins_date, Conduit.QAD.Types.Date

    field :rmd_process, :string

    field :rmd_start, :string

    field :rmd_op_tran, :string

    field :rmd__qadc01, :string

    field :rmd__qadc02, :string

    field :rmd__qadc03, :string

    field :rmd__qadt01, Conduit.QAD.Types.Date

    field :rmd__qadt02, Conduit.QAD.Types.Date

    field :rmd__qadt03, Conduit.QAD.Types.Date

    field :rmd__qadd01, :decimal

    field :rmd__qadd02, :decimal

    field :rmd__qadi01, :integer

    field :rmd__qadi02, :integer

    field :rmd__qadl01, Conduit.QAD.Types.Bool

    field :rmd__qadl02, Conduit.QAD.Types.Bool

    field :rmd__qadl03, Conduit.QAD.Types.Bool

    field :rmd__qadi03, :integer

    field :rmd__qadd03, :decimal

    field :rmd__qadt04, Conduit.QAD.Types.Date

    field :rmd__qadt05, Conduit.QAD.Types.Date

    field :rmd_mod_userid, :string

    field :rmd_mod_date, Conduit.QAD.Types.Date

    field :rmd_domain, :string

    field :oid_rmd_det, :decimal, primary_key: true

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
