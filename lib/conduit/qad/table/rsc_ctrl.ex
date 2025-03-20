defmodule Elixir.Conduit.QAD.Table.Rsc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rsc_ctrl" do
    field :rsc_active, Conduit.QAD.Types.Bool

    field :rsc_gen_ship, Conduit.QAD.Types.Bool

    field :rsc_auto_update, Conduit.QAD.Types.Bool

    field :rsc_zero_req, Conduit.QAD.Types.Bool

    field :rsc_firm_days, :integer

    field :rsc_ship_days, :integer

    field :rsc_ship_weeks, :integer

    field :rsc_ship_months, :integer

    field :rsc_fab_days, :integer

    field :rsc_raw_days, :integer

    field :rsc_user1, :string

    field :rsc_user2, :string

    field :rsc__qadc01, :string

    field :rsc__qadc02, :string

    field :rsc__qadd01, :decimal

    field :rsc__qadd02, :decimal

    field :rsc__qadi01, :integer

    field :rsc__qadi02, :integer

    field :rsc__qadl01, Conduit.QAD.Types.Bool

    field :rsc__qadl02, Conduit.QAD.Types.Bool

    field :rsc__qadl03, Conduit.QAD.Types.Bool

    field :rsc__qadl04, Conduit.QAD.Types.Bool

    field :rsc__qadt01, Conduit.QAD.Types.Date

    field :rsc__qadi03, :integer

    field :rsc_domain, :string

    field :oid_rsc_ctrl, :decimal, primary_key: true

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
