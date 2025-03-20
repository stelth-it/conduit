defmodule Elixir.Conduit.QAD.Table.Rs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rs_mstr" do
    field :rs_rsc, :string

    field :rs_desc, :string

    field :rs_um, :string

    field :rs_user1, :string

    field :rs_user2, :string

    field :rs_site, :string

    field :rs__qadc01, :string

    field :rs_domain, :string

    field :oid_rs_mstr, :decimal, primary_key: true

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
