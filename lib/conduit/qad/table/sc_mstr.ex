defmodule Elixir.Conduit.QAD.Table.Sc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sc_mstr" do
    field :sc_sim, :string

    field :sc_element, :string

    field :sc_desc, :string

    field :sc_category, :string

    field :sc_user1, :string

    field :sc_user2, :string

    field :sc__qadc01, :string

    field :sc_domain, :string

    field :oid_sc_mstr, :decimal, primary_key: true

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
