defmodule Elixir.Conduit.QAD.Table.Flscd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flscd_det" do
    field :flscd_schedule_code, :string

    field :flscd_site, :string

    field :flscd_production_line, :string

    field :flscd_max_rate, :decimal

    field :flscd_target_rate, :decimal

    field :flscd_mod_date, Conduit.QAD.Types.Date

    field :flscd_user1, :string

    field :flscd_user2, :string

    field :flscd_userc03, :string

    field :flscd_userd01, :decimal

    field :flscd_useri01, :integer

    field :flscd_mod_userid, :string

    field :flscd_userl01, Conduit.QAD.Types.Bool

    field :flscd_usert01, Conduit.QAD.Types.Date

    field :flscd__qadc01, :string

    field :flscd__qadc02, :string

    field :flscd__qadc03, :string

    field :flscd__qadd01, :decimal

    field :flscd__qadi01, :integer

    field :flscd__qadl01, Conduit.QAD.Types.Bool

    field :flscd__qadt01, Conduit.QAD.Types.Date

    field :flscd_domain, :string

    field :oid_flscd_det, :decimal, primary_key: true

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
