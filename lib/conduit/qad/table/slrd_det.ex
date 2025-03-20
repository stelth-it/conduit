defmodule Elixir.Conduit.QAD.Table.Slrd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_slrd_det" do
    field :slrd_inventory_site, :string

    field :slrd_attrib_code, :string

    field :slrd_linking_rule, :integer

    field :slrd_gl_cost_site, :string

    field :slrd_mod_date, Conduit.QAD.Types.Date

    field :slrd_mod_userid, :string

    field :slrd__qadc01, :string

    field :slrd__qadc02, :string

    field :slrd__qadd01, :decimal

    field :slrd__qadd02, :decimal

    field :slrd__qadl01, Conduit.QAD.Types.Bool

    field :slrd__qadt01, Conduit.QAD.Types.Date

    field :slrd__qadt02, Conduit.QAD.Types.Date

    field :slrd_userc01, :string

    field :slrd_userc02, :string

    field :slrd_userd01, :decimal

    field :slrd_useri01, :integer

    field :slrd_userl01, Conduit.QAD.Types.Bool

    field :slrd_usert01, Conduit.QAD.Types.Date

    field :slrd__qadi01, :integer

    field :slrd_domain, :string

    field :oid_slrd_det, :decimal, primary_key: true

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
