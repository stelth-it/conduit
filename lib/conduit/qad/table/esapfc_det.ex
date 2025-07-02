defmodule Elixir.Conduit.QAD.Table.Esapfc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esapfc_det" do
    field :oid_esapfc_det, :decimal, primary_key: true

    field :oid_esapfil_det, :decimal, primary_key: true

    field :esapfc_value, :string

    field :oid_esapfs_det, :decimal, primary_key: true

    field :esapfc_mod_date, Conduit.QAD.Types.Date

    field :esapfc_mod_userid, :string

    field :esapfc_user1, :string

    field :esapfc_user2, :string

    field :esapfc__qadc01, :string

    field :esapfc__qadc02, :string

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
