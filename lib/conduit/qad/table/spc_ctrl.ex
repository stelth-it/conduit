defmodule Elixir.Conduit.QAD.Table.Spc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_spc_ctrl" do
    field :spc_nbr, :integer

    field :spc__qad01, :integer

    field :spc_user1, :string

    field :spc_user2, :string

    field :spc__qadi01, :integer

    field :spc_domain, :string

    field :oid_spc_ctrl, :decimal, primary_key: true

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
