defmodule Elixir.Conduit.QAD.Table.Pjsh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pjsh_hist" do
    field :pjsh_trnbr, :integer

    field :pjsh_nbr, :string

    field :pjsh_pjs_line, :integer

    field :pjsh_tr_date, Conduit.QAD.Types.Date

    field :pjsh_tr_time, :integer

    field :pjsh_tr_type, :string

    field :pjsh_tr_ind, :string

    field :pjsh_tr_qty, :decimal

    field :pjsh_tr_cost, :decimal

    field :pjsh_amt_inv, :decimal

    field :pjsh_amt_inv_chg, :decimal

    field :pjsh_cost_actual, :decimal

    field :pjsh_cost_act_chg, :decimal

    field :pjsh_cost_iss, :decimal

    field :pjsh_cost_iss_chg, :decimal

    field :pjsh_cost_planned, :decimal

    field :pjsh_cost_pln_chg, :decimal

    field :pjsh_cost_wip, :decimal

    field :pjsh_cost_wip_chg, :decimal

    field :pjsh_qty_actual, :decimal

    field :pjsh_qty_act_chg, :decimal

    field :pjsh_qty_budget, :decimal

    field :pjsh_qty_bg_chg, :decimal

    field :pjsh_qty_inv, :decimal

    field :pjsh_qty_inv_chg, :decimal

    field :pjsh_qty_iss, :decimal

    field :pjsh_qty_iss_chg, :decimal

    field :pjsh_qty_oh, :decimal

    field :pjsh_qty_oh_chg, :decimal

    field :pjsh_qty_planned, :decimal

    field :pjsh_qty_pln_chg, :decimal

    field :pjsh_qty_sel_inv, :decimal

    field :pjsh_qty_sel_chg, :decimal

    field :pjsh_qty_wip, :decimal

    field :pjsh_qty_wip_chg, :decimal

    field :pjsh_povar_amt, :decimal

    field :pjsh_povar_chg, :decimal

    field :pjsh_old_status, :string

    field :pjsh_status, :string

    field :pjsh_rel_nbr, :string

    field :pjsh_userid, :string

    field :pjsh_mod_date, Conduit.QAD.Types.Date

    field :pjsh_mod_userid, :string

    field :pjsh_user1, :string

    field :pjsh_user2, :string

    field :pjsh__qadc01, :string

    field :pjsh__qadd01, :decimal

    field :pjsh__qadi01, :integer

    field :pjsh__qadl01, Conduit.QAD.Types.Bool

    field :pjsh__qadt01, Conduit.QAD.Types.Date

    field :pjsh_domain, :string

    field :oid_pjsh_hist, :decimal, primary_key: true

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
