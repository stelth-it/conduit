defmodule Elixir.Conduit.QAD.Table.An_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_an_mstr" do
    field :an_userid, :string

    field :an_code, :string

    field :an_cmtindx, :integer

    field :an_desc, :string

    field :an_type, :string

    field :an_sec_group, :string

    field :an_mod_date, Conduit.QAD.Types.Date

    field :an_active, Conduit.QAD.Types.Bool

    field :an_user1, :string

    field :an_user2, :string

    field :an__qadc01, :string

    field :an__qadd01, :decimal

    field :an_domain, :string

    field :oid_an_mstr, :decimal, primary_key: true

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
