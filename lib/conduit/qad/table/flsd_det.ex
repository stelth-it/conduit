defmodule Elixir.Conduit.QAD.Table.Flsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_flsd_det" do
    field :flsd_site, :string

    field :flsd_production_line, :string

    field :flsd_due_date, Conduit.QAD.Types.Date

    field :flsd_seq, :integer

    field :flsd_due_time, :integer

    field :flsd_part, :string

    field :flsd_flow_wo_nbr, :string

    field :flsd_flow_wo_lot, :string

    field :flsd_wo_nbr, :string

    field :flsd_wo_lot, :string

    field :flsd_so_nbr, :string

    field :flsd_sod_line, :integer

    field :flsd_note, :string

    field :flsd_posted_to_rep, Conduit.QAD.Types.Bool

    field :flsd_closed, Conduit.QAD.Types.Bool

    field :flsd_qty_ord, :decimal

    field :flsd_qty_comp, :decimal

    field :flsd_cmtindx, :integer

    field :flsd_mod_userid, :string

    field :flsd_mod_date, Conduit.QAD.Types.Date

    field :flsd_user1, :string

    field :flsd_user2, :string

    field :flsd_userc03, :string

    field :flsd_userd01, :decimal

    field :flsd_useri01, :integer

    field :flsd_userl01, Conduit.QAD.Types.Bool

    field :flsd_usert01, Conduit.QAD.Types.Date

    field :flsd__qadc01, :string

    field :flsd__qadc02, :string

    field :flsd__qadc03, :string

    field :flsd__qadc04, :string

    field :flsd__qadc05, :string

    field :flsd__qadc06, :string

    field :flsd__qadd01, :decimal

    field :flsd__qadd02, :decimal

    field :flsd__qadi01, :integer

    field :flsd__qadi02, :integer

    field :flsd__qadl01, Conduit.QAD.Types.Bool

    field :flsd__qadl02, Conduit.QAD.Types.Bool

    field :flsd__qadt01, Conduit.QAD.Types.Date

    field :flsd__qadt02, Conduit.QAD.Types.Date

    field :flsd_shift, :integer

    field :flsd_knpd_keyid, :decimal

    field :flsd_domain, :string

    field :oid_flsd_det, :decimal, primary_key: true

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
