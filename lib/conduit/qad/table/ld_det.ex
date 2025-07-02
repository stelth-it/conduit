defmodule Elixir.Conduit.QAD.Table.Ld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ld_det" do
    field :ld_loc, :string

    field :ld_part, :string

    field :ld_date, Conduit.QAD.Types.Date

    field :ld_qty_oh, :decimal

    field :ld_lot, :string

    field :ld_ref, :string

    field :ld_cnt_date, Conduit.QAD.Types.Date

    field :ld_assay, :decimal

    field :ld_expire, Conduit.QAD.Types.Date

    field :ld_user1, :string

    field :ld_user2, :string

    field :ld_site, :string

    field :ld_status, :string

    field :ld_qty_all, :decimal

    field :ld_grade, :string

    field :ld_qty_frz, :decimal

    field :ld_date_frz, Conduit.QAD.Types.Date

    field :ld_vd_lot, :string

    field :ld_cmtindx, :integer

    field :ld_work, :decimal

    field :ld__chr01, :string

    field :ld__chr02, :string

    field :ld__chr03, :string

    field :ld__chr04, :string

    field :ld__chr05, :string

    field :ld__dte01, Conduit.QAD.Types.Date

    field :ld__dte02, Conduit.QAD.Types.Date

    field :ld__dec01, :decimal

    field :ld__dec02, :decimal

    field :ld__log01, Conduit.QAD.Types.Bool

    field :ld_cost, :decimal

    field :ld_rev, :string

    field :ld_cust_consign_qty, :decimal

    field :ld_supp_consign_qty, :decimal

    field :ld_domain, :string

    field :oid_ld_det, :decimal, primary_key: true

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
