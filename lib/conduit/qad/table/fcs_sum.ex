defmodule Elixir.Conduit.QAD.Table.Fcs_sum do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fcs_sum" do
    field :fcs_part, :string

    field :fcs_year, :integer

    field :fcs_fcst_qty, {:array, :decimal}

    field :fcs_sold_qty, {:array, :decimal}

    field :fcs_pr_fcst, {:array, :decimal}

    field :fcs_abnormal, {:array, :decimal}

    field :fcs_site, :string

    field :fcs_user1, :string

    field :fcs_user2, :string

    field :fcs__qadc01, :string

    field :fcs_domain, :string

    field :oid_fcs_sum, :decimal, primary_key: true

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
