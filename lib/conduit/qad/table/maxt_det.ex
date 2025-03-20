defmodule Elixir.Conduit.QAD.Table.Maxt_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_maxt_det" do
    field :maxt_field, :string

    field :maxt_book, :string

    field :maxt_class, :string

    field :maxt_beg_date, Conduit.QAD.Types.Date

    field :maxt_end_date, Conduit.QAD.Types.Date

    field :maxt_amt, :decimal

    field :maxt__qad01, Conduit.QAD.Types.Bool

    field :maxt__qad02, :string

    field :maxt__qad03, :string

    field :maxt_user1, :string

    field :maxt_user2, :string

    field :maxt_entity, :string

    field :oid_maxt_det, :decimal, primary_key: true

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
