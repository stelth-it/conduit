defmodule Elixir.Conduit.QAD.Table.Rqr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqr_mstr" do
    field :rqr_role, :string

    field :rqr_userid, :string

    field :rqr__chr01, :string

    field :rqr__chr02, :string

    field :rqr__chr03, :string

    field :rqr__chr04, :string

    field :rqr__qadc01, :string

    field :rqr__qadc02, :string

    field :rqr__qadc03, :string

    field :rqr__qadc04, :string

    field :rqr_domain, :string

    field :oid_rqr_mstr, :decimal, primary_key: true

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
