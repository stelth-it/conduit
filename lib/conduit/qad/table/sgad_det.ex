defmodule Elixir.Conduit.QAD.Table.Sgad_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sgad_det" do
    field :sgad_grp, :string

    field :sgad_is_src, Conduit.QAD.Types.Bool

    field :sgad_addr, :string

    field :sgad_cons_ship, :string

    field :sgad_user1, :string

    field :sgad_user2, :string

    field :sgad__qadc01, :string

    field :sgad_domain, :string

    field :oid_sgad_det, :decimal, primary_key: true

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
