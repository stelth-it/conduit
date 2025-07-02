defmodule Elixir.Conduit.QAD.Table.Chg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_chg_mstr" do
    field :chg_line, :string

    field :chg_from, :string

    field :chg_to, :string

    field :chg_time, :decimal

    field :chg_start, :decimal

    field :chg_user1, :string

    field :chg__chr01, :string

    field :chg__chr02, :string

    field :chg__chr03, :string

    field :chg__chr04, :string

    field :chg__chr05, :string

    field :chg__dec01, :decimal

    field :chg_site, :string

    field :chg_user2, :string

    field :chg_domain, :string

    field :oid_chg_mstr, :decimal, primary_key: true

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
