defmodule Elixir.Conduit.QAD.Table.Trld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_trld_det" do
    field :trld_code, :string

    field :trld_tax_type, :string

    field :trld_taxable, Conduit.QAD.Types.Bool

    field :trld_taxc, :string

    field :trld_user1, :string

    field :trld_user2, :string

    field :trld__chr01, :string

    field :trld__log01, Conduit.QAD.Types.Bool

    field :trld__qad01, :string

    field :trld__qad02, :string

    field :trld__qad03, :decimal

    field :trld__qad04, Conduit.QAD.Types.Date

    field :trld__qad05, Conduit.QAD.Types.Bool

    field :trld_domain, :string

    field :oid_trld_det, :decimal, primary_key: true

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
