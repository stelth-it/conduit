defmodule Elixir.Conduit.QAD.Table.Glc_cal do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_glc_cal" do
    field :glc_year, :integer

    field :glc_per, :integer

    field :glc_start, Conduit.QAD.Types.Date

    field :glc_end, Conduit.QAD.Types.Date

    field :glc__qad01, Conduit.QAD.Types.Bool

    field :glc__qad04, Conduit.QAD.Types.Bool

    field :glc__qad03, Conduit.QAD.Types.Bool

    field :glc__qad02, :string

    field :glc_user1, :string

    field :glc_user2, :string

    field :glc_yr_end, Conduit.QAD.Types.Bool

    field :glc_domain, :string

    field :oid_glc_cal, :decimal, primary_key: true

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
