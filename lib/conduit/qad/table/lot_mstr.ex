defmodule Elixir.Conduit.QAD.Table.Lot_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lot_mstr" do
    field :lot_part, :string

    field :lot_serial, :string

    field :lot_nbr, :string

    field :lot_create, Conduit.QAD.Types.Date

    field :lot_userid, :string

    field :lot__dte01, Conduit.QAD.Types.Date

    field :lot__dte02, Conduit.QAD.Types.Date

    field :lot__dte03, Conduit.QAD.Types.Date

    field :lot__dte04, Conduit.QAD.Types.Date

    field :lot__dte05, Conduit.QAD.Types.Date

    field :lot__dte06, Conduit.QAD.Types.Date

    field :lot__dec01, :decimal

    field :lot__dec02, :decimal

    field :lot__dec03, :decimal

    field :lot__dec04, :decimal

    field :lot__dec05, :decimal

    field :lot__dec06, :decimal

    field :lot__chr01, :string

    field :lot__chr02, :string

    field :lot__chr03, :string

    field :lot__chr04, :string

    field :lot__chr05, :string

    field :lot__chr06, :string

    field :lot_cmtindx, :integer

    field :lot_line, :string

    field :lot_pot_um, :string

    field :lot_pot_conv, :decimal

    field :lot_trans, :string

    field :lot_user1, :string

    field :lot_user2, :string

    field :lot_domain, :string

    field :oid_lot_mstr, :decimal, primary_key: true

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
