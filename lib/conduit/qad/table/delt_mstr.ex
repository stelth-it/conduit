defmodule Elixir.Conduit.QAD.Table.Delt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_delt_mstr" do
    field :delt_site, :string

    field :delt_ctry, :string

    field :delt_state, :string

    field :delt_city, :string

    field :delt_transit, :integer

    field :delt_method, :string

    field :delt_userc01, :string

    field :delt_userc02, :string

    field :delt_userd01, :decimal

    field :delt_usert01, Conduit.QAD.Types.Date

    field :delt_useri01, :integer

    field :delt_userl01, Conduit.QAD.Types.Bool

    field :delt__qadc01, :string

    field :delt__qadd01, :decimal

    field :delt__qadi01, :integer

    field :delt__qadl01, Conduit.QAD.Types.Bool

    field :delt__qadt01, Conduit.QAD.Types.Date

    field :delt_mod_date, Conduit.QAD.Types.Date

    field :delt_mod_userid, :string

    field :delt_use_category, :string

    field :delt_domain, :string

    field :oid_delt_mstr, :decimal, primary_key: true

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
