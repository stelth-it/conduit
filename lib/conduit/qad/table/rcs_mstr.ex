defmodule Elixir.Conduit.QAD.Table.Rcs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rcs_mstr" do
    field :rcs_shipfrom, :string

    field :rcs_shipto, :string

    field :rcs_rlse_id, :string

    field :rcs_cr_date, Conduit.QAD.Types.Date

    field :rcs_cr_time, :string

    field :rcs_cumulative, Conduit.QAD.Types.Bool

    field :rcs_date_type, Conduit.QAD.Types.Bool

    field :rcs_active_start, Conduit.QAD.Types.Date

    field :rcs_active_end, Conduit.QAD.Types.Date

    field :rcs_active, Conduit.QAD.Types.Bool

    field :rcs_active_date, Conduit.QAD.Types.Date

    field :rcs_packing_order, Conduit.QAD.Types.Bool

    field :rcs_seq_per_container, :integer

    field :rcs_check_seq_tol, Conduit.QAD.Types.Bool

    field :rcs_max_tol, :integer

    field :rcs_mod_userid, :string

    field :rcs_mod_date, Conduit.QAD.Types.Date

    field :rcs_mod_pgm, :string

    field :rcs_user1, :string

    field :rcs_user2, :string

    field :rcs__qadc01, :string

    field :rcs__qadc02, :string

    field :rcs__qadd01, :decimal

    field :rcs__qadd02, :decimal

    field :rcs__qadi01, :integer

    field :rcs__qadi02, :integer

    field :rcs__qadl01, Conduit.QAD.Types.Bool

    field :rcs__qadl02, Conduit.QAD.Types.Bool

    field :rcs__qadt01, Conduit.QAD.Types.Date

    field :rcs__qadt02, Conduit.QAD.Types.Date

    field :rcs_domain, :string

    field :oid_rcs_mstr, :decimal, primary_key: true

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
