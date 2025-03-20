defmodule Elixir.Conduit.QAD.Table.Cost_cal do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cost_cal" do
    field :cost_set, :string

    field :cost_site, :string

    field :cost_start, Conduit.QAD.Types.Date

    field :cost_memo, :string

    field :cost_cmtindx, :integer

    field :cost_user1, :string

    field :cost_user2, :string

    field :cost__qadc01, :string

    field :cost_domain, :string

    field :oid_cost_cal, :decimal, primary_key: true

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
