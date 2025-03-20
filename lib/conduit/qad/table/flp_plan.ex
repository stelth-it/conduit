defmodule Elixir.Conduit.QAD.Table.Flp_plan do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flp_plan" do
    field :flp_site, :string

    field :flp_part, :string

    field :flp_year, :integer

    field :flp_line, :string

    field :flp_prod_act, {:array, :decimal}

    field :flp_prod_fcst, {:array, :decimal}

    field :flp_user1, :string

    field :flp_user2, :string

    field :flp__dec01, :decimal

    field :flp__dec02, :decimal

    field :flp__dec03, {:array, :decimal}

    field :flp__dec04, {:array, :decimal}

    field :flp_domain, :string

    field :oid_flp_plan, :decimal, primary_key: true

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
