defmodule Elixir.Conduit.QAD.Table.Txc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_txc_ctrl" do
    field :txc_index1, :integer

    field :txc_ctry_code, :string

    field :txc_round, :string

    field :txc_inv_hist, Conduit.QAD.Types.Bool

    field :txc_edit_hist, Conduit.QAD.Types.Bool

    field :txc_method, :string

    field :txc_by_line, Conduit.QAD.Types.Bool

    field :txc_inv_disc, Conduit.QAD.Types.Bool

    field :txc_pmt_disc, Conduit.QAD.Types.Bool

    field :txc_update_tax, Conduit.QAD.Types.Bool

    field :txc_tax_code, :string

    field :txc_user1, :string

    field :txc_user2, :string

    field :txc__chr01, :string

    field :txc__chr02, :string

    field :txc__dec01, :decimal

    field :txc__dec02, :decimal

    field :txc__dte01, Conduit.QAD.Types.Date

    field :txc__log01, Conduit.QAD.Types.Bool

    field :txc__qad01, :string

    field :txc__qad02, :string

    field :txc__qad03, Conduit.QAD.Types.Bool

    field :txc__qad04, :decimal

    field :txc__qad05, Conduit.QAD.Types.Date

    field :txc_rcpt_tax_point, Conduit.QAD.Types.Bool

    field :txc_val_vat_reg, Conduit.QAD.Types.Bool

    field :txc_prt_vat_reg, Conduit.QAD.Types.Bool

    field :txc_tax_zone, :string

    field :txc_tax_env, :string

    field :txc_detrp, Conduit.QAD.Types.Bool

    field :txc_usage_tax_point, Conduit.QAD.Types.Bool

    field :txc_domain, :string

    field :oid_txc_ctrl, :decimal, primary_key: true

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
