defmodule Elixir.Conduit.QAD.Table.Knbcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbcd_det" do
    field :knbcd_dispatch_id, :string

    field :knbcd_part, :string

    field :knbcd_knbd_id, :integer

    field :knbcd_closed, Conduit.QAD.Types.Bool

    field :knbcd_due_date, Conduit.QAD.Types.Date

    field :knbcd_due_time, :integer

    field :knbcd_delivery_date, Conduit.QAD.Types.Date

    field :knbcd_delivery_time, :integer

    field :knbcd_process_edi, Conduit.QAD.Types.Bool

    field :knbcd_ship_date, Conduit.QAD.Types.Date

    field :knbcd_ship_time, :integer

    field :knbcd_fill_date, Conduit.QAD.Types.Date

    field :knbcd_fill_time, :integer

    field :knbcd_kbtr_trans_nbr, :integer

    field :knbcd_source_type, :string

    field :knbcd_ref1, :string

    field :knbcd_ref2, :string

    field :knbcd_ref3, :string

    field :knbcd_ref4, :string

    field :knbcd_ref5, :string

    field :knbcd_po_nbr, :string

    field :knbcd_pod_line, :integer

    field :knbcd_pod_blanket, :string

    field :knbcd_pod_blnkt_ln, :integer

    field :knbcd_mfd_seq, :integer

    field :knbcd_source_fax, :string

    field :knbcd_source_fax2, :string

    field :knbcd_source_email, :string

    field :knbcd_mod_userid, :string

    field :knbcd_mod_date, Conduit.QAD.Types.Date

    field :knbcd_user1, :string

    field :knbcd_user2, :string

    field :knbcd__qadc01, :string

    field :knbcd__qadc02, :string

    field :knbcd__qadc03, :string

    field :knbcd__qadc04, :string

    field :knbcd__qadl01, Conduit.QAD.Types.Bool

    field :knbcd__qadl02, Conduit.QAD.Types.Bool

    field :knbcd_domain, :string

    field :oid_knbcd_det, :decimal, primary_key: true

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
