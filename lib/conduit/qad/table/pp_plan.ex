defmodule Elixir.Conduit.QAD.Table.Pp_plan do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pp_plan" do
    field :pp_prod_line, :string

    field :pp_year, :integer

    field :pp_ship_fcst, {:array, :decimal}

    field :pp_ship_act, {:array, :decimal}

    field :pp_ord_fcst, {:array, :decimal}

    field :pp_ord_act, {:array, :decimal}

    field :pp_inv_fcst, :decimal

    field :pp_inv_act, {:array, :decimal}

    field :pp_bklg_fcst, :decimal

    field :pp_bklg_act, {:array, :decimal}

    field :pp_cost_fcst, {:array, :decimal}

    field :pp_cost_act, {:array, :decimal}

    field :pp_prod_fcst, {:array, :decimal}

    field :pp_prod_act, {:array, :decimal}

    field :pp_user1, :string

    field :pp_user2, :string

    field :pp_site, :string

    field :pp__qadc01, :string

    field :pp_domain, :string

    field :oid_pp_plan, :decimal, primary_key: true

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
