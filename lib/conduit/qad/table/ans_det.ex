defmodule Elixir.Conduit.QAD.Table.Ans_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ans_det" do
    field :ans_code, :string

    field :ans_type, :string

    field :ans_include, Conduit.QAD.Types.Bool

    field :ans_mask, :string

    field :ans_sel_high, :string

    field :ans_sel_low, :string

    field :ans_field, :string

    field :ans_user1, :string

    field :ans_user2, :string

    field :ans__qadc01, :string

    field :ans__qadd01, :decimal

    field :ans_domain, :string

    field :oid_ans_det, :decimal, primary_key: true

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
