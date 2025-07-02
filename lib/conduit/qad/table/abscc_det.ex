defmodule Elixir.Conduit.QAD.Table.Abscc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_abscc_det" do
    field :abscc_abs_id, :string

    field :abscc_abs_shipfrom, :string

    field :abscc_order, :string

    field :abscc_ord_line, :integer

    field :abscc_container, :string

    field :abscc_qty, :decimal

    field :abscc_cont_price, :decimal

    field :abscc_inv_nbr, :string

    field :abscc_charge_type, :string

    field :abscc_ref, :string

    field :abscc_shipto, :string

    field :abscc_shp_date, Conduit.QAD.Types.Date

    field :abscc_confirmed, Conduit.QAD.Types.Bool

    field :abscc_inv_post, Conduit.QAD.Types.Bool

    field :abscc_fr_class, :string

    field :abscc_ship_wt, :decimal

    field :abscc_ship_wt_um, :string

    field :abscc_sls_acct, :string

    field :abscc_sls_cc, :string

    field :abscc_taxc, :string

    field :abscc_taxable, Conduit.QAD.Types.Bool

    field :abscc_sls_sub, :string

    field :abscc_project, :string

    field :abscc_mod_userid, :string

    field :abscc_mod_date, Conduit.QAD.Types.Date

    field :abscc_userc01, :string

    field :abscc_userc02, :string

    field :abscc__qadc01, :string

    field :abscc__qadc02, :string

    field :abscc_domain, :string

    field :oid_abscc_det, :decimal, primary_key: true

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
