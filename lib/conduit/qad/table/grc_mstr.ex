defmodule Elixir.Conduit.QAD.Table.Grc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grc_mstr" do
    field :grc_col_group, :string

    field :grc_desc, :string

    field :grc_add_id, :string

    field :grc_add_date, Conduit.QAD.Types.Date

    field :grc_mod_id, :string

    field :grc_mod_date, Conduit.QAD.Types.Date

    field :grc_group, :string

    field :grc_status, Conduit.QAD.Types.Bool

    field :grc_cmtindx, :integer

    field :grc_user1, :string

    field :grc_user2, :string

    field :grc__qadc01, :string

    field :grc_domain, :string

    field :oid_grc_mstr, :decimal, primary_key: true

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
