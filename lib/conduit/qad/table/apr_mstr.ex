defmodule Elixir.Conduit.QAD.Table.Apr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_apr_mstr" do
    field :apr_access_code, :string

    field :apr_src_comp, :string

    field :apr_desc, :string

    field :apr_app_id, :string

    field :apr_name, :string

    field :apr_src_task, :string

    field :apr_app_ver, :string

    field :apr_del_err_det, :string

    field :apr_doc_lng, :string

    field :apr_email_userid, :string

    field :apr_email_notlvl, :string

    field :apr_ex_dest_proc, :string

    field :apr_ex_init_conn, Conduit.QAD.Types.Bool

    field :apr_ex_map_flg, Conduit.QAD.Types.Bool

    field :apr_send_flg, Conduit.QAD.Types.Bool

    field :apr_publ_flg, Conduit.QAD.Types.Bool

    field :apr_im_dest_proc, :string

    field :apr_im_init_conn, Conduit.QAD.Types.Bool

    field :apr_cim_proc, Conduit.QAD.Types.Bool

    field :apr_im_map_flg, Conduit.QAD.Types.Bool

    field :apr_proc_flag, Conduit.QAD.Types.Bool

    field :apr_rcv_flg, Conduit.QAD.Types.Bool

    field :apr_mapper_proc, :string

    field :apr_mod_date, Conduit.QAD.Types.Date

    field :apr_mod_userid, :string

    field :apr_msg_ack_lvl, :string

    field :apr_msg_clnt_ord, :string

    field :apr_msg_priority, :string

    field :apr_msg_routing, :string

    field :apr_msg_ttl, :string

    field :apr_pause_sev, :integer

    field :apr_ack_doc_rev, :string

    field :apr_ack_doc_std, :string

    field :apr_ack_doc_typ, :string

    field :apr_ack_lvl_reqd, :string

    field :apr_src_userid, :string

    field :apr_im_ip_addr, :string

    field :apr_ex_ip_addr, :string

    field :apr_im_port_nbr, :integer

    field :apr_ex_port_nbr, :integer

    field :apr_adapter_proc, :string

    field :apr_adapter_env, :string

    field :apr_code_pg, :string

    field :apr_date_form, :string

    field :apr_num_form, :string

    field :apr_map_spec, :string

    field :apr_user1, :string

    field :apr_user2, :string

    field :apr__dec01, :decimal

    field :apr__dec02, :decimal

    field :apr__log01, Conduit.QAD.Types.Bool

    field :apr__int01, :integer

    field :apr__log02, Conduit.QAD.Types.Bool

    field :apr__int02, :integer

    field :apr__dte01, Conduit.QAD.Types.Date

    field :apr__dte02, Conduit.QAD.Types.Date

    field :apr__qadc01, :string

    field :apr__qadc02, :string

    field :apr__qadc03, :string

    field :apr__qadc04, :string

    field :apr__qadd01, :decimal

    field :apr__qadd02, :decimal

    field :apr__qadi01, :integer

    field :apr__qadi02, :integer

    field :apr__qadl01, Conduit.QAD.Types.Bool

    field :apr__qadl02, Conduit.QAD.Types.Bool

    field :apr__qadt01, Conduit.QAD.Types.Date

    field :apr__qadt02, Conduit.QAD.Types.Date

    field :apr_msg_secur, :string

    field :apr_msg_persist, :string

    field :apr_queue_pub, :string

    field :apr_map_parm, {:array, :string}

    field :apr_map_parm_val, {:array, :string}

    field :apr_eol_delim, Conduit.QAD.Types.Bool

    field :apr_msg_sync, :string

    field :apr_im_doc_std, :string

    field :apr_adapt_cmd, :string

    field :apr_adapt_start, Conduit.QAD.Types.Bool

    field :apr_im_xml, :string

    field :apr_ex_xml, :string

    field :apr_dtd_dir_url, :string

    field :apr_ex_delim, :integer

    field :apr_im_delim, :integer

    field :apr_im_arch_dir, :string

    field :apr_ex_arch_dir, :string

    field :apr_im_dest_mthd, :string

    field :apr_im_prc_typ, :string

    field :apr_ex_dest_mthd, :string

    field :apr_ex_prc_typ, :string

    field :apr_domain, :string

    field :oid_apr_mstr, :decimal, primary_key: true

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
