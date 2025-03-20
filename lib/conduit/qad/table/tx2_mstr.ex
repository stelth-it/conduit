defmodule Elixir.Conduit.QAD.Table.Tx2_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_tx2_mstr" do
    field :tx2_tax_code, :string

    field :tx2_tax_type, :string

    field :tx2_pt_taxc, :string

    field :tx2_tax_usage, :string

    field :tx2_effdate, Conduit.QAD.Types.Date

    field :tx2_desc, :string

    field :tx2__qadc01, {:array, :string}

    field :tx2__qadc02, {:array, :string}

    field :tx2_tax_pct, :decimal

    field :tx2_method, :string

    field :tx2_by_line, Conduit.QAD.Types.Bool

    field :tx2_base, :string

    field :tx2_min, :decimal

    field :tx2_max, :decimal

    field :tx2_mod_date, Conduit.QAD.Types.Date

    field :tx2_userid, :string

    field :tx2_pct_recv, :decimal

    field :tx2_trl_taxable, Conduit.QAD.Types.Bool

    field :tx2_cmtindx, :integer

    field :tx2_curr, :string

    field :tx2_inv_disc, Conduit.QAD.Types.Bool

    field :tx2_pmt_disc, Conduit.QAD.Types.Bool

    field :tx2_update_tax, Conduit.QAD.Types.Bool

    field :tx2_user1, :string

    field :tx2_user2, :string

    field :tx2__chr01, :string

    field :tx2__chr02, :string

    field :tx2__dec01, :decimal

    field :tx2__dec02, :decimal

    field :tx2__dte01, Conduit.QAD.Types.Date

    field :tx2__log01, Conduit.QAD.Types.Bool

    field :tx2__qad01, :string

    field :tx2__qad02, :string

    field :tx2__qad03, Conduit.QAD.Types.Bool

    field :tx2__qad04, :decimal

    field :tx2__qad05, Conduit.QAD.Types.Date

    field :tx2_rcpt_tax_point, Conduit.QAD.Types.Bool

    field :tx2_ar_acct, :string

    field :tx2_ar_cc, :string

    field :tx2_ara_acct, :string

    field :tx2_ara_cc, :string

    field :tx2_ara_use, Conduit.QAD.Types.Bool

    field :tx2_ap_acct, :string

    field :tx2_ap_cc, :string

    field :tx2_apr_acct, :string

    field :tx2_apr_cc, :string

    field :tx2_apr_use, Conduit.QAD.Types.Bool

    field :tx2_tax_in, Conduit.QAD.Types.Bool

    field :tx2_exp_date, Conduit.QAD.Types.Date

    field :tx2_ec_sales_list, Conduit.QAD.Types.Bool

    field :tx2_ec_process_work, Conduit.QAD.Types.Bool

    field :tx2_apr_sub, :string

    field :tx2_ap_sub, :string

    field :tx2_ara_sub, :string

    field :tx2_ar_sub, :string

    field :tx2_ap_disc_acct, :string

    field :tx2_ap_disc_cc, :string

    field :tx2_ap_disc_sub, :string

    field :tx2_ar_disc_acct, :string

    field :tx2_ar_disc_cc, :string

    field :tx2_ar_disc_sub, :string

    field :tx2_group, :string

    field :tx2_stx_acct, :string

    field :tx2_stx_cc, :string

    field :tx2_stx_sub, :string

    field :tx2_register, :string

    field :tx2_usage_tax_point, Conduit.QAD.Types.Bool

    field :tx2_domain, :string

    field :oid_tx2_mstr, :decimal, primary_key: true

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
