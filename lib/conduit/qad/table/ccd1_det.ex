defmodule Elixir.Conduit.QAD.Table.Ccd1_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ccd1_det" do
    field :ccd1_cc, :string

    field :ccd1_line, :integer

    field :ccd1_acc_beg, :string

    field :ccd1_acc_end, :string

    field :ccd1_user1, :string

    field :ccd1_user2, :string

    field :ccd1__qadc01, :string

    field :oid_ccd1_det, :decimal, primary_key: true

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
