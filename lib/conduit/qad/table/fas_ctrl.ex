defmodule Elixir.Conduit.QAD.Table.Fas_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fas_ctrl" do
    field :fas_gain_acct, :string

    field :fas_gain_cc, :string

    field :fas_gain_sub, :string

    field :fas_loss_acct, :string

    field :fas_loss_sub, :string

    field :fas_loss_cc, :string

    field :fas_minimum, :decimal

    field :fas_short_year, Conduit.QAD.Types.Bool

    field :fas_index1, :integer

    field :fas_userid, :string

    field :fas_mod_date, Conduit.QAD.Types.Date

    field :fas_next_asset, :integer

    field :fas_short_end, Conduit.QAD.Types.Date

    field :fas_detail, Conduit.QAD.Types.Bool

    field :fas__qad01, Conduit.QAD.Types.Bool

    field :fas__qad02, :string

    field :fas__qad03, :string

    field :fas_user1, :string

    field :fas_user2, :string

    field :oid_fas_ctrl, :decimal, primary_key: true

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
