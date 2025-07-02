defmodule Elixir.Conduit.QAD.Table.Knbdd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbdd_mstr" do
    field :knbdd_document_type, :string

    field :knbdd_document_name, :string

    field :knbdd_label_type, :string

    field :knbdd_supplier, Conduit.QAD.Types.Bool

    field :knbdd_supplier_desc, Conduit.QAD.Types.Bool

    field :knbdd_po_nbr, Conduit.QAD.Types.Bool

    field :knbdd_po_line, Conduit.QAD.Types.Bool

    field :knbdd_process_site, Conduit.QAD.Types.Bool

    field :knbdd_prcs_site_desc, Conduit.QAD.Types.Bool

    field :knbdd_process_id, Conduit.QAD.Types.Bool

    field :knbdd_process_desc, Conduit.QAD.Types.Bool

    field :knbdd_inv_site, Conduit.QAD.Types.Bool

    field :knbdd_inv_site_desc, Conduit.QAD.Types.Bool

    field :knbdd_source_sm_id, Conduit.QAD.Types.Bool

    field :knbdd_kanban_id, Conduit.QAD.Types.Bool

    field :knbdd_part, Conduit.QAD.Types.Bool

    field :knbdd_pt_desc1, Conduit.QAD.Types.Bool

    field :knbdd_pt_desc2, Conduit.QAD.Types.Bool

    field :knbdd_pt_rev, Conduit.QAD.Types.Bool

    field :knbdd_pt_um, Conduit.QAD.Types.Bool

    field :knbdd_routing, Conduit.QAD.Types.Bool

    field :knbdd_bom_code, Conduit.QAD.Types.Bool

    field :knbdd_kanban_quantity, Conduit.QAD.Types.Bool

    field :knbdd_cont_size, Conduit.QAD.Types.Bool

    field :knbdd_cont_type, Conduit.QAD.Types.Bool

    field :knbdd_second_card_id, Conduit.QAD.Types.Bool

    field :knbdd_sm_inv_location, Conduit.QAD.Types.Bool

    field :knbdd_del_loc, Conduit.QAD.Types.Bool

    field :knbdd_pou_loc, Conduit.QAD.Types.Bool

    field :knbdd_card_type, Conduit.QAD.Types.Bool

    field :knbdd_card_type_desc, Conduit.QAD.Types.Bool

    field :knbdd_accum_type, Conduit.QAD.Types.Bool

    field :knbdd_accum_type_desc, Conduit.QAD.Types.Bool

    field :knbdd_cycles_allowed, Conduit.QAD.Types.Bool

    field :knbdd_active_start, Conduit.QAD.Types.Bool

    field :knbdd_active_end, Conduit.QAD.Types.Bool

    field :knbdd_print_date, Conduit.QAD.Types.Bool

    field :knbdd_print_time, Conduit.QAD.Types.Bool

    field :knbdd_card_cmmt_page, {:array, :integer}

    field :knbdd_document_size, :string

    field :knbdd_card_stock, :string

    field :knbdd_document_color, :string

    field :knbdd_text_font, :string

    field :knbdd_font_style, :string

    field :knbdd_font_size, :string

    field :knbdd_text_color, :string

    field :knbdd_sm_site, Conduit.QAD.Types.Bool

    field :knbdd_sm_site_desc, Conduit.QAD.Types.Bool

    field :knbdd_document_desc, :string

    field :knbdd_dest_sm_id, Conduit.QAD.Types.Bool

    field :knbdd_source_sm_desc, Conduit.QAD.Types.Bool

    field :knbdd_dest_sm_desc, Conduit.QAD.Types.Bool

    field :knbdd_mod_date, Conduit.QAD.Types.Date

    field :knbdd_mod_userid, :string

    field :knbdd_step, Conduit.QAD.Types.Bool

    field :knbdd_user1, :string

    field :knbdd_user2, :string

    field :knbdd__qadc01, :string

    field :knbdd__qadc02, :string

    field :knbdd_user3, :string

    field :knbdd__qadc03, :string

    field :knbdd__qadc04, :string

    field :knbdd__qadl01, Conduit.QAD.Types.Bool

    field :knbdd__qadl02, Conduit.QAD.Types.Bool

    field :knbdd__qadd01, :decimal

    field :knbdd__qadl03, Conduit.QAD.Types.Bool

    field :knbdd__qadi01, :integer

    field :knbdd__qadt01, Conduit.QAD.Types.Date

    field :knbdd_domain, :string

    field :oid_knbdd_mstr, :decimal, primary_key: true

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
