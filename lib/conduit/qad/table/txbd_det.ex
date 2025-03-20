defmodule Elixir.Conduit.QAD.Table.Txbd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_txbd_det" do
    field :txbd_base, :string

    field :txbd_tax_type, :string

    field :txbd_user1, :string

    field :txbd_user2, :string

    field :txbd__qad01, :string

    field :txbd__qad02, :string

    field :txbd_domain, :string

    field :oid_txbd_det, :decimal, primary_key: true

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
