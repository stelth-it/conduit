defmodule Elixir.Conduit.QAD.Table.Knbd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbd_det" do
    field :knbd_id, :integer

    field :knbd_keyid, :decimal

    field :knbd_knbl_keyid, :decimal

    field :knbd_active, Conduit.QAD.Types.Bool

    field :knbd_kanban_quantity, :decimal

    field :knbd_status, :string

    field :knbd_source_type, :string

    field :knbd_ref1, :string

    field :knbd_ref2, :string

    field :knbd_ref3, :string

    field :knbd_ref4, :string

    field :knbd_ref5, :string

    field :knbd_authorize_date, Conduit.QAD.Types.Date

    field :knbd_authorize_time, :decimal

    field :knbd_print_date, Conduit.QAD.Types.Date

    field :knbd_print_time, :decimal

    field :knbd_routing, :string

    field :knbd_bom_code, :string

    field :knbd_print_dispatch, Conduit.QAD.Types.Bool

    field :knbd_pou_site, :string

    field :knbd_pou_ref, :string

    field :knbd_active_code, :string

    field :knbd_cycles_allowed, :integer

    field :knbd_cycles_used, :integer

    field :knbd_active_start_date, Conduit.QAD.Types.Date

    field :knbd_active_end_date, Conduit.QAD.Types.Date

    field :knbd_next_process_id, :string

    field :knbd_mod_date, Conduit.QAD.Types.Date

    field :knbd_mod_userid, :string

    field :knbd_user1, :string

    field :knbd_user2, :string

    field :knbd__qadc01, :string

    field :knbd__qadc02, :string

    field :knbd_domain, :string

    field :oid_knbd_det, :decimal, primary_key: true

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
