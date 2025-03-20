defmodule Elixir.Conduit.QAD.Table.Hlp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_hlp_mstr" do
    field :hlp_context_str, :string

    field :hlp_context_nbr, :integer

    field :hlp_file, :string

    field :hlp_user1, :string

    field :hlp_user2, :string

    field :hlp__qadc01, :string

    field :oid_hlp_mstr, :decimal, primary_key: true

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
