defmodule Elixir.Conduit.QAD.Table.Rnd_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rnd_mstr" do
    field :rnd_rnd_mthd, :string

    field :rnd_desc, :string

    field :rnd_unit, :decimal

    field :rnd_thrshld, :decimal

    field :rnd_dec_pt, :string

    field :rnd__qad01, :string

    field :rnd__qad02, :string

    field :rnd__qad03, :string

    field :rnd__qad04, :string

    field :rnd__chr01, :string

    field :rnd__chr02, :string

    field :rnd__chr03, :string

    field :rnd__chr04, :string

    field :rnd_user1, :string

    field :rnd_user2, :string

    field :rnd_domain, :string

    field :oid_rnd_mstr, :decimal, primary_key: true

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
