defmodule Elixir.Conduit.QAD.Table.Eswpfs_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswpfs_det" do
    field :oid_eswpfs_det, :decimal, primary_key: true

    field :oid_eswp_mstr, :decimal, primary_key: true

    field :eswpfs_set_name, :string

    field :eswpfs_set_desc, :string

    field :eswpfs_mod_date, Conduit.QAD.Types.Date

    field :eswpfs_mod_userid, :string

    field :eswpfs_user1, :string

    field :eswpfs_user2, :string

    field :eswpfs__qadc01, :string

    field :eswpfs__qadc02, :string

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
