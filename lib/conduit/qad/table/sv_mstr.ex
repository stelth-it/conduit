defmodule Elixir.Conduit.QAD.Table.Sv_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sv_mstr" do
    field :sv_code, :string

    field :sv_desc, :string

    field :sv_pr_list, :string

    field :sv_rsp_time, :integer

    field :sv_dflt_pri, :integer

    field :sv_onsite, Conduit.QAD.Types.Bool

    field :sv_qo_title, :string

    field :sv_so_title, :string

    field :sv_duration, :integer

    field :sv_days, {:array, Conduit.QAD.Types.Bool}

    field :sv_holidays, Conduit.QAD.Types.Bool

    field :sv_svc_type, :string

    field :sv__chr01, :string

    field :sv__chr02, :string

    field :sv__chr03, :string

    field :sv__chr04, :string

    field :sv__chr05, :string

    field :sv_cmtindx, :integer

    field :sv_st_time, :string

    field :sv_ed_time, :string

    field :sv_shp_b4rtn, Conduit.QAD.Types.Bool

    field :sv_cr_prlist, :string

    field :sv_rstk_pct, :decimal

    field :sv_rsp_um, :string

    field :sv_dur_um, :string

    field :sv_blanket, Conduit.QAD.Types.Bool

    field :sv_rmaprice, :string

    field :sv_rmaonly, Conduit.QAD.Types.Bool

    field :sv_type, :string

    field :sv_visits, :decimal

    field :sv_stime, {:array, :string}

    field :sv_etime, {:array, :string}

    field :sv_cstmlist, :string

    field :sv_user1, :string

    field :sv_user2, :string

    field :sv_prod_line, :string

    field :sv_es_nbr, :string

    field :sv_off_hours_pt, :string

    field :sv_calls_allow, :decimal

    field :sv_labor_dur, :integer

    field :sv_labor_um, :string

    field :sv_taxable, Conduit.QAD.Types.Bool

    field :sv_taxc, :string

    field :sv_tax_usage, :string

    field :sv_call_price, :string

    field :sv__qadc01, :string

    field :sv__qadc02, :string

    field :sv__qadc03, :string

    field :sv__qadc04, :string

    field :sv__qadt01, Conduit.QAD.Types.Date

    field :sv__qadt02, Conduit.QAD.Types.Date

    field :sv__qadt03, Conduit.QAD.Types.Date

    field :sv__qadd01, :decimal

    field :sv__qadd02, :decimal

    field :sv__qadd03, :decimal

    field :sv__qadl01, Conduit.QAD.Types.Bool

    field :sv__qadl02, Conduit.QAD.Types.Bool

    field :sv__qadl03, Conduit.QAD.Types.Bool

    field :sv_domain, :string

    field :oid_sv_mstr, :decimal, primary_key: true

    field :sv_mid_etime, {:array, :string}

    field :sv_mid_stime, {:array, :string}

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
