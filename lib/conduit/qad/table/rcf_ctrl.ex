defmodule Elixir.Conduit.QAD.Table.Rcf_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rcf_ctrl" do
    field :rcf__qadi03, :integer

    field :rcf_active, Conduit.QAD.Types.Bool

    field :rcf_inc_in_rss, Conduit.QAD.Types.Bool

    field :rcf_sch_default, Conduit.QAD.Types.Bool

    field :rcf_packing_order, Conduit.QAD.Types.Bool

    field :rcf_shipper_print, Conduit.QAD.Types.Bool

    field :rcf_invoice_print, Conduit.QAD.Types.Bool

    field :rcf_asn_edi, Conduit.QAD.Types.Bool

    field :rcf_invoice_edi, Conduit.QAD.Types.Bool

    field :rcf_firm_seq_days, :integer

    field :rcf_seq_per_container, :integer

    field :rcf_merge_seq, Conduit.QAD.Types.Bool

    field :rcf_check_seq_tol, Conduit.QAD.Types.Bool

    field :rcf_max_tol, :integer

    field :rcf_mod_userid, :string

    field :rcf_mod_date, Conduit.QAD.Types.Date

    field :rcf_mod_pgm, :string

    field :rcf_user1, :string

    field :rcf_user2, :string

    field :rcf__qadc01, :string

    field :rcf__qadc02, :string

    field :rcf__qadd01, :decimal

    field :rcf__qadd02, :decimal

    field :rcf__qadi01, :integer

    field :rcf__qadi02, :integer

    field :rcf__qadl01, Conduit.QAD.Types.Bool

    field :rcf__qadl02, Conduit.QAD.Types.Bool

    field :rcf__qadl03, Conduit.QAD.Types.Bool

    field :rcf__qadl04, Conduit.QAD.Types.Bool

    field :rcf__qadt01, Conduit.QAD.Types.Date

    field :rcf__qadt02, Conduit.QAD.Types.Date

    field :rcf_domain, :string

    field :oid_rcf_ctrl, :decimal, primary_key: true

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
