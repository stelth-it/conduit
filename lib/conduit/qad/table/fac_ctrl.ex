defmodule Elixir.Conduit.QAD.Table.Fac_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fac_ctrl" do
    field :fac__qadi01, :integer

    field :fac_so_rec, Conduit.QAD.Types.Bool

    field :fac_wo_rec, Conduit.QAD.Types.Bool

    field :fac_unit_qty, Conduit.QAD.Types.Bool

    field :fac_user1, :string

    field :fac_user2, :string

    field :fac__qadc01, :string

    field :fac_domain, :string

    field :oid_fac_ctrl, :decimal, primary_key: true

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
