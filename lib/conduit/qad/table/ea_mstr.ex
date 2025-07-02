defmodule Elixir.Conduit.QAD.Table.Ea_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ea_mstr" do
    field :ea_earn, :string

    field :ea_desc, :string

    field :ea_type, :string

    field :ea_rate, :decimal

    field :ea_fed_yn, Conduit.QAD.Types.Bool

    field :ea__qad01, Conduit.QAD.Types.Bool

    field :ea__qad02, Conduit.QAD.Types.Bool

    field :ea__qad05, Conduit.QAD.Types.Bool

    field :ea__qad04, Conduit.QAD.Types.Bool

    field :ea__qad06, Conduit.QAD.Types.Bool

    field :ea__qad03, Conduit.QAD.Types.Bool

    field :ea_user1, :string

    field :ea_user2, :string

    field :ea_acc, :string

    field :ea_cc, :string

    field :ea_piece, Conduit.QAD.Types.Bool

    field :ea_reg_earn, :string

    field :ea_userid, :string

    field :ea_mod_date, Conduit.QAD.Types.Date

    field :ea_sub, :string

    field :ea_domain, :string

    field :oid_ea_mstr, :decimal, primary_key: true

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
