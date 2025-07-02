defmodule Elixir.Conduit.QAD.Table.Bdld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bdld_det" do
    field :bdld_id, :integer

    field :bdld_line, :integer

    field :bdld_data, :string

    field :bdld_user1, :string

    field :bdld_user2, :string

    field :bdld_source, :string

    field :bdld__qadc01, :string

    field :bdld_domain, :string

    field :oid_bdld_det, :decimal, primary_key: true

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
