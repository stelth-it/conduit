defmodule Elixir.Conduit.QAD.Table.Sodr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sodr_det" do
    field :sodr_div, :string

    field :sodr_group, :string

    field :sodr_line, :integer

    field :sodr_nbr, :string

    field :sodr_pricing, :integer

    field :sodr_seq, :integer

    field :sodr_type, :integer

    field :sodr_user1, :string

    field :sodr_user2, :string

    field :sodr__qadc01, :string

    field :sodr__qadc02, :string

    field :sodr__qadc03, :string

    field :sodr__qadd01, :decimal

    field :sodr__qadd02, :decimal

    field :sodr__qadi01, :integer

    field :sodr__qadi02, :integer

    field :sodr__qadl01, Conduit.QAD.Types.Bool

    field :sodr__qadl02, Conduit.QAD.Types.Bool

    field :sodr__qadt01, Conduit.QAD.Types.Date

    field :sodr__qadt02, Conduit.QAD.Types.Date

    field :sodr_domain, :string

    field :oid_sodr_det, :decimal, primary_key: true

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
