defmodule Elixir.Conduit.QAD.Table.Ast_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ast_mstr" do
    field :ast_asset, :string

    field :ast_desc, :string

    field :ast_entity, :string

    field :ast_date, Conduit.QAD.Types.Date

    field :ast_pur_date, Conduit.QAD.Types.Date

    field :ast_serial, :string

    field :ast_inv_nbr, :string

    field :ast_qty, :integer

    field :ast_fa_loc, :string

    field :ast_cust, :string

    field :ast_acct, :string

    field :ast_sub, :string

    field :ast_cc, :string

    field :ast_proj, :string

    field :ast_ac_acct, :string

    field :ast_ac_sub, :string

    field :ast_ac_cc, :string

    field :ast_ac_proj, :string

    field :ast_exp_acct, :string

    field :ast_exp_sub, :string

    field :ast_exp_cc, :string

    field :ast_exp_proj, :string

    field :ast_po_nbr, :string

    field :ast_vend, :string

    field :ast_at_risk, :decimal

    field :ast_warranty, Conduit.QAD.Types.Date

    field :ast_class, :string

    field :ast_retire, :string

    field :ast_rt_price, :decimal

    field :ast_rt_date, Conduit.QAD.Types.Date

    field :ast_rt_reason, :string

    field :ast_report, Conduit.QAD.Types.Bool

    field :ast_sp_ac_acct, :string

    field :ast_sp_ac_sub, :string

    field :ast_sp_ac_cc, :string

    field :ast_sp_ac_proj, :string

    field :ast_ins_nbr, :string

    field :ast_ins_co, :string

    field :ast_ins_date, Conduit.QAD.Types.Date

    field :ast_ins_value, :decimal

    field :ast_udate1, Conduit.QAD.Types.Date

    field :ast_udate2, Conduit.QAD.Types.Date

    field :ast_udate3, Conduit.QAD.Types.Date

    field :ast_udate4, Conduit.QAD.Types.Date

    field :ast_uchar1, :string

    field :ast_uchar2, :string

    field :ast_uchar3, :string

    field :ast_uchar4, :string

    field :ast_uint1, :integer

    field :ast_uint2, :integer

    field :ast_uint3, :integer

    field :ast_uint4, :integer

    field :ast_udec1, :decimal

    field :ast_udec2, :decimal

    field :ast_userid, :string

    field :ast_mod_date, Conduit.QAD.Types.Date

    field :ast_sus_beg, Conduit.QAD.Types.Date

    field :ast_sus_end, Conduit.QAD.Types.Date

    field :ast_sp_exp_acct, :string

    field :ast_sp_exp_sub, :string

    field :ast_sp_exp_cc, :string

    field :ast_sp_exp_proj, :string

    field :ast_prev_method, :string

    field :ast__qad01, Conduit.QAD.Types.Bool

    field :ast__qad02, :string

    field :ast__qad03, :string

    field :ast_user1, :string

    field :ast_user2, :string

    field :oid_ast_mstr, :decimal, primary_key: true

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
