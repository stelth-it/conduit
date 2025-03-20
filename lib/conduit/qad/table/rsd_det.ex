defmodule Elixir.Conduit.QAD.Table.Rsd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rsd_det" do
    field :rsd_rsc, :string

    field :rsd_ref, :string

    field :rsd_cap, :decimal

    field :rsd_start, Conduit.QAD.Types.Date

    field :rsd_end, Conduit.QAD.Types.Date

    field :rsd_user1, :string

    field :rsd_user2, :string

    field :rsd_site, :string

    field :rsd_shift1, :decimal

    field :rsd_shift2, :decimal

    field :rsd_shift3, :decimal

    field :rsd_shift4, :decimal

    field :rsd__qadc01, :string

    field :rsd_domain, :string

    field :oid_rsd_det, :decimal, primary_key: true

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
