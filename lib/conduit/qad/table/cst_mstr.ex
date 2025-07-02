defmodule Elixir.Conduit.QAD.Table.Cst_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cst_mstr" do
    field :cst_cust, :string

    field :cst_desc, :string

    field :cst__qad01, :string

    field :cst__qad02, :string

    field :cst_user1, :string

    field :cst_user2, :string

    field :oid_cst_mstr, :decimal, primary_key: true

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
