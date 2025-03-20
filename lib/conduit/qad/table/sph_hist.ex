defmodule Elixir.Conduit.QAD.Table.Sph_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sph_hist" do
    field :sph_year, :integer

    field :sph_slspsn1, :string

    field :sph_sales, {:array, :decimal}

    field :sph_cost, {:array, :decimal}

    field :sph_quota, {:array, :decimal}

    field :sph_tot_sale, :decimal

    field :sph_tot_cost, :decimal

    field :sph_user1, :string

    field :sph_user2, :string

    field :sph_smonth, :integer

    field :sph_type, :string

    field :sph__chr01, :string

    field :sph__chr02, :string

    field :sph__chr03, :string

    field :sph__chr04, :string

    field :sph__chr05, :string

    field :sph__dte01, Conduit.QAD.Types.Date

    field :sph__dte02, Conduit.QAD.Types.Date

    field :sph__log01, Conduit.QAD.Types.Bool

    field :sph__dec01, {:array, :decimal}

    field :sph__dec02, {:array, :decimal}

    field :sph_domain, :string

    field :oid_sph_hist, :decimal, primary_key: true

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
