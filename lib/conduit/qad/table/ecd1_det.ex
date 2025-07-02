defmodule Elixir.Conduit.QAD.Table.Ecd1_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd1_det" do
    field :ecd1_nbr, :string

    field :ecd1_par, :string

    field :ecd1_comp, :string

    field :ecd1_ref, :string

    field :ecd1_qty_type, :string

    field :ecd1_qty_per, :decimal

    field :ecd1_scrp_pct, :decimal

    field :ecd1_rmks, :string

    field :ecd1_op, :integer

    field :ecd1_item_no, :integer

    field :ecd1_qty_per_b, :decimal

    field :ecd1_batch_pct, :decimal

    field :ecd1_batch, :decimal

    field :ecd1_batch_um, :string

    field :ecd1_cmtindx, :integer

    field :ecd1_recindx, :integer

    field :ecd1_process, :string

    field :ecd1__qad01, Conduit.QAD.Types.Bool

    field :ecd1__qad02, Conduit.QAD.Types.Date

    field :ecd1__qad03, :string

    field :ecd1__qad04, :string

    field :ecd1__qad05, :string

    field :ecd1_mod_date, Conduit.QAD.Types.Date

    field :ecd1_userid, :string

    field :ecd1_user1, :string

    field :ecd1_user2, :string

    field :ecd1_deactivate, Conduit.QAD.Types.Bool

    field :ecd1_start, Conduit.QAD.Types.Date

    field :ecd1_ps_code, :string

    field :ecd1_mandatory, Conduit.QAD.Types.Bool

    field :ecd1_default, Conduit.QAD.Types.Bool

    field :ecd1_lt_off, :integer

    field :ecd1_fcst_pct, :decimal

    field :ecd1_group, :string

    field :ecd1_psprocess, :string

    field :ecd1_domain, :string

    field :oid_ecd1_det, :decimal, primary_key: true

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
