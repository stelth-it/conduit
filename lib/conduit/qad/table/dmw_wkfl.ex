defmodule Elixir.Conduit.QAD.Table.Dmw_wkfl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dmw_wkfl" do
    field :dmw_nbr, :string

    field :dmw_bill, :string

    field :dmw_amt, :decimal

    field :dmw_disc, :decimal

    field :dmw_appl, :decimal

    field :dmw_date, Conduit.QAD.Types.Date

    field :dmw_due_date, Conduit.QAD.Types.Date

    field :dmw__dte01, Conduit.QAD.Types.Date

    field :dmw__char01, :string

    field :dmw__char02, :string

    field :dmw__char03, :string

    field :dmw__char04, :string

    field :dmw__char05, :string

    field :dmw__log01, Conduit.QAD.Types.Bool

    field :dmw_type, :string

    field :dmw_sel, :string

    field :dmw_entity, :string

    field :dmw_curr, :string

    field :dmw_bank, :string

    field :dmw_user1, :string

    field :dmw_user2, :string

    field :oid_dmw_wkfl, :decimal, primary_key: true

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
