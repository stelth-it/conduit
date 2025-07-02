defmodule Elixir.Conduit.QAD.Table.Lcap_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lcap_hist" do
    field :lcap_db, :string

    field :lcap_table, :string

    field :lcap_qualifier, :string

    field :lcap_period, :string

    field :lcap_count1, :decimal

    field :lcap_count2, :decimal

    field :lcap_count3, :decimal

    field :lcap_count4, :decimal

    field :lcap_hash, :string

    field :lcap_mod_userid, :string

    field :lcap_mod_date, Conduit.QAD.Types.Date

    field :lcap__qadc01, :string

    field :lcap__qadc02, :string

    field :lcap__qadt01, Conduit.QAD.Types.Date

    field :lcap__qadi01, :integer

    field :lcap__qadd01, :decimal

    field :lcap__qadd02, :decimal

    field :lcap__qadl01, Conduit.QAD.Types.Bool

    field :oid_lcap_hist, :decimal, primary_key: true

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
