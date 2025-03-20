defmodule Elixir.Conduit.QAD.Table.Idhlc_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_idhlc_hist" do
    field :idhlc_inv_nbr, :string

    field :idhlc_nbr, :string

    field :idhlc_line, :integer

    field :idhlc_sub_line, :integer

    field :idhlc_trl, :string

    field :idhlc_charge_category, :string

    field :idhlc_part, :string

    field :idhlc_price, :decimal

    field :idhlc_charge_type, :string

    field :idhlc_qty_inv, :decimal

    field :idhlc_um, :string

    field :idhlc_desc, :string

    field :idhlc_desc1, :string

    field :idhlc_desc2, :string

    field :idhlc_fr_class, :string

    field :idhlc_fr_wt, :decimal

    field :idhlc_fr_wt_um, :string

    field :idhlc_prodline, :string

    field :idhlc_taxable, Conduit.QAD.Types.Bool

    field :idhlc_taxc, :string

    field :idhlc_tax_env, :string

    field :idhlc_tax_usage, :string

    field :idhlc_acct, :string

    field :idhlc_sub, :string

    field :idhlc_cc, :string

    field :idhlc_project, :string

    field :idhlc_mod_userid, :string

    field :idhlc_mod_date, Conduit.QAD.Types.Date

    field :idhlc_userc01, :string

    field :idhlc_userc02, :string

    field :idhlc__qadc01, :string

    field :idhlc__qadc02, :string

    field :idhlc_domain, :string

    field :oid_idhlc_hist, :decimal, primary_key: true

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
