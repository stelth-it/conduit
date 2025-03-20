defmodule Elixir.Conduit.QAD.Table.Flcr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flcr_mstr" do
    field :flcr_site, :string

    field :flcr_production_line, :string

    field :flcr_schedule_code, :string

    field :flcr_type_code, :string

    field :flcr_type_value, :string

    field :flcr_rate_code, :string

    field :flcr_rate, :decimal

    field :flcr_mod_userid, :string

    field :flcr_mod_date, Conduit.QAD.Types.Date

    field :flcr_user1, :string

    field :flcr_user2, :string

    field :flcr__qadc01, :string

    field :flcr__qadc02, :string

    field :flcr_userc03, :string

    field :flcr_userd01, :decimal

    field :flcr_useri01, :integer

    field :flcr_userl01, Conduit.QAD.Types.Bool

    field :flcr_usert01, Conduit.QAD.Types.Date

    field :flcr__qadc03, :string

    field :flcr__qadd01, :decimal

    field :flcr__qadi01, :integer

    field :flcr__qadl01, Conduit.QAD.Types.Bool

    field :flcr__qadt01, Conduit.QAD.Types.Date

    field :flcr_domain, :string

    field :oid_flcr_mstr, :decimal, primary_key: true

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
