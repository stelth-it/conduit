defmodule Elixir.Conduit.QAD.Table.Flpw_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_flpw_mstr" do
    field :flpw_field, :string

    field :flpw_userid, :string

    field :flpw_cmmt, :string

    field :flpw_user1, :string

    field :flpw_user2, :string

    field :flpw__qadc01, :string

    field :flpw_domain, :string

    field :oid_flpw_mstr, :decimal, primary_key: true

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
