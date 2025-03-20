defmodule Elixir.Conduit.QAD.Table.Dprt_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dprt_det" do
    field :dprt_method, :string

    field :dprt_year, :integer

    field :dprt_mnth, :integer

    field :dprt_amt, :decimal

    field :dprt_percent, :decimal

    field :dprt__qad01, Conduit.QAD.Types.Bool

    field :dprt__qad02, :string

    field :dprt__qad03, :string

    field :dprt_user1, :string

    field :dprt_user2, :string

    field :oid_dprt_det, :decimal, primary_key: true

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
