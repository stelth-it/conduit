defmodule Elixir.Conduit.QAD.Table.Fldf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fldf_mstr" do
    field :fldf_userid, :string

    field :fldf_field, :string

    field :fldf_call_pg, :string

    field :fldf_value, :string

    field :fldf_desc, :string

    field :fldf_user1, :string

    field :fldf_user2, :string

    field :fldf__qadc01, :string

    field :oid_fldf_mstr, :decimal, primary_key: true

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
