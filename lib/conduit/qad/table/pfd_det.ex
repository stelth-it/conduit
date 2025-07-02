defmodule Elixir.Conduit.QAD.Table.Pfd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pfd_det" do
    field :pfd_part, :string

    field :pfd_site, :string

    field :pfd_warr_cd, :string

    field :pfd_rp_vendor, :string

    field :pfd_pvm_um, :string

    field :pfd_obs_date, Conduit.QAD.Types.Date

    field :pfd_pvm_bom, :string

    field :pfd_pvm_route, :string

    field :pfd_rp_route, :string

    field :pfd_rp_bom, :string

    field :pfd_unit_isb, Conduit.QAD.Types.Bool

    field :pfd_cover, Conduit.QAD.Types.Bool

    field :pfd_inst_call, Conduit.QAD.Types.Bool

    field :pfd_tariff, :string

    field :pfd_origin, :string

    field :pfd_sttr, :decimal

    field :pfd_mfg_mtbf, :decimal

    field :pfd_mfg_mttr, :decimal

    field :pfd_fru, Conduit.QAD.Types.Bool

    field :pfd_ven_warr, Conduit.QAD.Types.Bool

    field :pfd_svc_group, :string

    field :pfd_mtbf, :decimal

    field :pfd_mttr, :decimal

    field :pfd_isb, Conduit.QAD.Types.Bool

    field :pfd_pvm_days, :integer

    field :pfd_user1, :string

    field :pfd_user2, :string

    field :pfd_cus_install, Conduit.QAD.Types.Bool

    field :pfd_life_cycle, :string

    field :pfd_repairable, Conduit.QAD.Types.Bool

    field :pfd_rp_site, :string

    field :pfd_field_lead, :decimal

    field :pfd_pvm_exceed, Conduit.QAD.Types.Bool

    field :pfd_pvm_limit, :decimal

    field :pfd_pvm_replace, Conduit.QAD.Types.Bool

    field :pfd_pvm_saftey, :decimal

    field :pfd_bench_lead, :integer

    field :pfd_trace_active, Conduit.QAD.Types.Bool

    field :pfd_pm_mrp, Conduit.QAD.Types.Bool

    field :pfd__qadl01, Conduit.QAD.Types.Bool

    field :pfd__qadl02, Conduit.QAD.Types.Bool

    field :pfd__qadc01, :string

    field :pfd__qadc02, :string

    field :pfd__qadi01, :integer

    field :pfd__qadi02, :integer

    field :pfd__qadd01, Conduit.QAD.Types.Date

    field :pfd__chr01, :string

    field :pfd__chr02, :string

    field :pfd__log01, Conduit.QAD.Types.Bool

    field :pfd__log02, Conduit.QAD.Types.Bool

    field :pfd__int01, :integer

    field :pfd__int02, :integer

    field :pfd__dte01, Conduit.QAD.Types.Date

    field :pfd__dte02, Conduit.QAD.Types.Date

    field :pfd_mod_userid, :string

    field :pfd_mod_date, Conduit.QAD.Types.Date

    field :pfd_ins_bom, :string

    field :pfd_ins_route, :string

    field :pfd_domain, :string

    field :oid_pfd_det, :decimal, primary_key: true

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
