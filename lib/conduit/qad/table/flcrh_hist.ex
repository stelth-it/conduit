defmodule Elixir.Conduit.QAD.Table.Flcrh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flcrh_hist" do
    field :flcrh_site, :string

    field :flcrh_production_line, :string

    field :flcrh_schedule_code, :string

    field :flcrh_start_date, Conduit.QAD.Types.Date

    field :flcrh_rate_code, :string

    field :flcrh_entry_mode, Conduit.QAD.Types.Bool

    field :flcrh_mod_userid, :string

    field :flcrh_mod_date, Conduit.QAD.Types.Date

    field :flcrh_user1, :string

    field :flcrh_user2, :string

    field :flcrh_userc03, :string

    field :flcrh_userd01, :decimal

    field :flcrh_useri01, :integer

    field :flcrh_userl01, Conduit.QAD.Types.Bool

    field :flcrh_usert01, Conduit.QAD.Types.Date

    field :flcrh__qadc01, :string

    field :flcrh__qadc02, :string

    field :flcrh__qadc03, :string

    field :flcrh__qadd01, :decimal

    field :flcrh__qadi01, :integer

    field :flcrh__qadl01, Conduit.QAD.Types.Bool

    field :flcrh__qadt01, Conduit.QAD.Types.Date

    field :flcrh_domain, :string

    field :oid_flcrh_hist, :decimal, primary_key: true

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
