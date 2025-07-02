defmodule Elixir.Conduit.QAD.Table.Is_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_is_mstr" do
    field :is_status, :string

    field :is_avail, Conduit.QAD.Types.Bool

    field :is_nettable, Conduit.QAD.Types.Bool

    field :is_frozen, Conduit.QAD.Types.Bool

    field :is_overissue, Conduit.QAD.Types.Bool

    field :is_user1, :string

    field :is_user2, :string

    field :is_userid, :string

    field :is_mod_date, Conduit.QAD.Types.Date

    field :is_desc, :string

    field :is_cmtindx, :integer

    field :is__qadc01, :string

    field :is_domain, :string

    field :oid_is_mstr, :decimal, primary_key: true

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
