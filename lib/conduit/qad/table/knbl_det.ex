defmodule Elixir.Conduit.QAD.Table.Knbl_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_knbl_det" do
    field :knbl_keyid, :decimal

    field :knbl_knb_keyid, :decimal

    field :knbl_card_type, :string

    field :knbl_calc_mode, Conduit.QAD.Types.Bool

    field :knbl_kanban_quantity, :decimal

    field :knbl_order_qty, :decimal

    field :knbl_number_of_cards, :integer

    field :knbl_cont_size, :decimal

    field :knbl_cont_type, :string

    field :knbl_type_user_ref, :string

    field :knbl_min_cycle_check, :string

    field :knbl_min_cycle_time, :decimal

    field :knbl_max_cycle_time, :decimal

    field :knbl_print_quantity, Conduit.QAD.Types.Bool

    field :knbl_id_barcode, Conduit.QAD.Types.Bool

    field :knbl_item_barcode, Conduit.QAD.Types.Bool

    field :knbl_print_consume_ref, Conduit.QAD.Types.Bool

    field :knbl_card_print_option, :string

    field :knbl_regen_required, Conduit.QAD.Types.Bool

    field :knbl_impact_inventory, Conduit.QAD.Types.Bool

    field :knbl_backflush, Conduit.QAD.Types.Bool

    field :knbl_rep_time, :decimal

    field :knbl_fifo_time, :decimal

    field :knbl_dispatch_list, Conduit.QAD.Types.Bool

    field :knbl_fax_dispatch_list, Conduit.QAD.Types.Bool

    field :knbl_source_fax, :string

    field :knbl_source_fax2, :string

    field :knbl_email_disp_list, Conduit.QAD.Types.Bool

    field :knbl_source_email, :string

    field :knbl_blanket_po, Conduit.QAD.Types.Bool

    field :knbl_accum_type, :string

    field :knbl_interval_time, :decimal

    field :knbl_next_date, Conduit.QAD.Types.Date

    field :knbl_next_time, :decimal

    field :knbl_accum_schedule, :string

    field :knbl_accum_sch_time, :string

    field :knbl_mod_date, Conduit.QAD.Types.Date

    field :knbl_mod_userid, :string

    field :knbl_user1, :string

    field :knbl_user2, :string

    field :knbl__qadc01, :string

    field :knbl__qadc02, :string

    field :knbl_domain, :string

    field :knbl_card_reporting, :integer

    field :knbl_fractional_kanban, :decimal

    field :knbl_cmtindx, :integer

    field :knbl_run_out_option, :integer

    field :oid_knbl_det, :decimal, primary_key: true

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
