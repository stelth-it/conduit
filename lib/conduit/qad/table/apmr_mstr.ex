defmodule Elixir.Conduit.QAD.Table.Apmr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_apmr_mstr" do
    field :apmr_pricing, :integer

    field :apmr_rule, :integer

    field :apmr_seq, :integer

    field :apmr_type, :integer

    field :apmr_user1, :string

    field :apmr_user2, :string

    field :apmr__qadc01, :string

    field :apmr__qadc02, :string

    field :apmr__qadc03, :string

    field :apmr__qadd01, :decimal

    field :apmr__qadd02, :decimal

    field :apmr__qadi01, :integer

    field :apmr__qadi02, :integer

    field :apmr__qadl01, Conduit.QAD.Types.Bool

    field :apmr__qadl02, Conduit.QAD.Types.Bool

    field :apmr__qadt01, Conduit.QAD.Types.Date

    field :apmr__qadt02, Conduit.QAD.Types.Date

    field :apmr_domain, :string

    field :oid_apmr_mstr, :decimal, primary_key: true

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
