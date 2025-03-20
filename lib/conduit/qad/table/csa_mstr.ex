defmodule Elixir.Conduit.QAD.Table.Csa_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_csa_mstr" do
    field :csa_auth, :string

    field :csa_name, :string

    field :csa_type, :string

    field :csa_group, :string

    field :csa_cmtindx, :integer

    field :csa_user1, :string

    field :csa_user2, :string

    field :csa__qadc01, :string

    field :csa_domain, :string

    field :oid_csa_mstr, :decimal, primary_key: true

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
