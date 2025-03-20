defmodule Elixir.Conduit.QAD.Table.Cncix_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cncix_mstr" do
    field :cncix_pkey, :integer

    field :cncix_ship_trnbr, :integer

    field :cncix_selfbill, Conduit.QAD.Types.Bool

    field :cncix_so_nbr, :string

    field :cncix_sod_line, :integer

    field :cncix_site, :string

    field :cncix_shipto, :string

    field :cncix_cust, :string

    field :cncix_part, :string

    field :cncix_custpart, :string

    field :cncix_qty_ship, :decimal

    field :cncix_stock_um, :string

    field :cncix_price, :decimal

    field :cncix_ship_value, :decimal

    field :cncix_curr, :string

    field :cncix_asn_shipper, :string

    field :cncix_auth, :string

    field :cncix_po, :string

    field :cncix_ship_date, Conduit.QAD.Types.Date

    field :cncix_qty_stock, :decimal

    field :cncix_current_loc, :string

    field :cncix_lotser, :string

    field :cncix_ref, :string

    field :cncix_cust_job, :string

    field :cncix_cust_seq, :string

    field :cncix_cust_ref, :string

    field :cncix_cust_dock, :string

    field :cncix_line_feed, :string

    field :cncix_modelyr, :string

    field :cncix_aged_date, Conduit.QAD.Types.Date

    field :cncix_orig_aged_date, Conduit.QAD.Types.Date

    field :cncix_intransit, Conduit.QAD.Types.Bool

    field :cncix_mod_userid, :string

    field :cncix_mod_date, Conduit.QAD.Types.Date

    field :cncix_user1, :string

    field :cncix_user2, :string

    field :cncix__qadc01, :string

    field :cncix__qadc02, :string

    field :cncix_int_consignment, Conduit.QAD.Types.Bool

    field :cncix_domain, :string

    field :oid_cncix_mstr, :decimal, primary_key: true

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
