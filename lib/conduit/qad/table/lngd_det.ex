defmodule Elixir.Conduit.QAD.Table.Lngd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lngd_det" do
    field :lngd_dataset, :string

    field :lngd_key1, :string

    field :lngd_key2, :string

    field :lngd_key3, :string

    field :lngd_key4, :string

    field :lngd_field, :string

    field :lngd_lang, :string

    field :lngd_translation, :string

    field :lngd_user1, :string

    field :lngd_user2, :string

    field :lngd_desc, :string

    field :lngd_mnemonic, :string

    field :lngd_translate2, :string

    field :lngd__qadc01, :string

    field :oid_lngd_det, :decimal, primary_key: true

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
