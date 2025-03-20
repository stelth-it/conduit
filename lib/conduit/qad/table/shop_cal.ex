defmodule Elixir.Conduit.QAD.Table.Shop_cal do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_shop_cal" do
    field :shop_wdays, {:array, Conduit.QAD.Types.Bool}

    field :shop_hours, {:array, :decimal}

    field :shop_wkctr, :string

    field :shop_mch, :string

    field :shop_user1, :string

    field :shop_user2, :string

    field :shop_shifts, {:array, Conduit.QAD.Types.Bool}

    field :shop_site, :string

    field :shop__qadc01, :string

    field :shop_domain, :string

    field :oid_shop_cal, :decimal, primary_key: true

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
