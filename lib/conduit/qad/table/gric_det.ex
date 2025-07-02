defmodule Elixir.Conduit.QAD.Table.Gric_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gric_det" do
    field :gric_run_id, :integer

    field :gric_col, :integer

    field :gric_width, :integer

    field :gric_year, :integer

    field :gric_per_from, :integer

    field :gric_quarter, :integer

    field :gric_activity, :string

    field :gric_label, {:array, :string}

    field :gric_col_type, :string

    field :gric_bg_code, :string

    field :gric_print, Conduit.QAD.Types.Bool

    field :gric_per_to, :integer

    field :gric_currency, Conduit.QAD.Types.Bool

    field :gric_select, Conduit.QAD.Types.Bool

    field :gric_symbol, :string

    field :gric_user1, :string

    field :gric_user2, :string

    field :gric__qadc01, :string

    field :gric_domain, :string

    field :oid_gric_det, :decimal, primary_key: true

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
