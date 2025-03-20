defmodule Elixir.Conduit.QAD.Table.Grid_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grid_det" do
    field :grid_run_id, :integer

    field :grid_row, :integer

    field :grid_line, :integer

    field :grid_stl, :integer

    field :grid_indent, :integer

    field :grid_label, :string

    field :grid_skips, :integer

    field :grid_row_type, :string

    field :grid_pre_und, :string

    field :grid_post_und, :string

    field :grid_page, Conduit.QAD.Types.Bool

    field :grid_print, Conduit.QAD.Types.Bool

    field :grid_text, {:array, :string}

    field :grid_allzero, Conduit.QAD.Types.Bool

    field :grid_select, Conduit.QAD.Types.Bool

    field :grid_apply_sym, Conduit.QAD.Types.Bool

    field :grid_zero_suppress, :string

    field :grid_expl_line, :integer

    field :grid_user1, :string

    field :grid_user2, :string

    field :grid__qadc01, :string

    field :grid_domain, :string

    field :oid_grid_det, :decimal, primary_key: true

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
