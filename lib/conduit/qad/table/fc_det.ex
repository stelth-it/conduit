defmodule Elixir.Conduit.QAD.Table.Fc_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fc_det" do
    field :fc_part, :string

    field :fc_ref, :string

    field :fc_qty, :decimal

    field :fc_start, Conduit.QAD.Types.Date

    field :fc_end, Conduit.QAD.Types.Date

    field :fc_site, :string

    field :fc_user1, :string

    field :fc_user2, :string

    field :fc__qadc01, :string

    field :fc_domain, :string

    field :oid_fc_det, :decimal, primary_key: true

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
