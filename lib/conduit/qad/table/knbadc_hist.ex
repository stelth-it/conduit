defmodule Elixir.Conduit.QAD.Table.Knbadc_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_knbadc_hist" do
    field :knbadc_part, :string

    field :knbadc_site, :string

    field :knbadc_template, :string

    field :knbadc_calc_date, Conduit.QAD.Types.Date

    field :knbadc_calc_time, :decimal

    field :knbadc_keyid, :decimal

    field :knbadc_knbism_keyid, :decimal

    field :knbadc_daily_demand, :decimal

    field :knbadc_mod_date, Conduit.QAD.Types.Date

    field :knbadc_mod_userid, :string

    field :knbadc_user1, :string

    field :knbadc_user2, :string

    field :knbadc__qadc01, :string

    field :knbadc__qadc02, :string

    field :knbadc_domain, :string

    field :oid_knbadc_hist, :decimal, primary_key: true

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
