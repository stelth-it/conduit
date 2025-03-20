defmodule Elixir.Conduit.QAD.Table.Rsn_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rsn_ref" do
    field :rsn_code, :string

    field :rsn_type, :string

    field :rsn_desc, :string

    field :rsn_user1, :string

    field :rsn_user2, :string

    field :rsn__qadc01, :string

    field :rsn_domain, :string

    field :oid_rsn_ref, :decimal, primary_key: true

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
