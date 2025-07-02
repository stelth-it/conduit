defmodule Elixir.Conduit.QAD.Table.Scx_ref do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_scx_ref" do
    field :scx_type, :integer

    field :scx_shipfrom, :string

    field :scx_shipto, :string

    field :scx_part, :string

    field :scx_po, :string

    field :scx_order, :string

    field :scx_line, :integer

    field :scx_qkey, :string

    field :scx_user1, :string

    field :scx_user2, :string

    field :scx__qadc01, :string

    field :scx_modelyr, :string

    field :scx_custref, :string

    field :scx_domain, :string

    field :oid_scx_ref, :decimal, primary_key: true

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
