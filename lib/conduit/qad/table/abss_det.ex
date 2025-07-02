defmodule Elixir.Conduit.QAD.Table.Abss_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_abss_det" do
    field :abss_abs_id, :string

    field :abss_shipfrom, :string

    field :abss_shipto, :string

    field :abss_rlse_id, :string

    field :abss_cust_job, :string

    field :abss_cust_seq, :string

    field :abss_part, :string

    field :abss_qty, :decimal

    field :abss_date, Conduit.QAD.Types.Date

    field :abss_time, :string

    field :abss_cust_ref, :string

    field :abss_ship_id, :string

    field :abss_dock, :string

    field :abss_line_feed, :string

    field :abss_confirmed, Conduit.QAD.Types.Bool

    field :abss_status, :string

    field :abss_order, :string

    field :abss_line, :integer

    field :abss_invoice, :string

    field :abss_mod_userid, :string

    field :abss_mod_date, Conduit.QAD.Types.Date

    field :abss_mod_pgm, :string

    field :abss_user1, :string

    field :abss_user2, :string

    field :abss__qadc01, :string

    field :abss__qadc02, :string

    field :abss__qadd01, :decimal

    field :abss__qadd02, :decimal

    field :abss__qadi01, :integer

    field :abss__qadi02, :integer

    field :abss__qadl01, Conduit.QAD.Types.Bool

    field :abss__qadl02, Conduit.QAD.Types.Bool

    field :abss__qadt01, Conduit.QAD.Types.Date

    field :abss__qadt02, Conduit.QAD.Types.Date

    field :abss_domain, :string

    field :oid_abss_det, :decimal, primary_key: true

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
