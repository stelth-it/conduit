defmodule Elixir.Conduit.QAD.Table.Eu_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eu_mstr" do
    field :eu_addr, :string

    field :eu_rsb, :string

    field :eu_phone, :string

    field :eu_modem, :string

    field :eu_login, :string

    field :eu_cm_nbr, :string

    field :eu_sort, :string

    field :eu_channel, :string

    field :eu_office, :string

    field :eu_msg, :string

    field :eu_status, :string

    field :eu_msg_end, Conduit.QAD.Types.Date

    field :eu_eng_code, :string

    field :eu_svc_area, :string

    field :eu_pri, :integer

    field :eu_lang, :string

    field :eu__chr01, :string

    field :eu__chr02, :string

    field :eu__chr03, :string

    field :eu__chr04, :string

    field :eu__chr05, :string

    field :eu_st_time, :string

    field :eu_ed_time, :string

    field :eu__chr06, :string

    field :eu__chr07, :string

    field :eu__chr08, :string

    field :eu__chr09, :string

    field :eu__chr10, :string

    field :eu__dec01, :decimal

    field :eu__dec02, :decimal

    field :eu__dec03, :decimal

    field :eu__dte01, Conduit.QAD.Types.Date

    field :eu__dte02, Conduit.QAD.Types.Date

    field :eu__dte03, Conduit.QAD.Types.Date

    field :eu__dte04, Conduit.QAD.Types.Date

    field :eu__log01, Conduit.QAD.Types.Bool

    field :eu__log02, Conduit.QAD.Types.Bool

    field :eu__log03, Conduit.QAD.Types.Bool

    field :eu__log04, Conduit.QAD.Types.Bool

    field :eu__log05, Conduit.QAD.Types.Bool

    field :eu_cmtindx, :integer

    field :eu_type, :string

    field :eu_application, :string

    field :eu_sic_code, :string

    field :eu_review, Conduit.QAD.Types.Date

    field :eu_node, :string

    field :eu_node_type, :string

    field :eu_name, :string

    field :eu_autorenew, Conduit.QAD.Types.Bool

    field :eu_disc_pct, :decimal

    field :eu_user1, :string

    field :eu_user2, :string

    field :eu_po_nbr, :string

    field :eu_po_limit, :decimal

    field :eu_po_accum, :decimal

    field :eu_renew_days, :integer

    field :eu_eng_sec, :string

    field :eu_eng_group, :string

    field :eu_rebuild_isb, Conduit.QAD.Types.Bool

    field :eu_trv_time, :string

    field :eu_trv_dist, :integer

    field :eu_create_isb, Conduit.QAD.Types.Bool

    field :eu_reseller, Conduit.QAD.Types.Bool

    field :eu_updates, :string

    field :eu_trv_um, :string

    field :eu_es_nbr, :string

    field :eu_time_zone, :integer

    field :eu_un_billed, :decimal

    field :eu_zip, :string

    field :eu_sep_invoice, Conduit.QAD.Types.Bool

    field :eu_receipt_days, :integer

    field :eu_ship_days, :integer

    field :eu_po_reqd, Conduit.QAD.Types.Bool

    field :eu__qadc01, :string

    field :eu__qadc02, :string

    field :eu__qadc03, :string

    field :eu__qadi01, :integer

    field :eu__qadi02, :integer

    field :eu__qadt01, Conduit.QAD.Types.Date

    field :eu__qadt02, Conduit.QAD.Types.Date

    field :eu__qadd01, :decimal

    field :eu__qadl01, Conduit.QAD.Types.Bool

    field :eu__qadl02, Conduit.QAD.Types.Bool

    field :eu__qadl03, Conduit.QAD.Types.Bool

    field :eu_mod_userid, :string

    field :eu_mod_date, Conduit.QAD.Types.Date

    field :eu_domain, :string

    field :oid_eu_mstr, :decimal, primary_key: true

    field :eu_schedule, :string

    field :eu_email, :string

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
