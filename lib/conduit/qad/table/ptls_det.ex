defmodule Elixir.Conduit.QAD.Table.Ptls_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ptls_det" do
    field :ptls_part, :string

    field :ptls_lotser, :string

    field :ptls_assay, :decimal

    field :ptls_cmtindx, :integer

    field :ptls_expire, Conduit.QAD.Types.Date

    field :ptls_grade, :string

    field :ptls_status, :string

    field :ptls_user1, :string

    field :ptls_user2, :string

    field :ptls__chr01, :string

    field :ptls__chr02, :string

    field :ptls__chr03, :string

    field :ptls__chr04, :string

    field :ptls__chr05, :string

    field :ptls__dec01, :decimal

    field :ptls__dec02, :decimal

    field :ptls_ref, :string

    field :ptls_domain, :string

    field :oid_ptls_det, :decimal, primary_key: true

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
