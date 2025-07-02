defmodule Elixir.Conduit.QAD.Table.Ieh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ieh_hist" do
    field :ieh_addr, :string

    field :ieh_com_code, :string

    field :ieh_ctry_desdisp, :string

    field :ieh_ctry_origin, :string

    field :ieh_authority, :string

    field :ieh_decl_period, :string

    field :ieh_decl_year, :string

    field :ieh_decl_date, Conduit.QAD.Types.Date

    field :ieh_declarant, :string

    field :ieh_reported, Conduit.QAD.Types.Bool

    field :ieh_effdate, Conduit.QAD.Types.Date

    field :ieh_flow, :string

    field :ieh_inv_cur, :string

    field :ieh_inv_date, Conduit.QAD.Types.Date

    field :ieh_inv_amt_gl, :decimal

    field :ieh_inv_amt_cur, :decimal

    field :ieh_line, :integer

    field :ieh_mode_transp, :string

    field :ieh_nat_trans, :string

    field :ieh_nbr, :string

    field :ieh_net_wt, :decimal

    field :ieh_net_wt_um, :string

    field :ieh_part, :string

    field :ieh_port_arrdisp, :string

    field :ieh_port_transh, :string

    field :ieh_program, :string

    field :ieh_qty, :decimal

    field :ieh_qty_um, :string

    field :ieh_ref, :string

    field :ieh_ref_date, Conduit.QAD.Types.Date

    field :ieh_decl_cur, :string

    field :ieh_decl_inv_amt, :decimal

    field :ieh_decl_statval, :decimal

    field :ieh_site, :string

    field :ieh_stat_proc, :string

    field :ieh_stat_val, :decimal

    field :ieh_suppl_units, :decimal

    field :ieh_suppl_um, :string

    field :ieh_terms_deliv, :string

    field :ieh_trans_id, :integer

    field :ieh_type, :string

    field :ieh_voucher, :string

    field :ieh_userid, :string

    field :ieh_mod_date, Conduit.QAD.Types.Date

    field :ieh_pst_id, :string

    field :ieh_region, :string

    field :ieh_declaration_id, :integer

    field :ieh__chr01, :string

    field :ieh__chr02, :string

    field :ieh__chr03, :string

    field :ieh__chr04, :string

    field :ieh__chr05, :string

    field :ieh__dec01, :decimal

    field :ieh__dec02, :decimal

    field :ieh__dec03, :decimal

    field :ieh__dec04, :decimal

    field :ieh__dec05, :decimal

    field :ieh__dte01, Conduit.QAD.Types.Date

    field :ieh__dte02, Conduit.QAD.Types.Date

    field :ieh__dte03, Conduit.QAD.Types.Date

    field :ieh__dte04, Conduit.QAD.Types.Date

    field :ieh__dte05, Conduit.QAD.Types.Date

    field :ieh_declarant_id, :string

    field :ieh_agent, :string

    field :ieh_agent_id, :string

    field :ieh__qadc04, :string

    field :ieh__qadc05, :string

    field :ieh__qadc06, :string

    field :ieh__qadc07, :string

    field :ieh__qadc08, :string

    field :ieh__qadc09, :string

    field :ieh__qadc10, :string

    field :ieh__qadi01, :integer

    field :ieh__qadd01, :decimal

    field :ieh__qadd02, :decimal

    field :ieh__qadd03, :decimal

    field :ieh__qadd04, :decimal

    field :ieh__qadd05, :decimal

    field :ieh__qadd06, :decimal

    field :ieh__qadl01, Conduit.QAD.Types.Bool

    field :ieh__qadl02, Conduit.QAD.Types.Bool

    field :ieh__qadt01, Conduit.QAD.Types.Date

    field :ieh__qadt02, Conduit.QAD.Types.Date

    field :ieh_user1, :string

    field :ieh_user2, :string

    field :ieh_correction, Conduit.QAD.Types.Bool

    field :ieh_orig_doc, :string

    field :ieh_orig_month, :integer

    field :ieh_orig_year, :integer

    field :ieh_affiliation, :string

    field :ieh_container, Conduit.QAD.Types.Bool

    field :ieh_csa, :integer

    field :ieh_decl_region, :string

    field :ieh_item_spec, :string

    field :ieh_preference, :integer

    field :ieh_req_nbr, :string

    field :ieh_shipvia, :string

    field :ieh_trnbr, :integer

    field :ieh_domain, :string

    field :oid_ieh_hist, :decimal, primary_key: true

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
