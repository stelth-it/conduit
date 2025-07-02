defmodule Elixir.Conduit.QAD.Table.Mnt_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mnt_det" do
    field :mnt_nbr, :string

    field :mnt_select, :integer

    field :mnt_lang, :string

    field :mnt_label, :string

    field :mnt_user1, :string

    field :mnt_user2, :string

    field :mnt__qadc01, :string

    field :oid_mnt_det, :decimal, primary_key: true

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
