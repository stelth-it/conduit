defmodule Elixir.Conduit.QAD.Table.Cd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cd_det" do
    field :cd_ref, :string

    field :cd_cmmt, {:array, :string}

    field :cd_type, :string

    field :cd_lang, :string

    field :cd_seq, :integer

    field :cd_user1, :string

    field :cd_user2, :string

    field :cd__qadc01, :string

    field :cd_domain, :string

    field :oid_cd_det, :decimal, primary_key: true

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
