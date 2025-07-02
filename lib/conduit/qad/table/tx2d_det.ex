defmodule Elixir.Conduit.QAD.Table.Tx2d_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tx2d_det" do
    field :tx2d_ref, :string

    field :tx2d_nbr, :string

    field :tx2d_line, :integer

    field :tx2d_trl, :string

    field :tx2d_tr_type, :string

    field :tx2d_tax_code, :string

    field :tx2d_effdate, Conduit.QAD.Types.Date

    field :tx2d__qadd01, {:array, :decimal}

    field :tx2d__qadd02, {:array, :decimal}

    field :tx2d_totamt, :decimal

    field :tx2d_tottax, :decimal

    field :tx2d_curr, :string

    field :tx2d_user1, :string

    field :tx2d_user2, :string

    field :tx2d__chr01, :string

    field :tx2d__chr02, :string

    field :tx2d__dec01, :decimal

    field :tx2d__dec02, :decimal

    field :tx2d__dte01, Conduit.QAD.Types.Date

    field :tx2d__log01, Conduit.QAD.Types.Bool

    field :tx2d__qad01, :string

    field :tx2d__qad02, :string

    field :tx2d_edited, Conduit.QAD.Types.Bool

    field :tx2d__qad04, :decimal

    field :tx2d_posted_date, Conduit.QAD.Types.Date

    field :tx2d_rcpt_tax_point, Conduit.QAD.Types.Bool

    field :tx2d_carrier, :string

    field :tx2d_tax_env, :string

    field :tx2d_zone_from, :string

    field :tx2d_zone_to, :string

    field :tx2d_tax_type, :string

    field :tx2d_trans_ent, :string

    field :tx2d_line_site_ent, :string

    field :tx2d_taxc, :string

    field :tx2d_tax_usage, :string

    field :tx2d_tax_in, Conduit.QAD.Types.Bool

    field :tx2d_by_line, Conduit.QAD.Types.Bool

    field :tx2d_cur_tax_amt, :decimal

    field :tx2d_tax_amt, :decimal

    field :tx2d_ent_tax_amt, :decimal

    field :tx2d_cur_nontax_amt, :decimal

    field :tx2d_nontax_amt, :decimal

    field :tx2d_ent_nontax_amt, :decimal

    field :tx2d_taxable_amt, :decimal

    field :tx2d_cur_recov_amt, :decimal

    field :tx2d_recov_amt, :decimal

    field :tx2d_ent_recov_amt, :decimal

    field :tx2d_cur_abs_ret_amt, :decimal

    field :tx2d_abs_ret_amt, :decimal

    field :tx2d_ent_abs_ret_amt, :decimal

    field :tx2d__qad03, Conduit.QAD.Types.Bool

    field :tx2d__qad05, Conduit.QAD.Types.Date

    field :tx2d_usage_tax_point, Conduit.QAD.Types.Bool

    field :tx2d_domain, :string

    field :oid_tx2d_det, :decimal, primary_key: true

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
