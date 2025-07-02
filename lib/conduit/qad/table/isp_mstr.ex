defmodule Elixir.Conduit.QAD.Table.Isp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_isp_mstr" do
    field :isp_access_code, :string

    field :isp_src_comp, :string

    field :isp_app_id, :string

    field :isp_src_task, :string

    field :isp_app_ver, :string

    field :isp_del_err_det, :string

    field :isp_dest_app_id, :string

    field :isp_dest_app_ver, :string

    field :isp_dest_doc_rev, :string

    field :isp_dest_doc_std, :string

    field :isp_dest_doc_typ, :string

    field :isp_dest_proc, :string

    field :isp_cim_proc, Conduit.QAD.Types.Bool

    field :isp_doc_lng, :string

    field :isp_doc_rev, :string

    field :isp_doc_std, :string

    field :isp_doc_typ, :string

    field :isp_email_userid, :string

    field :isp_email_notlvl, :string

    field :isp_im_map_flg, Conduit.QAD.Types.Bool

    field :isp_proc_flg, Conduit.QAD.Types.Bool

    field :isp_rcv_flg, Conduit.QAD.Types.Bool

    field :isp_desc, :string

    field :isp_mapper_proc, :string

    field :isp_map_spec, :string

    field :isp_mod_date, Conduit.QAD.Types.Date

    field :isp_mod_userid, :string

    field :isp_pause_sev, :integer

    field :isp_ack_doc_rev, :string

    field :isp_ack_doc_std, :string

    field :isp_ack_doc_typ, :string

    field :isp_ack_lvl_reqd, :string

    field :isp_src_proc, :string

    field :isp_src_userid, :string

    field :isp_tradptr_id, :string

    field :isp_use_im_queue, Conduit.QAD.Types.Bool

    field :isp_code_pg, :string

    field :isp_date_form, :string

    field :isp_num_form, :string

    field :isp_user1, :string

    field :isp_user2, :string

    field :isp__dec01, :decimal

    field :isp__dec02, :decimal

    field :isp__int01, :integer

    field :isp__int02, :integer

    field :isp__log01, Conduit.QAD.Types.Bool

    field :isp__log02, Conduit.QAD.Types.Bool

    field :isp__dte01, Conduit.QAD.Types.Date

    field :isp__dte02, Conduit.QAD.Types.Date

    field :isp__qadc01, :string

    field :isp__qadc02, :string

    field :isp__qadc03, :string

    field :isp__qadc04, :string

    field :isp__qadd01, :decimal

    field :isp__qadd02, :decimal

    field :isp__qadi01, :integer

    field :isp__qadi02, :integer

    field :isp__qadl01, Conduit.QAD.Types.Bool

    field :isp__qadl02, Conduit.QAD.Types.Bool

    field :isp__qadt01, Conduit.QAD.Types.Date

    field :isp__qadt02, Conduit.QAD.Types.Date

    field :isp_map_parm, {:array, :string}

    field :isp_map_parm_val, {:array, :string}

    field :isp_delim, :integer

    field :isp_dest_mthd, :string

    field :isp_process_typ, :string

    field :isp_xml, :string

    field :isp_domain, :string

    field :oid_isp_mstr, :decimal, primary_key: true

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
