defmodule Elixir.Conduit.QAD.Table.Pvod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pvod_det" do
    field :pvod_id, :integer

    field :pvod_id_line, :integer

    field :pvod_order_type, :string

    field :pvod_order, :string

    field :pvod_order_line, :integer

    field :pvod__qadc04, :string

    field :pvod_accrual_acct, :string

    field :pvod_accrual_sub, :string

    field :pvod_accrual_cc, :string

    field :pvod_project, :string

    field :pvod_accrued_amt, :decimal

    field :pvod_vouchered_amt, :decimal

    field :pvod_cost_update, Conduit.QAD.Types.Bool

    field :pvod_internal_ref, :string

    field :pvod_internal_ref_type, :string

    field :pvod_part, :string

    field :pvod_shipto, :string

    field :pvod_shipfrom, :string

    field :pvod_channel, :string

    field :pvod_mod_userid, :string

    field :pvod_mod_date, Conduit.QAD.Types.Date

    field :pvod_user1, :string

    field :pvod_user2, :string

    field :pvod__qadc01, :string

    field :pvod__qadc02, :string

    field :pvod__qadc03, :string

    field :pvod_taxable, Conduit.QAD.Types.Bool

    field :pvod_taxc, :string

    field :pvod_tax_env, :string

    field :pvod_tax_in, Conduit.QAD.Types.Bool

    field :pvod_tax_usage, :string

    field :pvod__qadd01, :decimal

    field :pvod_domain, :string

    field :oid_pvod_det, :decimal, primary_key: true

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
