defmodule Elixir.Conduit.QAD.Table.Shc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_shc_ctrl" do
    field :shc__qadi01, :integer

    field :shc_preship_nr_id, :string

    field :shc_ship_nr_id, :string

    field :shc_master_nr_id, :string

    field :shc_require_inv_mov, Conduit.QAD.Types.Bool

    field :shc_trl_amts, Conduit.QAD.Types.Bool

    field :shc_user1, :string

    field :shc_user2, :string

    field :shc__qadc01, :string

    field :shc_format, :string

    field :shc_ship_rcpt, Conduit.QAD.Types.Bool

    field :shc_domain, :string

    field :oid_shc_ctrl, :decimal, primary_key: true

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
