defmodule Elixir.Conduit.QAD.Table.Grdf_mtx do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grdf_mtx" do
    field :grdf_run_id, :integer

    field :grdf_row, :integer

    field :grdf_col, :integer

    field :grdf_format, :string

    field :grdf_round, :string

    field :grdf_reverse, Conduit.QAD.Types.Bool

    field :grdf_formula, :string

    field :grdf_print, Conduit.QAD.Types.Bool

    field :grdf_user1, :string

    field :grdf_user2, :string

    field :grdf__qadc01, :string

    field :grdf_domain, :string

    field :oid_grdf_mtx, :decimal, primary_key: true

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
