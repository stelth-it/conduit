defmodule Elixir.Conduit.QAD.Table.Isb_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_isb_mstr" do
    field :isb_part, :string

    field :isb_serial, :string

    field :isb_seq, :integer

    field :isb__qadi03, :integer

    field :isb_warr_dur, :integer

    field :isb_eu_nbr, :string

    field :isb_status, :string

    field :isb__qadc04, :string

    field :isb__qadi04, :integer

    field :isb_rev, :string

    field :isb_ins_date, Conduit.QAD.Types.Date

    field :isb_last_pm, Conduit.QAD.Types.Date

    field :isb_pm_days, :integer

    field :isb_so_nbr, :string

    field :isb_desc1, :string

    field :isb_desc2, :string

    field :isb_ref, :integer

    field :isb_warr_cd, :string

    field :isb_comp, Conduit.QAD.Types.Bool

    field :isb_parent, Conduit.QAD.Types.Bool

    field :isb_warr_exp, Conduit.QAD.Types.Date

    field :isb_next_pm, Conduit.QAD.Types.Date

    field :isb_so_line, :integer

    field :isb_inv_nbr, :string

    field :isb_owner, :string

    field :isb_tarrif, :string

    field :isb_origin, :string

    field :isb_sys_type, :string

    field :isb__chr01, :string

    field :isb__chr02, :string

    field :isb__chr03, :string

    field :isb__chr04, :string

    field :isb__chr05, :string

    field :isb__chr06, :string

    field :isb__chr07, :string

    field :isb__chr08, :string

    field :isb__chr09, :string

    field :isb__chr10, :string

    field :isb__dec01, :decimal

    field :isb__dec02, :decimal

    field :isb__dec03, :decimal

    field :isb__dte01, Conduit.QAD.Types.Date

    field :isb__dte02, Conduit.QAD.Types.Date

    field :isb__dte03, Conduit.QAD.Types.Date

    field :isb__dte04, Conduit.QAD.Types.Date

    field :isb__log01, Conduit.QAD.Types.Bool

    field :isb__log02, Conduit.QAD.Types.Bool

    field :isb__log03, Conduit.QAD.Types.Bool

    field :isb__log04, Conduit.QAD.Types.Bool

    field :isb__log05, Conduit.QAD.Types.Bool

    field :isb_lst_upd, Conduit.QAD.Types.Date

    field :isb_pm_um, :string

    field :isb_location, :string

    field :isb_user1, :string

    field :isb_user2, :string

    field :isb_eco, :string

    field :isb_ship_date, Conduit.QAD.Types.Date

    field :isb_ic_ref, :string

    field :isb_calibration, :decimal

    field :isb_calib_date, Conduit.QAD.Types.Date

    field :isb_model, :string

    field :isb_article, :string

    field :isb_sold_to, :string

    field :isb_price_sold, :decimal

    field :isb_rebuild, Conduit.QAD.Types.Bool

    field :isb_customer_id, :string

    field :isb_cmtindx, :integer

    field :isb_updates, :string

    field :isb_orig_ins, Conduit.QAD.Types.Date

    field :isb_plant_maint, Conduit.QAD.Types.Bool

    field :isb_eud_trnbr, :integer

    field :isb_eng_code, :string

    field :isb_lb_warr_exp, Conduit.QAD.Types.Date

    field :isb_mod_userid, :string

    field :isb_mod_date, Conduit.QAD.Types.Date

    field :isb__qadc01, :string

    field :isb__qadc02, :string

    field :isb__qadc03, :string

    field :isb__qadt01, Conduit.QAD.Types.Date

    field :isb__qadt02, Conduit.QAD.Types.Date

    field :isb__qadt03, Conduit.QAD.Types.Date

    field :isb__qade01, :decimal

    field :isb__qade02, :decimal

    field :isb__qade03, :decimal

    field :isb__qadi01, :integer

    field :isb__qadi02, :integer

    field :isb__qadl01, Conduit.QAD.Types.Bool

    field :isb__qadl02, Conduit.QAD.Types.Bool

    field :isb__qadl03, Conduit.QAD.Types.Bool

    field :isb_qty, :decimal

    field :isb_meter_rdg, :decimal

    field :isb_meter_date, Conduit.QAD.Types.Date

    field :isb_meter_interval, :decimal

    field :isb_meter_um, :string

    field :isb_warr_override, Conduit.QAD.Types.Bool

    field :isb_domain, :string

    field :oid_isb_mstr, :decimal, primary_key: true

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
