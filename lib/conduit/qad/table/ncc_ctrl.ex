defmodule Elixir.Conduit.QAD.Table.Ncc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ncc_ctrl" do
    field :ncc_channel, :string

    field :ncc_pr_list, :string

    field :ncc_ln_pricing, Conduit.QAD.Types.Bool

    field :ncc_disp_weight, Conduit.QAD.Types.Bool

    field :ncc_ln_fmt, Conduit.QAD.Types.Bool

    field :ncc_cr_init, :string

    field :ncc_shipvia, :string

    field :ncc_type, :string

    field :ncc_region, :string

    field :ncc_county, :string

    field :ncc_site, :string

    field :ncc_class, :string

    field :ncc_lang, :string

    field :ncc_slspsn, {:array, :string}

    field :ncc_rmks, :string

    field :ncc_fix_pr, Conduit.QAD.Types.Bool

    field :ncc_ar_acct, :string

    field :ncc_ar_sub, :string

    field :ncc_ar_cc, :string

    field :ncc_partial, Conduit.QAD.Types.Bool

    field :ncc_taxable, Conduit.QAD.Types.Bool

    field :ncc_tax_usage, :string

    field :ncc_taxc, :string

    field :ncc_cr_rating, :string

    field :ncc_cr_limit, :decimal

    field :ncc_cr_terms, :string

    field :ncc_disc_pct, :decimal

    field :ncc_po_reqd, Conduit.QAD.Types.Bool

    field :ncc_fr_list, :string

    field :ncc_fr_min_wt, :decimal

    field :ncc_fr_terms, :string

    field :ncc_confirmed, :string

    field :ncc_show_inv, Conduit.QAD.Types.Bool

    field :ncc_tax_in, Conduit.QAD.Types.Bool

    field :ncc_tx_in_city, Conduit.QAD.Types.Bool

    field :ncc_stat, :string

    field :ncc_nc_app_id, :string

    field :ncc__qadi02, :integer

    field :ncc_mod_userid, :string

    field :ncc_mod_date, Conduit.QAD.Types.Date

    field :ncc_user1, :string

    field :ncc_user2, :string

    field :ncc__qadc01, :string

    field :ncc__qadi01, :integer

    field :ncc__qadd01, :decimal

    field :ncc__qadl01, Conduit.QAD.Types.Bool

    field :ncc__qadt01, Conduit.QAD.Types.Date

    field :ncc_domain, :string

    field :oid_ncc_ctrl, :decimal, primary_key: true

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
