defmodule Elixir.Conduit.QAD.Table.Rqc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqc_mstr" do
    field :rqc_category, :string

    field :rqc_desc, :string

    field :rqc__chr01, :string

    field :rqc__chr02, :string

    field :rqc__chr03, :string

    field :rqc__chr04, :string

    field :rqc__qadc01, :string

    field :rqc__qadc02, :string

    field :rqc__qadc03, :string

    field :rqc__qadc04, :string

    field :rqc_domain, :string

    field :oid_rqc_mstr, :decimal, primary_key: true

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
