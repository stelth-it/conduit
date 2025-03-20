defmodule Elixir.Conduit.QAD.Table.Absl_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_absl_det" do
    field :absl_abs_id, :string

    field :absl_abs_shipfrom, :string

    field :absl_order, :string

    field :absl_ord_line, :integer

    field :absl_inv_nbr, :string

    field :absl_lc_line, :integer

    field :absl_trl_code, :string

    field :absl_lc_amt, :decimal

    field :absl_charge_type, :string

    field :absl_ref, :string

    field :absl_confirmed, Conduit.QAD.Types.Bool

    field :absl_inv_post, Conduit.QAD.Types.Bool

    field :absl_ext_price, :decimal

    field :absl_acct, :string

    field :absl_cc, :string

    field :absl_taxable, Conduit.QAD.Types.Bool

    field :absl_taxc, :string

    field :absl_sub, :string

    field :absl_project, :string

    field :absl_mod_userid, :string

    field :absl_mod_date, Conduit.QAD.Types.Date

    field :absl_userc01, :string

    field :absl_userc02, :string

    field :absl__qadc01, :string

    field :absl__qadc02, :string

    field :absl_domain, :string

    field :oid_absl_det, :decimal, primary_key: true

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
