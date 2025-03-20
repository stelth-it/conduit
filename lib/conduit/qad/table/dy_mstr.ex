defmodule Elixir.Conduit.QAD.Table.Dy_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dy_mstr" do
    field :dy_dy_code, :string

    field :dy_desc, :string

    field :dy_type, :string

    field :dy_next_pgdet, :integer

    field :dy_next_pgcen, :integer

    field :dy_last_entdet, :string

    field :dy_last_entcen, :string

    field :dy_user1, :string

    field :dy_user2, :string

    field :dy__qadc01, :string

    field :dy_domain, :string

    field :oid_dy_mstr, :decimal, primary_key: true

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
