defmodule Elixir.Conduit.QAD.Table.Pjs_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pjs_mstr" do
    field :pjs_nbr, :string

    field :pjs_sub_nbr, :integer

    field :pjs_line, :integer

    field :pjs_line_disp, :string

    field :pjs_line_par, :integer

    field :pjs_line_seq, :integer

    field :pjs_line_sort, :string

    field :pjs_amt_inv, :decimal

    field :pjs_budget_type, :integer

    field :pjs_ca_int_type, :string

    field :pjs_cmtindx, :integer

    field :pjs_completed, Conduit.QAD.Types.Bool

    field :pjs_cost, :decimal

    field :pjs_cost_actual, :decimal

    field :pjs_cost_iss, :decimal

    field :pjs_cost_wip, :decimal

    field :pjs_desc, :string

    field :pjs_disc_pct, :decimal

    field :pjs_frozen, Conduit.QAD.Types.Bool

    field :pjs_fsc_code, :string

    field :pjs_detail_on_inv, Conduit.QAD.Types.Bool

    field :pjs_price_on_inv, Conduit.QAD.Types.Bool

    field :pjs_inv_lvl, Conduit.QAD.Types.Bool

    field :pjs_inv_group, :string

    field :pjs_link_ok, Conduit.QAD.Types.Bool

    field :pjs_list_pr, :decimal

    field :pjs_part, :string

    field :pjs_povar_amt, :decimal

    field :pjs_price, :decimal

    field :pjs_prod_line, :string

    field :pjs_qty_actual, :decimal

    field :pjs_qty_budget, :decimal

    field :pjs_qty_inv, :decimal

    field :pjs_qty_iss, :decimal

    field :pjs_qty_oh, :decimal

    field :pjs_qty_planned, :decimal

    field :pjs_qty_sel_inv, :decimal

    field :pjs_qty_wip, :decimal

    field :pjs_status, :string

    field :pjs_subassy, Conduit.QAD.Types.Bool

    field :pjs_um, :string

    field :pjs_um_conv, :decimal

    field :pjs_variation, Conduit.QAD.Types.Bool

    field :pjs_mod_date, Conduit.QAD.Types.Date

    field :pjs_mod_userid, :string

    field :pjs_user1, :string

    field :pjs_user2, :string

    field :pjs__chr01, :string

    field :pjs__dec01, :decimal

    field :pjs__dec02, :decimal

    field :pjs__log01, Conduit.QAD.Types.Bool

    field :pjs__log02, Conduit.QAD.Types.Bool

    field :pjs__dte01, Conduit.QAD.Types.Date

    field :pjs__dte02, Conduit.QAD.Types.Date

    field :pjs__qadc01, :string

    field :pjs__qadc02, :string

    field :pjs__qadc03, :string

    field :pjs__qadd01, :decimal

    field :pjs__qadd02, :decimal

    field :pjs__qadi01, :integer

    field :pjs__qadi02, :integer

    field :pjs__qadl01, Conduit.QAD.Types.Bool

    field :pjs__qadl02, Conduit.QAD.Types.Bool

    field :pjs__qadt01, Conduit.QAD.Types.Date

    field :pjs__qadt02, Conduit.QAD.Types.Date

    field :pjs_domain, :string

    field :oid_pjs_mstr, :decimal, primary_key: true

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
