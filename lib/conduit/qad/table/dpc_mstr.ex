defmodule Elixir.Conduit.QAD.Table.Dpc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dpc_mstr" do
    field :dpc_conv, :string

    field :dpc_desc, :string

    field :dpc_end_date, Conduit.QAD.Types.Date

    field :dpc_beg_date, Conduit.QAD.Types.Date

    field :dpc__qad01, :string

    field :dpc__qad02, :string

    field :dpc_acq_pct, {:array, :decimal}

    field :dpc_rt_pct, {:array, :decimal}

    field :dpc_user1, :string

    field :dpc_user2, :string

    field :oid_dpc_mstr, :decimal, primary_key: true

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
