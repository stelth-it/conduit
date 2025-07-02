defmodule Elixir.Conduit.QAD.Table.Sodlc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sodlc_det" do
    field :sodlc_order, :string

    field :sodlc_ord_line, :integer

    field :sodlc_lc_line, :integer

    field :sodlc_trl_code, :string

    field :sodlc_lc_amt, :decimal

    field :sodlc_charge_type, :string

    field :sodlc_ref, :string

    field :sodlc_one_time, Conduit.QAD.Types.Bool

    field :sodlc_times_charged, :integer

    field :sodlc_owned_by, :string

    field :sodlc_abs_shipfrom, :string

    field :sodlc_ext_price, :decimal

    field :sodlc_acct, :string

    field :sodlc_cc, :string

    field :sodlc_taxable, Conduit.QAD.Types.Bool

    field :sodlc_taxc, :string

    field :sodlc_sub, :string

    field :sodlc_project, :string

    field :sodlc_mod_userid, :string

    field :sodlc_mod_date, Conduit.QAD.Types.Date

    field :sodlc_userc01, :string

    field :sodlc_userc02, :string

    field :sodlc__qadc01, :string

    field :sodlc__qadc02, :string

    field :sodlc_domain, :string

    field :oid_sodlc_det, :decimal, primary_key: true

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
