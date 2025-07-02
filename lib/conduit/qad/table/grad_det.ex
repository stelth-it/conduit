defmodule Elixir.Conduit.QAD.Table.Grad_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grad_det" do
    field :grad_an_code, :string

    field :grad_gl_type, :string

    field :grad_gl_code, :string

    field :grad_user1, :string

    field :grad_user2, :string

    field :grad__qadc01, :string

    field :grad_domain, :string

    field :oid_grad_det, :decimal, primary_key: true

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
