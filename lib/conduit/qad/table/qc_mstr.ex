defmodule Elixir.Conduit.QAD.Table.Qc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qc_mstr" do
    field :qc_cmtindx, :integer

    field :qc_due_date, Conduit.QAD.Types.Date

    field :qc_insp_loc, :string

    field :qc_inv_stat, :string

    field :qc_lead_time, :decimal

    field :qc_loc, :string

    field :qc_lot, :string

    field :qc_nbr, :string

    field :qc_ord_date, Conduit.QAD.Types.Date

    field :qc_part, :string

    field :qc_project, :string

    field :qc_qty_comp, :decimal

    field :qc_qty_ord, :decimal

    field :qc_qty_rjct, :decimal

    field :qc_ref, :string

    field :qc_rel_date, Conduit.QAD.Types.Date

    field :qc_rmks, :string

    field :qc_serial, :string

    field :qc_site, :string

    field :qc_status, :string

    field :qc_teststep, :string

    field :qc_type, :string

    field :qc_user1, :string

    field :qc_user2, :string

    field :qc__chr01, :string

    field :qc__chr02, :string

    field :qc__chr03, :string

    field :qc__chr04, :string

    field :qc__chr05, :string

    field :qc__dec01, :decimal

    field :qc__dec02, :decimal

    field :qc__dte01, Conduit.QAD.Types.Date

    field :qc__dte02, Conduit.QAD.Types.Date

    field :qc__log01, Conduit.QAD.Types.Bool

    field :qc_autoissue, Conduit.QAD.Types.Bool

    field :qc_job, :string

    field :qc_domain, :string

    field :oid_qc_mstr, :decimal, primary_key: true

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
