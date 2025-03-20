defmodule Elixir.Conduit.QAD.Table.Cncu_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cncu_mstr" do
    field :cncu_pkey, :integer

    field :cncu_batch, :integer

    field :cncu_trans_date, Conduit.QAD.Types.Date

    field :cncu_eff_date, Conduit.QAD.Types.Date

    field :cncu_cust_usage_ref, :string

    field :cncu_cust_usage_date, Conduit.QAD.Types.Date

    field :cncu_so_nbr, :string

    field :cncu_sod_line, :integer

    field :cncu_site, :string

    field :cncu_shipto, :string

    field :cncu_cust, :string

    field :cncu_part, :string

    field :cncu_custpart, :string

    field :cncu_usage_qty, :decimal

    field :cncu_usage_um, :string

    field :cncu_usage_um_conv, :decimal

    field :cncu_usage_so_um_conv, :decimal

    field :cncu_cum_qty, :decimal

    field :cncu_po, :string

    field :cncu_lotser, :string

    field :cncu_ref, :string

    field :cncu_auth, :string

    field :cncu_selfbill_auth, :string

    field :cncu_cust_job, :string

    field :cncu_cust_seq, :string

    field :cncu_cust_ref, :string

    field :cncu_modelyr, :string

    field :cncu_trnbr, :integer

    field :cncu_invoice, :string

    field :cncu_origin, :string

    field :cncu_manual_qty, :decimal

    field :cncu_mod_userid, :string

    field :cncu_mod_date, Conduit.QAD.Types.Date

    field :cncu_user1, :string

    field :cncu_user2, :string

    field :cncu__qadc01, :string

    field :cncu__qadc02, :string

    field :cncu_domain, :string

    field :oid_cncu_mstr, :decimal, primary_key: true

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
