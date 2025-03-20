defmodule Elixir.Conduit.QAD.Table.Code_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_code_mstr" do
    field :code_fldname, :string

    field :code_value, :string

    field :code_cmmt, :string

    field :code_user1, :string

    field :code_user2, :string

    field :code_desc, :string

    field :code__qadc01, :string

    field :code_domain, :string

    field :oid_code_mstr, :decimal, primary_key: true

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
