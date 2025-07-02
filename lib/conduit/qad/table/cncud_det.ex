defmodule Elixir.Conduit.QAD.Table.Cncud_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cncud_det" do
    field :cncud_cncu_pkey, :integer

    field :cncud_cncix_pkey, :integer

    field :cncud_usage_qty, :decimal

    field :cncud_usage_um, :string

    field :cncud_usage_um_conv, :decimal

    field :cncud_ship_trnbr, :integer

    field :cncud_selfbill, Conduit.QAD.Types.Bool

    field :cncud_qty_ship, :decimal

    field :cncud_stock_um, :string

    field :cncud_price, :decimal

    field :cncud_ship_value, :decimal

    field :cncud_curr, :string

    field :cncud_asn_shipper, :string

    field :cncud_ship_date, Conduit.QAD.Types.Date

    field :cncud_current_loc, :string

    field :cncud_cust_dock, :string

    field :cncud_line_feed, :string

    field :cncud_aged_date, Conduit.QAD.Types.Date

    field :cncud_orig_aged_date, Conduit.QAD.Types.Date

    field :cncud_mod_userid, :string

    field :cncud_mod_date, Conduit.QAD.Types.Date

    field :cncud_user1, :string

    field :cncud_user2, :string

    field :cncud__qadc01, :string

    field :cncud__qadc02, :string

    field :cncud_int_consignment, Conduit.QAD.Types.Bool

    field :cncud_domain, :string

    field :oid_cncud_det, :decimal, primary_key: true

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
