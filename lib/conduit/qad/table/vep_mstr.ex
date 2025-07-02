defmodule Elixir.Conduit.QAD.Table.Vep_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vep_mstr" do
    field :vep_vendor, :string

    field :vep_vendor_source, :string

    field :vep_tran_date, Conduit.QAD.Types.Date

    field :vep_tran_id, :integer

    field :vep_order_source, :string

    field :vep_nbr, :string

    field :vep_req_nbr, :string

    field :vep_line, :integer

    field :vep_receiver, :string

    field :vep_abs_id, :string

    field :vep_part, :string

    field :vep_um, :string

    field :vep_comm_code, :string

    field :vep_acct, :string

    field :vep_cc, :string

    field :vep_buyer, :string

    field :vep_per_date, Conduit.QAD.Types.Date

    field :vep_lotser, :string

    field :vep_site, :string

    field :vep_type, :string

    field :vep_rcp_type, :string

    field :vep_fsm_type, :string

    field :vep_pur_cost, :decimal

    field :vep_disc_pct, :decimal

    field :vep_rcp_date, Conduit.QAD.Types.Date

    field :vep_rcp_time, :integer

    field :vep_qty_ord, :decimal

    field :vep_open_qty, :decimal

    field :vep_rcvd_qty, :decimal

    field :vep_loc, :string

    field :vep_ref, :string

    field :vep_asn_arr_date, Conduit.QAD.Types.Date

    field :vep_asn_arr_time, :integer

    field :vep_asn_ship_date, Conduit.QAD.Types.Date

    field :vep_asn_ship_time, :integer

    field :vep_asn_ship_qty, :decimal

    field :vep_asn_create_date, Conduit.QAD.Types.Date

    field :vep_asn_create_time, :integer

    field :vep_temp_missed_flag, Conduit.QAD.Types.Bool

    field :vep_pod_sched, Conduit.QAD.Types.Bool

    field :vep_db, :string

    field :vep_sub_type, :string

    field :vep_mod_userid, :string

    field :vep_mod_date, Conduit.QAD.Types.Date

    field :vep_user1, :string

    field :vep_user2, :string

    field :vep_user3, :string

    field :vep_user4, :string

    field :vep__qadc01, :string

    field :vep__qadc02, :string

    field :vep__qadc03, :string

    field :vep__qadc04, :string

    field :vep__qadd01, :decimal

    field :vep__qadd02, :decimal

    field :vep__qadl01, Conduit.QAD.Types.Bool

    field :vep__qadl02, Conduit.QAD.Types.Bool

    field :vep__qadt01, Conduit.QAD.Types.Date

    field :vep__qadt02, Conduit.QAD.Types.Date

    field :vep__qadi01, :integer

    field :vep__qadi02, :integer

    field :vep_sub, :string

    field :vep_domain, :string

    field :oid_vep_mstr, :decimal, primary_key: true

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
