defmodule Elixir.Conduit.QAD.Table.Esp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esp_mstr" do
    field :esp_access_code, :string

    field :esp_app_id, :string

    field :esp_app_ver, :string

    field :esp_del_err_det, :string

    field :esp_dest_proc, :string

    field :esp_doc_lng, :string

    field :esp_doc_rev, :string

    field :esp_doc_std, :string

    field :esp_doc_typ, :string

    field :esp_email_userid, :string

    field :esp_email_notlvl, :string

    field :esp_desc, :string

    field :esp_ex_map_flg, Conduit.QAD.Types.Bool

    field :esp_send_flg, Conduit.QAD.Types.Bool

    field :esp_publ_flg, Conduit.QAD.Types.Bool

    field :esp_mapper_proc, :string

    field :esp_map_spec, :string

    field :esp_mod_date, Conduit.QAD.Types.Date

    field :esp_mod_userid, :string

    field :esp_msg_ack_lvl, :string

    field :esp_msg_clnt_ord, :string

    field :esp_msg_priority, :string

    field :esp_msg_routing, :string

    field :esp_msg_ttl, :string

    field :esp_pause_sev, :integer

    field :esp_ack_lvl_reqd, :string

    field :esp_src_comp, :string

    field :esp_src_app_id, :string

    field :esp_src_task, :string

    field :esp_src_app_ver, :string

    field :esp_src_doc_rev, :string

    field :esp_src_doc_std, :string

    field :esp_src_doc_typ, :string

    field :esp_src_proc, :string

    field :esp_src_userid, :string

    field :esp_tradptr_id, :string

    field :esp_use_ex_queue, Conduit.QAD.Types.Bool

    field :esp_ack_doc_rev, :string

    field :esp_ack_doc_std, :string

    field :esp_ack_doc_typ, :string

    field :esp_code_pg, :string

    field :esp_date_form, :string

    field :esp_num_form, :string

    field :esp_user1, :string

    field :esp_user2, :string

    field :esp__dec01, :decimal

    field :esp__dec02, :decimal

    field :esp__int01, :integer

    field :esp__int02, :integer

    field :esp__log01, Conduit.QAD.Types.Bool

    field :esp__log02, Conduit.QAD.Types.Bool

    field :esp__dte01, Conduit.QAD.Types.Date

    field :esp__dte02, Conduit.QAD.Types.Date

    field :esp__qadc01, :string

    field :esp__qadc02, :string

    field :esp__qadc03, :string

    field :esp__qadc04, :string

    field :esp__qadd01, :decimal

    field :esp__qadd02, :decimal

    field :esp__qadi01, :integer

    field :esp__qadi02, :integer

    field :esp__qadl01, Conduit.QAD.Types.Bool

    field :esp__qadl02, Conduit.QAD.Types.Bool

    field :esp__qadt01, Conduit.QAD.Types.Date

    field :esp__qadt02, Conduit.QAD.Types.Date

    field :esp_msg_sync, :string

    field :esp_msg_secur, :string

    field :esp_msg_persist, :string

    field :esp_queue_pub, :string

    field :esp_map_parm, {:array, :string}

    field :esp_map_parm_val, {:array, :string}

    field :esp_eol_delim, Conduit.QAD.Types.Bool

    field :esp_dtd_name, :string

    field :esp_delim, :integer

    field :esp_dest_mthd, :string

    field :esp_process_typ, :string

    field :esp_xml, :string

    field :esp_domain, :string

    field :oid_esp_mstr, :decimal, primary_key: true

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
