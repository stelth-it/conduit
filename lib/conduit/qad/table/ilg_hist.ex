defmodule Elixir.Conduit.QAD.Table.Ilg_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ilg_hist" do
    field :ilg_access_code, :string

    field :ilg_src_comp, :string

    field :ilg_app_id, :string

    field :ilg_src_task, :string

    field :ilg_app_ver, :string

    field :ilg_archive_id, :string

    field :ilg_ctrl_tot_1, :integer

    field :ilg_ctrl_tot_2, :decimal

    field :ilg_ctrl_tot_3, :decimal

    field :ilg_date_ack, Conduit.QAD.Types.Date

    field :ilg_date_map, Conduit.QAD.Types.Date

    field :ilg_date_proc, Conduit.QAD.Types.Date

    field :ilg_date_rcvd, Conduit.QAD.Types.Date

    field :ilg_dest_app_ver, :string

    field :ilg_dest_app_id, :string

    field :ilg_dest_doc_rev, :string

    field :ilg_dest_doc_std, :string

    field :ilg_dest_doc_typ, :string

    field :ilg_dest_proc, :string

    field :ilg_doc_id, :integer

    field :ilg_doc_lng, :string

    field :ilg_doc_rev, :string

    field :ilg_doc_std, :string

    field :ilg_doc_typ, :string

    field :ilg_email_userid, :string

    field :ilg_email_notlvl, :string

    field :ilg_map_log_file, :string

    field :ilg_err_stat, :string

    field :ilg_ext_doc_key, :string

    field :ilg_mfgpro_site, :string

    field :ilg_mfgpro_key, :string

    field :ilg_grp_id, :integer

    field :ilg_map_spec, :string

    field :ilg_mod_date, Conduit.QAD.Types.Date

    field :ilg_mod_userid, :string

    field :ilg_orig_doc_id, :integer

    field :ilg_ack_lvl_reqd, :string

    field :ilg_ack_sent, Conduit.QAD.Types.Bool

    field :ilg_prcg_stage, :string

    field :ilg_sess_id, :integer

    field :ilg_src_proc, :string

    field :ilg_src_userid, :string

    field :ilg_doc_sufx, :integer

    field :ilg_time_ack, :string

    field :ilg_time_map, :string

    field :ilg_time_proc, :string

    field :ilg_time_rcvd, :string

    field :ilg_tradptr_id, :string

    field :ilg_unit_wrk_typ, :string

    field :ilg_map_doc_now, Conduit.QAD.Types.Bool

    field :ilg_use_im_queue, Conduit.QAD.Types.Bool

    field :ilg_code_pg, :string

    field :ilg_date_form, :string

    field :ilg_num_form, :string

    field :ilg_user1, :string

    field :ilg_user2, :string

    field :ilg__dec01, :decimal

    field :ilg__dec02, :decimal

    field :ilg__int01, :integer

    field :ilg__int02, :integer

    field :ilg__log01, Conduit.QAD.Types.Bool

    field :ilg__log02, Conduit.QAD.Types.Bool

    field :ilg__dte01, Conduit.QAD.Types.Date

    field :ilg__dte02, Conduit.QAD.Types.Date

    field :ilg__qadc01, :string

    field :ilg__qadc02, :string

    field :ilg__qadc03, :string

    field :ilg__qadc04, :string

    field :ilg__qadd01, :decimal

    field :ilg__qadd02, :decimal

    field :ilg__qadi01, :integer

    field :ilg__qadi02, :integer

    field :ilg__qadl01, Conduit.QAD.Types.Bool

    field :ilg__qadl02, Conduit.QAD.Types.Bool

    field :ilg__qadt01, Conduit.QAD.Types.Date

    field :ilg__qadt02, Conduit.QAD.Types.Date

    field :ilg_grp_seq, :integer

    field :ilg_date_create, Conduit.QAD.Types.Date

    field :ilg_time_create, :string

    field :ilg_timezone, :string

    field :ilg_mapper_proc, :string

    field :ilg_dest_mthd, :string

    field :ilg_process_typ, :string

    field :ilg_domain, :string

    field :oid_ilg_hist, :decimal, primary_key: true

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
