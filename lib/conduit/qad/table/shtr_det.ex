defmodule Elixir.Conduit.QAD.Table.Shtr_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_shtr_det" do
    field :shtr_nbr, :string

    field :shtr_ship_id, :string

    field :shtr_cd, :string

    field :shtr_amt, :decimal

    field :shtr_curr, :string

    field :shtr_inv_nbr, :string

    field :shtr_ship_date, Conduit.QAD.Types.Date

    field :shtr_site, :string

    field :shtr__qad01, :decimal

    field :shtr__qad02, :decimal

    field :shtr__qad03, :decimal

    field :shtr__qad04, :integer

    field :shtr__qad05, {:array, :decimal}

    field :shtr_user1, :string

    field :shtr_user2, :string

    field :shtr_domain, :string

    field :oid_shtr_det, :decimal, primary_key: true

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
