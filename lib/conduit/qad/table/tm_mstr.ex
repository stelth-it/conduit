defmodule Elixir.Conduit.QAD.Table.Tm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tm_mstr" do
    field :tm_code, :string

    field :tm_desc, :string

    field :tm_type, :string

    field :tm_maxweight, :decimal

    field :tm_weight_um, :string

    field :tm_maxcube, :decimal

    field :tm_cube_um, :string

    field :tm_height, :decimal

    field :tm_width, :decimal

    field :tm_length, :decimal

    field :tm_pallets, :integer

    field :tm_gross_wt, :decimal

    field :tm_rate_code, :string

    field :tm_cmtindx, :integer

    field :tm_load_lt, :decimal

    field :tm_unload_lt, :decimal

    field :tm_no_units, :integer

    field :tm_user1, :string

    field :tm_user2, :string

    field :tm__qadc01, :string

    field :tm_domain, :string

    field :oid_tm_mstr, :decimal, primary_key: true

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
