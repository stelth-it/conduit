defmodule Elixir.Conduit.QAD.Table.Rqm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqm_mstr" do
    field :rqm_nbr, :string

    field :rqm_req_date, Conduit.QAD.Types.Date

    field :rqm_rqby_userid, :string

    field :rqm_end_userid, :string

    field :rqm_ship, :string

    field :rqm_cmtindx, :integer

    field :rqm_reason, :string

    field :rqm_eby_userid, :string

    field :rqm_status, :string

    field :rqm_print, Conduit.QAD.Types.Bool

    field :rqm_due_date, Conduit.QAD.Types.Date

    field :rqm_need_date, Conduit.QAD.Types.Date

    field :rqm_vend, :string

    field :rqm_acct, :string

    field :rqm_sub, :string

    field :rqm_cc, :string

    field :rqm_project, :string

    field :rqm_fix_pr, Conduit.QAD.Types.Bool

    field :rqm_curr, :string

    field :rqm_ex_rate, :decimal

    field :rqm_ent_date, Conduit.QAD.Types.Date

    field :rqm_site, :string

    field :rqm_lang, :string

    field :rqm_disc_pct, :decimal

    field :rqm_bill, :string

    field :rqm_contact, :string

    field :rqm_ln_fmt, Conduit.QAD.Types.Bool

    field :rqm_type, :string

    field :rqm_pr_list, :string

    field :rqm_ent_ex, :decimal

    field :rqm_rtdto_purch, Conduit.QAD.Types.Bool

    field :rqm_partial, Conduit.QAD.Types.Bool

    field :rqm_buyer, :string

    field :rqm_job, :string

    field :rqm_category, :string

    field :rqm_fix_rate, Conduit.QAD.Types.Bool

    field :rqm_rmks, :string

    field :rqm_direct, Conduit.QAD.Types.Bool

    field :rqm_apr_cmtindx, :integer

    field :rqm_rtto_userid, :string

    field :rqm_prev_userid, :string

    field :rqm_fob, :string

    field :rqm_shipvia, :string

    field :rqm_email_opt, :string

    field :rqm_entity, :string

    field :rqm_pent_userid, :string

    field :rqm_total, :decimal

    field :rqm_max_total, :decimal

    field :rqm_pr_list2, :string

    field :rqm_rtto_date, Conduit.QAD.Types.Date

    field :rqm_rtto_time, :integer

    field :rqm_open, Conduit.QAD.Types.Bool

    field :rqm_prev_rtp, Conduit.QAD.Types.Bool

    field :rqm_cls_date, Conduit.QAD.Types.Date

    field :rqm__chr01, :string

    field :rqm__chr02, :string

    field :rqm__chr03, :string

    field :rqm__chr04, :string

    field :rqm__log01, Conduit.QAD.Types.Bool

    field :rqm__dec01, :decimal

    field :rqm__qadc01, :string

    field :rqm__qadc02, :string

    field :rqm__qadc03, :string

    field :rqm__qadc04, :string

    field :rqm_aprv_stat, :string

    field :rqm_ex_rate2, :decimal

    field :rqm_ex_ratetype, :string

    field :rqm_exru_seq, :integer

    field :rqm_domain, :string

    field :oid_rqm_mstr, :decimal, primary_key: true

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
