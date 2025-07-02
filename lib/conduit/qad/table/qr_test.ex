defmodule Elixir.Conduit.QAD.Table.Qr_test do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qr_test" do
    field :qr_nbr, :string

    field :qr_op, :integer

    field :qr_desc, :string

    field :qr_wkctr, :string

    field :qr_act_op, :decimal

    field :qr_op_time, :decimal

    field :qr_qty_ord, :decimal

    field :qr_qty_accpt, :decimal

    field :qr_qty_rjct, :decimal

    field :qr_status, :string

    field :qr_tool, :string

    field :qr_start, Conduit.QAD.Types.Date

    field :qr_due, Conduit.QAD.Types.Date

    field :qr_lot, :string

    field :qr_part, :string

    field :qr_cmtindx, :integer

    field :qr_user1, :string

    field :qr_user2, :string

    field :qr__chr01, :string

    field :qr__chr02, :string

    field :qr__chr03, :string

    field :qr__chr04, :string

    field :qr__chr05, :string

    field :qr__dte01, Conduit.QAD.Types.Date

    field :qr__dte02, Conduit.QAD.Types.Date

    field :qr__dec01, :decimal

    field :qr__dec02, :decimal

    field :qr__log01, Conduit.QAD.Types.Bool

    field :qr_mch, :string

    field :qr_domain, :string

    field :oid_qr_test, :decimal, primary_key: true

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
