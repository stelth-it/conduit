defmodule Elixir.Conduit.QAD.Table.Fsp1_pln do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fsp1_pln" do
    field :fsp1_beg_inv, :decimal

    field :fsp1_bklg_act, {:array, :decimal}

    field :fsp1_bklg_fcst, {:array, :decimal}

    field :fsp1_cost_act, {:array, :decimal}

    field :fsp1_cost_fcst, {:array, :decimal}

    field :fsp1_part, :string

    field :fsp1_percent, :decimal

    field :fsp1_plan_id, :string

    field :fsp1_prod_rate, :decimal

    field :fsp1_sim_rate, :decimal

    field :fsp1_site, :string

    field :fsp1_src_pct, :decimal

    field :fsp1_target, :decimal

    field :fsp1_user1, :string

    field :fsp1_user2, :string

    field :fsp1_year, :integer

    field :fsp1_mod_userid, :string

    field :fsp1_mod_date, Conduit.QAD.Types.Date

    field :fsp1__qadc01, :string

    field :fsp1_domain, :string

    field :oid_fsp1_pln, :decimal, primary_key: true

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
