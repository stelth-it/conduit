defmodule Elixir.Conduit.QAD.Table.Asc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_asc_mstr" do
    field :asc_acc, :string

    field :asc_sub, :string

    field :asc_cc, :string

    field :asc_desc, :string

    field :asc_user1, :string

    field :asc_user2, :string

    field :asc_fpos, :integer

    field :asc__qadc01, :string

    field :asc_domain, :string

    field :oid_asc_mstr, :decimal, primary_key: true

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
