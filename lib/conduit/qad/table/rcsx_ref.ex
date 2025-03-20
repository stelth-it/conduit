defmodule Elixir.Conduit.QAD.Table.Rcsx_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rcsx_ref" do
    field :rcsx_shipfrom, :string

    field :rcsx_shipto, :string

    field :rcsx_shipped_rlse_id, :string

    field :rcsx_shipped_cust_job, :string

    field :rcsx_shipped_cust_seq, :string

    field :rcsx_shipped_part, :string

    field :rcsx_shipped_date, Conduit.QAD.Types.Date

    field :rcsx_shipped_time, :string

    field :rcsx_shipped_cust_ref, :string

    field :rcsx_shipped_dock, :string

    field :rcsx_shipped_line_feed, :string

    field :rcsx_picked, Conduit.QAD.Types.Bool

    field :rcsx_shipped, Conduit.QAD.Types.Bool

    field :rcsx_rlse_id, :string

    field :rcsx_cust_job, :string

    field :rcsx_cust_seq, :string

    field :rcsx_part, :string

    field :rcsx_date, Conduit.QAD.Types.Date

    field :rcsx_time, :string

    field :rcsx_cust_ref, :string

    field :rcsx_dock, :string

    field :rcsx_line_feed, :string

    field :rcsx_mod_userid, :string

    field :rcsx_mod_date, Conduit.QAD.Types.Date

    field :rcsx_mod_pgm, :string

    field :rcsx_user1, :string

    field :rcsx_user2, :string

    field :rcsx__qadc01, :string

    field :rcsx__qadc02, :string

    field :rcsx__qadd01, :decimal

    field :rcsx__qadd02, :decimal

    field :rcsx__qadi01, :integer

    field :rcsx__qadi02, :integer

    field :rcsx__qadl01, Conduit.QAD.Types.Bool

    field :rcsx__qadl02, Conduit.QAD.Types.Bool

    field :rcsx__qadt01, Conduit.QAD.Types.Date

    field :rcsx__qadt02, Conduit.QAD.Types.Date

    field :rcsx_domain, :string

    field :oid_rcsx_ref, :decimal, primary_key: true

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
