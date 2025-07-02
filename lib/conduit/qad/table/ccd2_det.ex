defmodule Elixir.Conduit.QAD.Table.Ccd2_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ccd2_det" do
    field :ccd2_cc, :string

    field :ccd2_line, :integer

    field :ccd2_sub_beg, :string

    field :ccd2_sub_end, :string

    field :ccd2_user1, :string

    field :ccd2_user2, :string

    field :ccd2__qadc01, :string

    field :oid_ccd2_det, :decimal, primary_key: true

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
