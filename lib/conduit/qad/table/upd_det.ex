defmodule Elixir.Conduit.QAD.Table.Upd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_upd_det" do
    field :upd_userid, :string

    field :upd_exec, :string

    field :upd_dev, :string

    field :upd_nbr, :string

    field :upd_select, :integer

    field :upd_user1, :string

    field :upd_user2, :string

    field :upd__qadc01, :string

    field :oid_upd_det, :decimal, primary_key: true

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
