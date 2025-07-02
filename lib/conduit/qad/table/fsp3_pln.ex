defmodule Elixir.Conduit.QAD.Table.Fsp3_pln do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fsp3_pln" do
    field :fsp3_beg_inv, :decimal

    field :fsp3_prod_act, {:array, :decimal}

    field :fsp3_prod_fcst, {:array, :decimal}

    field :fsp3_ship_act, {:array, :decimal}

    field :fsp3_ship_fcst, {:array, :decimal}

    field :fsp3_part, :string

    field :fsp3_percent, :decimal

    field :fsp3_plan_id, :string

    field :fsp3_prod_rate, :decimal

    field :fsp3_sim_rate, :decimal

    field :fsp3_site, :string

    field :fsp3_src_pct, :decimal

    field :fsp3_target, :decimal

    field :fsp3_user1, :string

    field :fsp3_user2, :string

    field :fsp3_year, :integer

    field :fsp3_mod_userid, :string

    field :fsp3_mod_date, Conduit.QAD.Types.Date

    field :fsp3__qadc01, :string

    field :fsp3_domain, :string

    field :oid_fsp3_pln, :decimal, primary_key: true

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
