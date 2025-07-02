defmodule Elixir.Conduit.QAD.Table.Slr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_slr_mstr" do
    field :slr_inventory_site, :string

    field :slr_attribute, :string

    field :slr_lsc_active, Conduit.QAD.Types.Bool

    field :slr_mod_date, Conduit.QAD.Types.Date

    field :slr_mod_userid, :string

    field :slr__qadc01, :string

    field :slr__qadc02, :string

    field :slr__qadd01, :decimal

    field :slr__qadd02, :decimal

    field :slr__qadi01, :integer

    field :slr__qadl01, Conduit.QAD.Types.Bool

    field :slr__qadt01, Conduit.QAD.Types.Date

    field :slr__qadt02, Conduit.QAD.Types.Date

    field :slr_userc01, :string

    field :slr_userc02, :string

    field :slr_userd01, :decimal

    field :slr_useri01, :integer

    field :slr_userl01, Conduit.QAD.Types.Bool

    field :slr_usert01, Conduit.QAD.Types.Date

    field :slr_domain, :string

    field :oid_slr_mstr, :decimal, primary_key: true

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
