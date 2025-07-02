defmodule Elixir.Conduit.QAD.Table.Kbtr_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_kbtr_hist" do
    field :kbtr_trans_nbr, :integer

    field :kbtr_trans_date, Conduit.QAD.Types.Date

    field :kbtr_trans_time, :integer

    field :kbtr_eff_date, Conduit.QAD.Types.Date

    field :kbtr_id, :integer

    field :kbtr_part, :string

    field :kbtr_supp_source, :string

    field :kbtr_supp_ref, :string

    field :kbtr_cons_source, :string

    field :kbtr_cons_ref, :string

    field :kbtr_mode, :string

    field :kbtr_trans_type, :string

    field :kbtr_trans_qty, :decimal

    field :kbtr_kanban_quantity, :decimal

    field :kbtr_pattern, :string

    field :kbtr_demand_hr, :decimal

    field :kbtr_rep_time, :decimal

    field :kbtr_cont_size, :decimal

    field :kbtr_cont_type, :string

    field :kbtr_loop, Conduit.QAD.Types.Bool

    field :kbtr_calc_mode, Conduit.QAD.Types.Bool

    field :kbtr_cards, :integer

    field :kbtr_card_type, :string

    field :kbtr_safety_stock, :decimal

    field :kbtr_var_factor, :decimal

    field :kbtr_card_nbr, :integer

    field :kbtr_calc_date, Conduit.QAD.Types.Date

    field :kbtr_print_date, Conduit.QAD.Types.Date

    field :kbtr_print_time, :integer

    field :kbtr_backflush, Conduit.QAD.Types.Bool

    field :kbtr_vend, :string

    field :kbtr_po_nbr, :string

    field :kbtr_type, :string

    field :kbtr_batch_size, :decimal

    field :kbtr_production_line, :string

    field :kbtr_impact_inventory, Conduit.QAD.Types.Bool

    field :kbtr_max_cycle_time, :integer

    field :kbtr_min_cycle_check, :string

    field :kbtr_min_cycle_time, :integer

    field :kbtr_disp_list_date, Conduit.QAD.Types.Date

    field :kbtr_mod_userid, :string

    field :kbtr_mod_date, Conduit.QAD.Types.Date

    field :kbtr_user1, :string

    field :kbtr_user2, :string

    field :kbtr_userd01, :decimal

    field :kbtr_useri01, :integer

    field :kbtr_userl01, Conduit.QAD.Types.Bool

    field :kbtr_usert01, Conduit.QAD.Types.Date

    field :kbtr__qadc01, :string

    field :kbtr__qadc02, :string

    field :kbtr__qadc03, :string

    field :kbtr__qadd01, :decimal

    field :kbtr__qadi01, :integer

    field :kbtr__qadl01, Conduit.QAD.Types.Bool

    field :kbtr__qadt01, Conduit.QAD.Types.Date

    field :kbtr_lot_size, :decimal

    field :kbtr_pou_site, :string

    field :kbtr_pou_ref, :string

    field :kbtr_transaction_event, :string

    field :kbtr_daily_demand, :decimal

    field :kbtr_lead_time, :decimal

    field :kbtr_number_of_cards, :integer

    field :kbtr_type_user_ref, :string

    field :kbtr_order_qty, :decimal

    field :kbtr_step, :integer

    field :kbtr_source_type, :string

    field :kbtr_source_ref1, :string

    field :kbtr_source_ref2, :string

    field :kbtr_source_ref3, :string

    field :kbtr_source_ref4, :string

    field :kbtr_source_ref5, :string

    field :kbtr_supermarket_id, :string

    field :kbtr_supermarket_site, :string

    field :kbtr_loop_type, :string

    field :kbtr_source_app, :string

    field :kbtr_curr_process_id, :string

    field :kbtr_domain, :string

    field :oid_kbtr_hist, :decimal, primary_key: true

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
