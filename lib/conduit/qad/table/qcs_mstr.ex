defmodule Elixir.Conduit.QAD.Table.Qcs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qcs_mstr" do
    field :qcs_part, :string

    field :qcs_lot_int, :integer

    field :qcs_days, :integer

    field :qcs_user1, :string

    field :qcs_user2, :string

    field :qcs__chr01, :string

    field :qcs__chr02, :string

    field :qcs__chr03, :string

    field :qcs__chr04, :string

    field :qcs__chr05, :string

    field :qcs_domain, :string

    field :oid_qcs_mstr, :decimal, primary_key: true

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
