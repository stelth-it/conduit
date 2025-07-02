defmodule Elixir.Conduit.QAD.Table.Fslp_pln do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fslp_pln" do
    field :fslp_plan_id, :string

    field :fslp_site, :string

    field :fslp_part, :string

    field :fslp_year, :integer

    field :fslp_line, :string

    field :fslp_prod_fcst, {:array, :decimal}

    field :fslp_prod_act, {:array, :decimal}

    field :fslp_user1, :string

    field :fslp_user2, :string

    field :fslp__dec01, :decimal

    field :fslp__dec02, :decimal

    field :fslp__dec03, {:array, :decimal}

    field :fslp__dec04, {:array, :decimal}

    field :fslp_domain, :string

    field :oid_fslp_pln, :decimal, primary_key: true

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
