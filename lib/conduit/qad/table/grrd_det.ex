defmodule Elixir.Conduit.QAD.Table.Grrd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grrd_det" do
    field :grrd_row, :integer

    field :grrd_row_group, :string

    field :grrd_row_type, :string

    field :grrd_label, :string

    field :grrd_indent, :integer

    field :grrd_show, Conduit.QAD.Types.Bool

    field :grrd_percent, Conduit.QAD.Types.Bool

    field :grrd_print, Conduit.QAD.Types.Bool

    field :grrd_reverse, Conduit.QAD.Types.Bool

    field :grrd_format, :string

    field :grrd_override, Conduit.QAD.Types.Bool

    field :grrd_round, :string

    field :grrd_page, Conduit.QAD.Types.Bool

    field :grrd_pre_und, :string

    field :grrd_user1, :string

    field :grrd_user2, :string

    field :grrd_skips, :integer

    field :grrd_post_und, :string

    field :grrd_start_col, :integer

    field :grrd_rvpol, :string

    field :grrd_precedence, Conduit.QAD.Types.Bool

    field :grrd_text, {:array, :string}

    field :grrd_calc, {:array, :string}

    field :grrd_apply_sym, Conduit.QAD.Types.Bool

    field :grrd_zero_suppress, :string

    field :grrd__qadc01, :string

    field :grrd_domain, :string

    field :oid_grrd_det, :decimal, primary_key: true

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
