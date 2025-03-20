defmodule Elixir.Conduit.QAD.Table.Shp_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_shp_hist" do
    field :shp_nbr, :string

    field :shp_line, :integer

    field :shp_shipfrom, :string

    field :shp_part, :string

    field :shp_cust_part, :string

    field :shp_open_qty, :decimal

    field :shp_ext_price, :decimal

    field :shp_due_date, Conduit.QAD.Types.Date

    field :shp_req_date, Conduit.QAD.Types.Date

    field :shp_perf_date, Conduit.QAD.Types.Date

    field :shp_ship_date, Conduit.QAD.Types.Date

    field :shp_cust, :string

    field :shp_ship_qty, :decimal

    field :shp_ship_price, :decimal

    field :shp_abs_id, :string

    field :shp_include, Conduit.QAD.Types.Bool

    field :shp_tran_id, :integer

    field :shp_mod_date, Conduit.QAD.Types.Date

    field :shp_mod_userid, :string

    field :shp_shipto, :string

    field :shp_ship_time, :string

    field :shp_rel_id, :string

    field :shp_cmtindx, :integer

    field :shp_order_category, :string

    field :shp_customer_source, :string

    field :shp_ship_um, :string

    field :shp_ship_um_conv, :decimal

    field :shp_currency, :string

    field :shp_ord_um, :string

    field :shp_ord_um_conv, :decimal

    field :shp_sched_time, :string

    field :shp_do_req, :string

    field :shp__qadc01, :string

    field :shp__qadc02, :string

    field :shp_user1, :string

    field :shp_user2, :string

    field :shp_qty_pct, :decimal

    field :shp_domain, :string

    field :oid_shp_hist, :decimal, primary_key: true

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
