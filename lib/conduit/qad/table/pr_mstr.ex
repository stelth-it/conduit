defmodule Elixir.Conduit.QAD.Table.Pr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pr_mstr" do
    field :pr_type, :string

    field :pr_desc, :string

    field :pr_st_80, :string

    field :pr_reset, :string

    field :pr_st_132, :string

    field :pr_st_bc, :string

    field :pr_end_bc, :string

    field :pr_neg_line, :string

    field :pr_length, :integer

    field :pr_blank, :integer

    field :pr_page, :string

    field :pr_init, :string

    field :pr_user1, :string

    field :pr_user2, :string

    field :pr__qadc01, :string

    field :oid_pr_mstr, :decimal, primary_key: true

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
