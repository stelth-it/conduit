defmodule Elixir.Conduit.QAD.Table.Acm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_acm_mstr" do
    field :acm_site, :string

    field :acm_part, :string

    field :acm_prod_line, :string

    field :acm_method, :string

    field :acm_user1, :string

    field :acm_user2, :string

    field :acm__qadc01, :string

    field :acm_domain, :string

    field :oid_acm_mstr, :decimal, primary_key: true

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
