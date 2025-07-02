defmodule Elixir.Conduit.QAD.Table.Eus_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eus_mstr" do
    field :eus_schedule, :string

    field :eus_etime, {:array, :string}

    field :eus_stime, {:array, :string}

    field :eus_mid_etime, {:array, :string}

    field :eus_mid_stime, {:array, :string}

    field :eus_days, {:array, Conduit.QAD.Types.Bool}

    field :eus_mod_date, Conduit.QAD.Types.Date

    field :eus_mod_userid, :string

    field :eus_user1, :string

    field :eus_user2, :string

    field :eus__qadc01, :string

    field :eus__qadc02, :string

    field :eus_domain, :string

    field :oid_eus_mstr, :decimal, primary_key: true

    field :eus_eu_nbr, :string

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
