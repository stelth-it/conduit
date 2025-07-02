defmodule Elixir.Conduit.QAD.Table.Fsp2_pln do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fsp2_pln" do
    field :fsp2_beg_inv, :decimal

    field :fsp2_inv_act, {:array, :decimal}

    field :fsp2_inv_fcst, {:array, :decimal}

    field :fsp2_ord_act, {:array, :decimal}

    field :fsp2_ord_fcst, {:array, :decimal}

    field :fsp2_part, :string

    field :fsp2_percent, :decimal

    field :fsp2_plan_id, :string

    field :fsp2_prod_rate, :decimal

    field :fsp2_sim_rate, :decimal

    field :fsp2_site, :string

    field :fsp2_src_pct, :decimal

    field :fsp2_target, :decimal

    field :fsp2_user1, :string

    field :fsp2_user2, :string

    field :fsp2_year, :integer

    field :fsp2_mod_userid, :string

    field :fsp2_mod_date, Conduit.QAD.Types.Date

    field :fsp2__qadc01, :string

    field :fsp2_domain, :string

    field :oid_fsp2_pln, :decimal, primary_key: true

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
