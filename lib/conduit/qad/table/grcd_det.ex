defmodule Elixir.Conduit.QAD.Table.Grcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grcd_det" do
    field :grcd_col, :integer

    field :grcd_col_group, :string

    field :grcd_col_type, :string

    field :grcd_desc, :string

    field :grcd_project, :string

    field :grcd_bg_code, :string

    field :grcd_percent, Conduit.QAD.Types.Bool

    field :grcd_print, Conduit.QAD.Types.Bool

    field :grcd_format, :string

    field :grcd_override, Conduit.QAD.Types.Bool

    field :grcd_round, :string

    field :grcd_label, {:array, :string}

    field :grcd_user1, :string

    field :grcd_user2, :string

    field :grcd_year, :string

    field :grcd_per_from, :string

    field :grcd_quarter, :string

    field :grcd_activity, :string

    field :grcd_bg_roll, Conduit.QAD.Types.Bool

    field :grcd_width, :integer

    field :grcd_rvpol, :string

    field :grcd_calc, {:array, :string}

    field :grcd_currency, Conduit.QAD.Types.Bool

    field :grcd_per_to, :string

    field :grcd_symbol, :string

    field :grcd__qadc01, :string

    field :grcd_domain, :string

    field :oid_grcd_det, :decimal, primary_key: true

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
