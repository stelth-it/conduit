defmodule Elixir.Conduit.QAD.Table.Lna_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lna_det" do
    field :lna_site, :string

    field :lna_line, :string

    field :lna_part, :string

    field :lna_allocation, :decimal

    field :lna__qadc01, :string

    field :lna__qadc02, :string

    field :lna__qadd01, :decimal

    field :lna__qadd02, :decimal

    field :lna__qadi01, :integer

    field :lna__qadi02, :integer

    field :lna__qadl01, Conduit.QAD.Types.Bool

    field :lna__qadl02, Conduit.QAD.Types.Bool

    field :lna__qadt01, Conduit.QAD.Types.Date

    field :lna__qadt02, Conduit.QAD.Types.Date

    field :lna_user1, :string

    field :lna_user2, :string

    field :lna__chr01, :string

    field :lna__chr02, :string

    field :lna__dec01, :decimal

    field :lna__dec02, :decimal

    field :lna__dte01, Conduit.QAD.Types.Date

    field :lna__dte02, Conduit.QAD.Types.Date

    field :lna__log01, Conduit.QAD.Types.Bool

    field :lna__log02, Conduit.QAD.Types.Bool

    field :lna_domain, :string

    field :oid_lna_det, :decimal, primary_key: true

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
