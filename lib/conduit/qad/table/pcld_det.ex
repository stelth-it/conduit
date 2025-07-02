defmodule Elixir.Conduit.QAD.Table.Pcld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pcld_det" do
    field :pcld_group, :string

    field :pcld_id, :string

    field :pcld_dev, :string

    field :pcld_copies, :integer

    field :pcld_user1, :string

    field :pcld_user2, :string

    field :pcld_expire, Conduit.QAD.Types.Date

    field :pcld_mod_date, Conduit.QAD.Types.Date

    field :pcld_userid, :string

    field :pcld__qadc01, :string

    field :pcld_domain, :string

    field :oid_pcld_det, :decimal, primary_key: true

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
