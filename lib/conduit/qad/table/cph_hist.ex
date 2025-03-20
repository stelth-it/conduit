defmodule Elixir.Conduit.QAD.Table.Cph_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cph_hist" do
    field :cph_year, :integer

    field :cph_cust, :string

    field :cph_ship, :string

    field :cph_pl, :string

    field :cph_part, :string

    field :cph_qty, {:array, :decimal}

    field :cph_sales, {:array, :decimal}

    field :cph_cost, {:array, :decimal}

    field :cph_tot_qty, :decimal

    field :cph_tot_sale, :decimal

    field :cph_tot_cost, :decimal

    field :cph_type, :string

    field :cph_user1, :string

    field :cph_user2, :string

    field :cph_smonth, :integer

    field :cph__chr01, :string

    field :cph__chr02, :string

    field :cph__chr03, :string

    field :cph__chr04, :string

    field :cph__chr05, :string

    field :cph__dte01, Conduit.QAD.Types.Date

    field :cph__dte02, Conduit.QAD.Types.Date

    field :cph__log01, Conduit.QAD.Types.Bool

    field :cph__dec01, {:array, :decimal}

    field :cph__dec02, {:array, :decimal}

    field :cph_site, :string

    field :cph_domain, :string

    field :oid_cph_hist, :decimal, primary_key: true

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
