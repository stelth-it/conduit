defmodule Elixir.Conduit.QAD.Table.Rqf_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqf_ctrl" do
    field :rqf__qadi01, :integer

    field :rqf_nbr, :integer

    field :rqf_pre, :string

    field :rqf_ln_fmt, Conduit.QAD.Types.Bool

    field :rqf_tol_val, :decimal

    field :rqf_use_tolval, Conduit.QAD.Types.Bool

    field :rqf_tol_pct, :decimal

    field :rqf_use_tolpct, Conduit.QAD.Types.Bool

    field :rqf_lcmmts, Conduit.QAD.Types.Bool

    field :rqf_hcmmts, Conduit.QAD.Types.Bool

    field :rqf_appr_curr, :string

    field :rqf_email_opt, :string

    field :rqf_oot_rtg, :string

    field :rqf_oot_rtg_mode, Conduit.QAD.Types.Bool

    field :rqf_diraprs_req, :integer

    field :rqf_horaprs_req, :integer

    field :rqf_vrtaprs_req, :integer

    field :rqf__chr01, :string

    field :rqf__chr02, :string

    field :rqf__chr03, :string

    field :rqf__chr04, :string

    field :rqf__dec01, :decimal

    field :rqf__log01, Conduit.QAD.Types.Bool

    field :rqf__dte01, Conduit.QAD.Types.Date

    field :rqf__qadc01, :string

    field :rqf__qadc02, :string

    field :rqf__qadc03, :string

    field :rqf__qadc04, :string

    field :rqf_domain, :string

    field :oid_rqf_ctrl, :decimal, primary_key: true

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
