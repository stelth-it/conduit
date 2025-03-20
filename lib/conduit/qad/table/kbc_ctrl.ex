defmodule Elixir.Conduit.QAD.Table.Kbc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_kbc_ctrl" do
    field :kbc_pattern, :string

    field :kbc_mod_userid, :string

    field :kbc_mod_date, Conduit.QAD.Types.Date

    field :kbc_user1, :string

    field :kbc_user2, :string

    field :kbc__qadc01, :string

    field :kbc__qadi02, :integer

    field :kbc_display_pause, :integer

    field :kbc_eff_date_entry, Conduit.QAD.Types.Bool

    field :kbc_id_barcode, Conduit.QAD.Types.Bool

    field :kbc_item_barcode, Conduit.QAD.Types.Bool

    field :kbc_print_quantity, Conduit.QAD.Types.Bool

    field :kbc_max_cycle_time, :integer

    field :kbc_min_cycle_time, :integer

    field :kbc_min_cycle_check, :string

    field :kbc_controlled_entry, :string

    field :kbc_userd01, :decimal

    field :kbc_useri01, :integer

    field :kbc_userl01, Conduit.QAD.Types.Bool

    field :kbc_usert01, Conduit.QAD.Types.Date

    field :kbc__qadc02, :string

    field :kbc__qadc03, :string

    field :kbc__qadd01, :decimal

    field :kbc__qadi01, :integer

    field :kbc__qadl01, Conduit.QAD.Types.Bool

    field :kbc__qadt01, Conduit.QAD.Types.Date

    field :kbc_template, :string

    field :kbc_time_adj, {:array, :string}

    field :kbc_print_consume_ref, Conduit.QAD.Types.Bool

    field :kbc_tolerance_pct, :decimal

    field :kbc_time_fence, :integer

    field :kbc_export_directory, :string

    field :kbc_import_directory, :string

    field :kbc_fifo_entry, Conduit.QAD.Types.Bool

    field :kbc_domain, :string

    field :kbc_min_epe_interval, :decimal

    field :kbc_load_limit, :decimal

    field :kbc_lead_time_method, :integer

    field :kbc_card_reporting, :integer

    field :kbc_fractional_kanban, :decimal

    field :kbc_cost_set, :string

    field :kbc_ss_template, :string

    field :oid_kbc_ctrl, :decimal, primary_key: true

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
