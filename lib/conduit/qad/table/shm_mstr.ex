defmodule Elixir.Conduit.QAD.Table.Shm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_shm_mstr" do
    field :shm_code, :string

    field :shm_src_site, :string

    field :shm_rec_site, :string

    field :shm_start, Conduit.QAD.Types.Date

    field :shm_end, Conduit.QAD.Types.Date

    field :shm_load_lt, :decimal

    field :shm_transit, :decimal

    field :shm_unld_lt, :decimal

    field :shm_ship_day, {:array, Conduit.QAD.Types.Bool}

    field :shm_rec_day, {:array, Conduit.QAD.Types.Bool}

    field :shm_cmtindx, :integer

    field :shm_no_units, :integer

    field :shm_user1, :string

    field :shm_user2, :string

    field :shm__qadc01, :string

    field :shm_domain, :string

    field :oid_shm_mstr, :decimal, primary_key: true

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
