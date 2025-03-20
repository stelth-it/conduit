defmodule Elixir.Conduit.QAD.Table.Vp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vp_mstr" do
    field :vp_part, :string

    field :vp_vend, :string

    field :vp_vend_part, :string

    field :vp_um, :string

    field :vp_vend_lead, :integer

    field :vp_q_price, :decimal

    field :vp_q_date, Conduit.QAD.Types.Date

    field :vp_q_qty, :decimal

    field :vp_mfgr, :string

    field :vp_mfgr_part, :string

    field :vp_comment, :string

    field :vp_pr_list, :string

    field :vp_user1, :string

    field :vp_user2, :string

    field :vp_curr, :string

    field :vp_bkage_amt, :decimal

    field :vp_duty_amt, :decimal

    field :vp_duty_type, :string

    field :vp_frt_amt, :decimal

    field :vp_sch_pct, :decimal

    field :vp_appr_date, Conduit.QAD.Types.Date

    field :vp__chr01, :string

    field :vp__chr02, :string

    field :vp__chr03, :string

    field :vp__chr04, :string

    field :vp__chr05, :string

    field :vp__dte01, Conduit.QAD.Types.Date

    field :vp__dte02, Conduit.QAD.Types.Date

    field :vp__dec01, :decimal

    field :vp__dec02, :decimal

    field :vp__log01, Conduit.QAD.Types.Bool

    field :vp_mod_date, Conduit.QAD.Types.Date

    field :vp_userid, :string

    field :vp_pkg_code, :string

    field :vp_ins_rqd, Conduit.QAD.Types.Bool

    field :vp_rcpt_stat, :string

    field :vp_tp_use_pct, Conduit.QAD.Types.Bool

    field :vp_tp_pct, :decimal

    field :vp_domain, :string

    field :oid_vp_mstr, :decimal, primary_key: true

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
