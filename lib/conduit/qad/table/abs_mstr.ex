defmodule Elixir.Conduit.QAD.Table.Abs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_abs_mstr" do
    field :abs_shipfrom, :string

    field :abs_id, :string

    field :abs_par_id, :string

    field :abs_shipto, :string

    field :abs_type, :string

    field :abs_status, :string

    field :abs_timezone, :string

    field :abs_shp_date, Conduit.QAD.Types.Date

    field :abs_shp_time, :integer

    field :abs_arr_date, Conduit.QAD.Types.Date

    field :abs_arr_time, :integer

    field :abs_crt_date, Conduit.QAD.Types.Date

    field :abs_crt_time, :integer

    field :abs_apr_date, Conduit.QAD.Types.Date

    field :abs_apr_time, :integer

    field :abs_apr_userid, :string

    field :abs_gwt, :decimal

    field :abs_nwt, :decimal

    field :abs_vol, :decimal

    field :abs_wt_um, :string

    field :abs_vol_um, :string

    field :abs_dim_um, :string

    field :abs_fr_class, :string

    field :abs_est_fcst, :decimal

    field :abs_act_fcst, :decimal

    field :abs_fr_curr, :string

    field :abs_doc_data, {:array, :string}

    field :abs_dataset, :string

    field :abs_order, :string

    field :abs_line, :string

    field :abs_inv_nbr, :string

    field :abs_item, :string

    field :abs_lotser, :string

    field :abs_ref, :string

    field :abs_qty, :decimal

    field :abs_ship_qty, :decimal

    field :abs_cum_qty, :decimal

    field :abs_site, :string

    field :abs_loc, :string

    field :abs_cust_ref, :string

    field :abs_cmtindx, :integer

    field :abs__chr01, :string

    field :abs__chr02, :string

    field :abs__chr03, :string

    field :abs__chr04, :string

    field :abs__chr05, :string

    field :abs__chr06, :string

    field :abs__chr07, :string

    field :abs__chr08, :string

    field :abs__chr09, :string

    field :abs__chr10, :string

    field :abs__dec01, :decimal

    field :abs__dec02, :decimal

    field :abs__dec03, :decimal

    field :abs__dec04, :decimal

    field :abs__dec05, :decimal

    field :abs__dec06, :decimal

    field :abs__dec07, :decimal

    field :abs__dec08, :decimal

    field :abs__dec09, :decimal

    field :abs__dec10, :decimal

    field :abs__qad01, :string

    field :abs__qad02, :string

    field :abs__qad03, :string

    field :abs__qad04, :string

    field :abs__qad05, :string

    field :abs__qad06, :string

    field :abs__qad07, :string

    field :abs__qad08, :string

    field :abs__qad09, :string

    field :abs__qad10, :string

    field :abs_user1, :string

    field :abs_user2, :string

    field :abs_master_id, :string

    field :abs_inv_mov, :string

    field :abs_nr_id, :string

    field :abs_format, :string

    field :abs_cons_ship, :string

    field :abs__qadc01, :string

    field :abs_lang, :string

    field :abs_canceled, Conduit.QAD.Types.Bool

    field :abs__qadd01, :decimal

    field :abs_trl_cmtindx, :integer

    field :abs_eff_date, Conduit.QAD.Types.Date

    field :abs_cancel_date, Conduit.QAD.Types.Date

    field :abs_preship_nr_id, :string

    field :abs_preship_id, :string

    field :abs_fa_lot, :string

    field :abs_asn_crt_date, Conduit.QAD.Types.Date

    field :abs_asn_crt_time, :integer

    field :abs_export_batch, :integer

    field :abs_export_date, Conduit.QAD.Types.Date

    field :abs_export_time, :integer

    field :abs_charge_type, :string

    field :abs_price, :decimal

    field :abs_desc, :string

    field :abs_master_shipfrom, :string

    field :abs_domain, :string

    field :oid_abs_mstr, :decimal, primary_key: true

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
