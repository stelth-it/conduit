defmodule Elixir.Conduit.QAD.Table.Flsc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_flsc_mstr" do
    field :flsc_schedule_code, :string

    field :flsc_start_date, Conduit.QAD.Types.Date

    field :flsc_period_code, :string

    field :flsc_sch_um, :string

    field :flsc_desc, :string

    field :flsc_flex_fences, Conduit.QAD.Types.Bool

    field :flsc_physical_usage, Conduit.QAD.Types.Bool

    field :flsc_time_usage, Conduit.QAD.Types.Bool

    field :flsc_daily_time_usage, Conduit.QAD.Types.Bool

    field :flsc_entry_mode, Conduit.QAD.Types.Bool

    field :flsc_mod_date, Conduit.QAD.Types.Date

    field :flsc_user1, :string

    field :flsc_user2, :string

    field :flsc_userc03, :string

    field :flsc_userd01, :decimal

    field :flsc_useri01, :integer

    field :flsc_mod_userid, :string

    field :flsc_userl01, Conduit.QAD.Types.Bool

    field :flsc_usert01, Conduit.QAD.Types.Date

    field :flsc__qadc01, :string

    field :flsc__qadc02, :string

    field :flsc__qadc03, :string

    field :flsc__qadd01, :decimal

    field :flsc__qadi01, :integer

    field :flsc__qadl01, Conduit.QAD.Types.Bool

    field :flsc__qadt01, Conduit.QAD.Types.Date

    field :flsc_sch_measurement, :string

    field :flsc_rate_expression, :string

    field :flsc__qadc04, :string

    field :flsc__qadc05, :string

    field :flsc__qadc06, :string

    field :flsc__qadd02, :decimal

    field :flsc__qadi02, :integer

    field :flsc__qadl02, Conduit.QAD.Types.Bool

    field :flsc__qadt02, Conduit.QAD.Types.Date

    field :flsc_domain, :string

    field :oid_flsc_mstr, :decimal, primary_key: true

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
