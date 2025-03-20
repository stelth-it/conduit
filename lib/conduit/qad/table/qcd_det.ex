defmodule Elixir.Conduit.QAD.Table.Qcd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qcd_det" do
    field :qcd_nbr, :string

    field :qcd_lot, :string

    field :qcd_iss_date, Conduit.QAD.Types.Date

    field :qcd_part, :string

    field :qcd_qty_req, :decimal

    field :qcd_qty_iss, :decimal

    field :qcd_cmtindx, :integer

    field :qcd_user1, :string

    field :qcd_user2, :string

    field :qcd_op, :integer

    field :qcd__chr01, :string

    field :qcd__chr02, :string

    field :qcd__chr03, :string

    field :qcd__chr04, :string

    field :qcd__chr05, :string

    field :qcd__dte01, Conduit.QAD.Types.Date

    field :qcd__dte02, Conduit.QAD.Types.Date

    field :qcd__dec01, :decimal

    field :qcd__dec02, :decimal

    field :qcd__log01, Conduit.QAD.Types.Bool

    field :qcd_domain, :string

    field :oid_qcd_det, :decimal, primary_key: true

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
