defmodule Elixir.Conduit.QAD.Table.Cnc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cnc_ctrl" do
    field :cnc__qadi01, :integer

    field :cnc_active, Conduit.QAD.Types.Bool

    field :cnc_consign_flag, Conduit.QAD.Types.Bool

    field :cnc_max_aging_days, :integer

    field :cnc_consign_loc, :string

    field :cnc_intrans_loc, :string

    field :cnc_auto_replenish, Conduit.QAD.Types.Bool

    field :cnc_mod_userid, :string

    field :cnc_mod_date, Conduit.QAD.Types.Date

    field :cnc_user1, :string

    field :cnc_user2, :string

    field :cnc__qadc01, :string

    field :cnc__qadc02, :string

    field :cnc_domain, :string

    field :oid_cnc_ctrl, :decimal, primary_key: true

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
