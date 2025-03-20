defmodule Elixir.Conduit.QAD.Table.Esapfs_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esapfs_det" do
    field :oid_esapfs_det, :decimal, primary_key: true

    field :oid_esap_mstr, :decimal, primary_key: true

    field :esapfs_set_name, :string

    field :esapfs_set_desc, :string

    field :esapfs_mod_date, Conduit.QAD.Types.Date

    field :esapfs_mod_userid, :string

    field :esapfs_user1, :string

    field :esapfs_user2, :string

    field :esapfs__qadc01, :string

    field :esapfs__qadc02, :string

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
