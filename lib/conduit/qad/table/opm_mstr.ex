defmodule Elixir.Conduit.QAD.Table.Opm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_opm_mstr" do
    field :opm_desc, :string

    field :opm_wkctr, :string

    field :opm_mch, :string

    field :opm_setup, :decimal

    field :opm_run, :decimal

    field :opm_move, :decimal

    field :opm_yld_pct, :decimal

    field :opm_tool, :string

    field :opm_vend, :string

    field :opm_sub_cost, :decimal

    field :opm_tran_qty, :integer

    field :opm_inv_val, :decimal

    field :opm_batch, :integer

    field :opm_cmtindx, :integer

    field :opm_mile, Conduit.QAD.Types.Bool

    field :opm_std_op, :string

    field :opm_lbr_ovhd, :decimal

    field :opm_user1, :string

    field :opm_user2, :string

    field :opm_sub_lead, :integer

    field :opm_cyc_unit, :decimal

    field :opm_cyc_rate, :decimal

    field :opm__chr01, :string

    field :opm__chr02, :string

    field :opm__chr03, :string

    field :opm__chr04, :string

    field :opm__chr05, :string

    field :opm__dte01, Conduit.QAD.Types.Date

    field :opm__dte02, Conduit.QAD.Types.Date

    field :opm__dec01, :decimal

    field :opm__dec02, :decimal

    field :opm__log01, Conduit.QAD.Types.Bool

    field :opm_fsc_code, :string

    field :opm_fsm_type, :string

    field :opm__qadc01, :string

    field :opm__qadc02, :string

    field :opm__qadc03, :string

    field :opm__qadt01, Conduit.QAD.Types.Date

    field :opm__qade01, :decimal

    field :opm__qadl01, Conduit.QAD.Types.Bool

    field :opm__qadl02, Conduit.QAD.Types.Bool

    field :opm_bom_code, :string

    field :opm_domain, :string

    field :oid_opm_mstr, :decimal, primary_key: true

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
