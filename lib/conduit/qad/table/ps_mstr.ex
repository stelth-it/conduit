defmodule Elixir.Conduit.QAD.Table.Ps_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ps_mstr" do
    field :ps_par, :string

    field :ps_comp, :string

    field :ps_ref, :string

    field :ps_qty_per, :decimal

    field :ps_scrp_pct, :decimal

    field :ps_ps_code, :string

    field :ps_lt_off, :integer

    field :ps_start, Conduit.QAD.Types.Date

    field :ps_end, Conduit.QAD.Types.Date

    field :ps_rmks, :string

    field :ps_op, :integer

    field :ps_item_no, :integer

    field :ps_mandatory, Conduit.QAD.Types.Bool

    field :ps_exclusive, Conduit.QAD.Types.Bool

    field :ps_process, :string

    field :ps_qty_type, :string

    field :ps_user1, :string

    field :ps_user2, :string

    field :ps_fcst_pct, :decimal

    field :ps_default, Conduit.QAD.Types.Bool

    field :ps_group, :string

    field :ps_critical, Conduit.QAD.Types.Bool

    field :ps_qty_per_b, :decimal

    field :ps_comp_um, :string

    field :ps_um_conv, :decimal

    field :ps_assay, :decimal

    field :ps_comm_code, :string

    field :ps_non_bal, Conduit.QAD.Types.Bool

    field :ps__qad01, Conduit.QAD.Types.Bool

    field :ps_userid, :string

    field :ps_mod_date, Conduit.QAD.Types.Date

    field :ps_batch_pct, :decimal

    field :ps_cmtindx, :integer

    field :ps_start_ecn, :string

    field :ps_end_ecn, :string

    field :ps_joint_type, :string

    field :ps_cop_qty, :decimal

    field :ps_cst_pct, :decimal

    field :ps_prod_pct, :decimal

    field :ps_qty_cons, :decimal

    field :ps_qty_exch, :decimal

    field :ps_qty_diag, :decimal

    field :ps__chr01, :string

    field :ps__chr02, :string

    field :ps__dte01, Conduit.QAD.Types.Date

    field :ps__dte02, Conduit.QAD.Types.Date

    field :ps__dec01, :decimal

    field :ps__dec02, :decimal

    field :ps__log01, Conduit.QAD.Types.Bool

    field :ps__log02, Conduit.QAD.Types.Bool

    field :ps__qadc01, :string

    field :ps__qadc02, :string

    field :ps__qadt01, Conduit.QAD.Types.Date

    field :ps__qadt02, Conduit.QAD.Types.Date

    field :ps__qadt03, Conduit.QAD.Types.Date

    field :ps__qadd01, :decimal

    field :ps__qadd02, :decimal

    field :ps__qadl01, Conduit.QAD.Types.Bool

    field :ps__qadl02, Conduit.QAD.Types.Bool

    field :ps_domain, :string

    field :oid_ps_mstr, :decimal, primary_key: true

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
