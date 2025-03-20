defmodule Elixir.Conduit.QAD.Table.Lad_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lad_det" do
    field :lad_dataset, :string

    field :lad_nbr, :string

    field :lad_line, :string

    field :lad_site, :string

    field :lad_loc, :string

    field :lad_part, :string

    field :lad_lot, :string

    field :lad_qty_all, :decimal

    field :lad_qty_pick, :decimal

    field :lad_qty_chg, :decimal

    field :lad_user1, :string

    field :lad_user2, :string

    field :lad_ref, :string

    field :lad_ord_site, :string

    field :lad__qadc01, :string

    field :lad_domain, :string

    field :oid_lad_det, :decimal, primary_key: true

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
