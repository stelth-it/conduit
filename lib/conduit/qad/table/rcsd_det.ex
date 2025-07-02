defmodule Elixir.Conduit.QAD.Table.Rcsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rcsd_det" do
    field :rcsd_shipfrom, :string

    field :rcsd_shipto, :string

    field :rcsd_rlse_id, :string

    field :rcsd_cust_job, :string

    field :rcsd_cust_seq, :string

    field :rcsd_cust_part, :string

    field :rcsd_part, :string

    field :rcsd_date, Conduit.QAD.Types.Date

    field :rcsd_time, :string

    field :rcsd_discr_qty, :decimal

    field :rcsd_cum_qty, :decimal

    field :rcsd_order, :string

    field :rcsd_line, :integer

    field :rcsd_dock, :string

    field :rcsd_line_feed, :string

    field :rcsd_cust_ref, :string

    field :rcsd_status, :string

    field :rcsd_cust_build_date, Conduit.QAD.Types.Date

    field :rcsd_derived_rlse_id, :string

    field :rcsd_cust_po, :string

    field :rcsd_picked, Conduit.QAD.Types.Bool

    field :rcsd_x_referenced, Conduit.QAD.Types.Bool

    field :rcsd_deleted, Conduit.QAD.Types.Bool

    field :rcsd_mod_userid, :string

    field :rcsd_mod_date, Conduit.QAD.Types.Date

    field :rcsd_mod_pgm, :string

    field :rcsd_user1, :string

    field :rcsd_user2, :string

    field :rcsd__qadc01, :string

    field :rcsd__qadc02, :string

    field :rcsd__qadd01, :decimal

    field :rcsd__qadd02, :decimal

    field :rcsd__qadi01, :integer

    field :rcsd__qadi02, :integer

    field :rcsd__qadl01, Conduit.QAD.Types.Bool

    field :rcsd__qadl02, Conduit.QAD.Types.Bool

    field :rcsd__qadt01, Conduit.QAD.Types.Date

    field :rcsd__qadt02, Conduit.QAD.Types.Date

    field :rcsd_modelyr, :string

    field :rcsd_custref, :string

    field :rcsd_domain, :string

    field :oid_rcsd_det, :decimal, primary_key: true

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
