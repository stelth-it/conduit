defmodule Elixir.Conduit.QAD.Table.Flff_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flff_mstr" do
    field :flff_site, :string

    field :flff_production_line, :string

    field :flff_schedule_code, :string

    field :flff_period_number, :integer

    field :flff_pct, :decimal

    field :flff_mod_date, Conduit.QAD.Types.Date

    field :flff_user1, :string

    field :flff_user2, :string

    field :flff_userc03, :string

    field :flff_userd01, :decimal

    field :flff_useri01, :integer

    field :flff_mod_userid, :string

    field :flff_userl01, Conduit.QAD.Types.Bool

    field :flff_usert01, Conduit.QAD.Types.Date

    field :flff__qadc01, :string

    field :flff__qadc02, :string

    field :flff__qadc03, :string

    field :flff__qadd01, :decimal

    field :flff__qadi01, :integer

    field :flff__qadl01, Conduit.QAD.Types.Bool

    field :flff__qadt01, Conduit.QAD.Types.Date

    field :flff_domain, :string

    field :oid_flff_mstr, :decimal, primary_key: true

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
