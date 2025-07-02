defmodule Elixir.Conduit.QAD.Table.Grx3_wkfl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grx3_wkfl" do
    field :grx3_run_id, :integer

    field :grx3_row, :integer

    field :grx3_col, :integer

    field :grx3_line, :integer

    field :grx3_priority, :integer

    field :grx3_explode, :integer

    field :grx3_element1, :string

    field :grx3_element2, :string

    field :grx3_element3, :string

    field :grx3_element4, :string

    field :grx3_element5, :string

    field :grx3_user1, :string

    field :grx3_user2, :string

    field :grx3__qadc01, :string

    field :grx3_domain, :string

    field :oid_grx3_wkfl, :decimal, primary_key: true

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
