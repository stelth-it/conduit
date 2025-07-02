defmodule Elixir.Conduit.QAD.Table.Rcc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rcc_mstr" do
    field :rcc_addr, :string

    field :rcc_inc_in_rss, Conduit.QAD.Types.Bool

    field :rcc_packing_order, Conduit.QAD.Types.Bool

    field :rcc_shipper_print, Conduit.QAD.Types.Bool

    field :rcc_invoice_print, Conduit.QAD.Types.Bool

    field :rcc_asn_edi, Conduit.QAD.Types.Bool

    field :rcc_invoice_edi, Conduit.QAD.Types.Bool

    field :rcc_firm_seq_days, :integer

    field :rcc_seq_per_container, :integer

    field :rcc_merge_seq, Conduit.QAD.Types.Bool

    field :rcc_check_seq_tol, Conduit.QAD.Types.Bool

    field :rcc_max_tol, :integer

    field :rcc_mod_userid, :string

    field :rcc_mod_date, Conduit.QAD.Types.Date

    field :rcc_mod_pgm, :string

    field :rcc_user1, :string

    field :rcc_user2, :string

    field :rcc__qadc01, :string

    field :rcc__qadc02, :string

    field :rcc__qadd01, :decimal

    field :rcc__qadd02, :decimal

    field :rcc__qadi01, :integer

    field :rcc__qadi02, :integer

    field :rcc__qadl01, Conduit.QAD.Types.Bool

    field :rcc__qadl02, Conduit.QAD.Types.Bool

    field :rcc__qadl03, Conduit.QAD.Types.Bool

    field :rcc__qadl04, Conduit.QAD.Types.Bool

    field :rcc__qadt01, Conduit.QAD.Types.Date

    field :rcc__qadt02, Conduit.QAD.Types.Date

    field :rcc_domain, :string

    field :oid_rcc_mstr, :decimal, primary_key: true

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
