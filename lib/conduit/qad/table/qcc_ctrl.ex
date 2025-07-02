defmodule Elixir.Conduit.QAD.Table.Qcc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qcc_ctrl" do
    field :qcc_site, :string

    field :qcc_inspect, :string

    field :qcc__qadi01, :integer

    field :qcc_wcmmts, Conduit.QAD.Types.Bool

    field :qcc_user1, :string

    field :qcc_user2, :string

    field :qcc_rcmmts, Conduit.QAD.Types.Bool

    field :qcc_nbr, :integer

    field :qcc_lot, :integer

    field :qcc_auto_nbr, Conduit.QAD.Types.Bool

    field :qcc__qadc01, :string

    field :qcc_domain, :string

    field :oid_qcc_ctrl, :decimal, primary_key: true

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
