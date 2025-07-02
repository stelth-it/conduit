defmodule Elixir.Conduit.QAD.Table.Taxd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_taxd_det" do
    field :taxd_effdate, Conduit.QAD.Types.Date

    field :taxd_state, :string

    field :taxd_city, :string

    field :taxd_taxamt, {:array, :decimal}

    field :taxd_ntaxamt, {:array, :decimal}

    field :taxd_totamt, :decimal

    field :taxd_county, :string

    field :taxd_tottax, :decimal

    field :taxd_user1, :string

    field :taxd_user2, :string

    field :taxd__qad01, :string

    field :taxd__qad02, :string

    field :taxd__qad03, Conduit.QAD.Types.Bool

    field :oid_taxd_det, :decimal, primary_key: true

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
