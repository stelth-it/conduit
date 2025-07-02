defmodule Elixir.Conduit.QAD.Table.Rqj_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqj_mstr" do
    field :rqj_job, :string

    field :rqj_desc, :string

    field :rqj_start, Conduit.QAD.Types.Date

    field :rqj_end, Conduit.QAD.Types.Date

    field :rqj__chr01, :string

    field :rqj__chr02, :string

    field :rqj__chr03, :string

    field :rqj__chr04, :string

    field :rqj__qadc01, :string

    field :rqj__qadc02, :string

    field :rqj__qadc03, :string

    field :rqj__qadc04, :string

    field :rqj_domain, :string

    field :oid_rqj_mstr, :decimal, primary_key: true

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
