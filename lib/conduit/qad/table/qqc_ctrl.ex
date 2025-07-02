defmodule Elixir.Conduit.QAD.Table.Qqc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qqc_ctrl" do
    field :qqc_email_flg, Conduit.QAD.Types.Bool

    field :qqc_email_userid, :string

    field :qqc_email_notlvl, :string

    field :qqc_ex_map_flg, Conduit.QAD.Types.Bool

    field :qqc_send_flg, Conduit.QAD.Types.Bool

    field :qqc_publ_flg, Conduit.QAD.Types.Bool

    field :qqc_mfgpro_site, :string

    field :qqc_im_map_flg, Conduit.QAD.Types.Bool

    field :qqc_proc_flg, Conduit.QAD.Types.Bool

    field :qqc_rcv_flg, Conduit.QAD.Types.Bool

    field :qqc__qadi03, :integer

    field :qqc_mod_date, Conduit.QAD.Types.Date

    field :qqc_mod_userid, :string

    field :qqc_msg_ack_lvl, :string

    field :qqc_msg_clnt_ord, :string

    field :qqc_msg_priority, :string

    field :qqc_msg_routing, :string

    field :qqc_msg_ttl, :string

    field :qqc_pause_sev, :string

    field :qqc_ack_lvl_reqd, :string

    field :qqc_start_proc, :string

    field :qqc_shut_proc, :string

    field :qqc_sys_id, :string

    field :qqc_sys_ver, :string

    field :qqc_timezone, :string

    field :qqc_act, Conduit.QAD.Types.Bool

    field :qqc_code_pg, :string

    field :qqc_date_form, :string

    field :qqc_num_form, :string

    field :qqc_user1, :string

    field :qqc_user2, :string

    field :qqc__dec01, :decimal

    field :qqc__dec02, :decimal

    field :qqc__int01, :integer

    field :qqc__int02, :integer

    field :qqc__log01, Conduit.QAD.Types.Bool

    field :qqc__log02, Conduit.QAD.Types.Bool

    field :qqc__dte01, Conduit.QAD.Types.Date

    field :qqc__dte02, Conduit.QAD.Types.Date

    field :qqc__qadc01, :string

    field :qqc__qadc02, :string

    field :qqc__qadc03, :string

    field :qqc__qadc04, :string

    field :qqc__qadd01, :decimal

    field :qqc__qadd02, :decimal

    field :qqc__qadi01, :integer

    field :qqc__qadi02, :integer

    field :qqc__qadl01, Conduit.QAD.Types.Bool

    field :qqc__qadl02, Conduit.QAD.Types.Bool

    field :qqc__qadt01, Conduit.QAD.Types.Date

    field :qqc__qadt02, Conduit.QAD.Types.Date

    field :qqc_msg_sync, :string

    field :qqc_msg_secur, :string

    field :qqc_msg_persist, :string

    field :qqc_queue_pub, :string

    field :qqc_mom_cmd, :string

    field :qqc_mom_start, Conduit.QAD.Types.Bool

    field :qqc_im_arch_dir, :string

    field :qqc_ex_arch_dir, :string

    field :qqc_domain, :string

    field :oid_qqc_ctrl, :decimal, primary_key: true

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
