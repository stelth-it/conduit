defmodule Elixir.Conduit.QAD.Table.Rql_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rql_mstr" do
    field :rql_level, :integer

    field :rql_amt, :decimal

    field :rql_desc, :string

    field :rql__chr01, :string

    field :rql__chr02, :string

    field :rql__chr03, :string

    field :rql__dec01, :decimal

    field :rql__chr04, :string

    field :rql__qadc01, :string

    field :rql__qadc02, :string

    field :rql__qadc03, :string

    field :rql__qadc04, :string

    field :rql_domain, :string

    field :oid_rql_mstr, :decimal, primary_key: true

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
