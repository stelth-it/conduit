defmodule Elixir.Conduit.QAD.Table.Grig_mtx do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grig_mtx" do
    field :grig_run_id, :integer

    field :grig_brk_gp, :string

    field :grig_row, :integer

    field :grig_col, :integer

    field :grig_line, :integer

    field :grig_stl, :integer

    field :grig_amt, :decimal

    field :grig_amt_txt, :string

    field :grig_print, Conduit.QAD.Types.Bool

    field :grig_type, :string

    field :grig_user1, :string

    field :grig_user2, :string

    field :grig__qadc01, :string

    field :grig_domain, :string

    field :oid_grig_mtx, :decimal, primary_key: true

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
