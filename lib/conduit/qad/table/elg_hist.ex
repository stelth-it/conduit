defmodule Elixir.Conduit.QAD.Table.Elg_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_elg_hist" do
    field :elg_access_code, :string

    field :elg_app_id, :string

    field :elg_app_ver, :string

    field :elg_archive_id, :string

    field :elg_ctrl_tot_1, :integer

    field :elg_ctrl_tot_2, :decimal

    field :elg_ctrl_tot_3, :decimal

    field :elg_date_ack, Conduit.QAD.Types.Date

    field :elg_date_map, Conduit.QAD.Types.Date

    field :elg_date_publ, Conduit.QAD.Types.Date

    field :elg_date_sent, Conduit.QAD.Types.Date

    field :elg_dest_proc, :string

    field :elg_doc_id, :integer

    field :elg_doc_lng, :string

    field :elg_doc_rev, :string

    field :elg_doc_std, :string

    field :elg_doc_typ, :string

    field :elg_email_userid, :string

    field :elg_email_notlvl, :string

    field :elg_err_stat, :string

    field :elg_ext_doc_key, :string

    field :elg_mfgpro_site, :string

    field :elg_mfgpro_key, :string

    field :elg_map_log_file, :string

    field :elg_map_spec, :string

    field :elg_mod_date, Conduit.QAD.Types.Date

    field :elg_mod_userid, :string

    field :elg_orig_doc_id, :integer

    field :elg_ack_rcvd, Conduit.QAD.Types.Bool

    field :elg_ack_lvl_reqd, :string

    field :elg_ack_stat, :string

    field :elg_prcg_stage, :string

    field :elg_sess_id, :integer

    field :elg_src_comp, :string

    field :elg_src_task, :string

    field :elg_src_app_id, :string

    field :elg_src_app_ver, :string

    field :elg_src_doc_rev, :string

    field :elg_src_doc_std, :string

    field :elg_src_doc_typ, :string

    field :elg_src_proc, :string

    field :elg_src_userid, :string

    field :elg_doc_sufx, :integer

    field :elg_time_ack, :string

    field :elg_time_map, :string

    field :elg_time_sent, :string

    field :elg_time_publ, :string

    field :elg_tradptr_id, :string

    field :elg_use_ex_queue, Conduit.QAD.Types.Bool

    field :elg_map_doc_now, Conduit.QAD.Types.Bool

    field :elg_unit_wrk_typ, :string

    field :elg_grp_id, :integer

    field :elg_code_pg, :string

    field :elg_date_form, :string

    field :elg_num_form, :string

    field :elg_user1, :string

    field :elg_user2, :string

    field :elg__dec01, :decimal

    field :elg__dec02, :decimal

    field :elg__int01, :integer

    field :elg__int02, :integer

    field :elg__log01, Conduit.QAD.Types.Bool

    field :elg__log02, Conduit.QAD.Types.Bool

    field :elg__dte01, Conduit.QAD.Types.Date

    field :elg__dte02, Conduit.QAD.Types.Date

    field :elg__qadc01, :string

    field :elg__qadc02, :string

    field :elg__qadc03, :string

    field :elg__qadc04, :string

    field :elg__qadd01, :decimal

    field :elg__qadd02, :decimal

    field :elg__qadi01, :integer

    field :elg__qadi02, :integer

    field :elg__qadl01, Conduit.QAD.Types.Bool

    field :elg__qadl02, Conduit.QAD.Types.Bool

    field :elg__qadt01, Conduit.QAD.Types.Date

    field :elg__qadt02, Conduit.QAD.Types.Date

    field :elg_grp_seq, :integer

    field :elg_resend, Conduit.QAD.Types.Bool

    field :elg_mapper_proc, :string

    field :elg_dest_mthd, :string

    field :elg_process_typ, :string

    field :elg_domain, :string

    field :oid_elg_hist, :decimal, primary_key: true

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
