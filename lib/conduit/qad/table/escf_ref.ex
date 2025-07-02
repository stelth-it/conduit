defmodule Elixir.Conduit.QAD.Table.Escf_ref do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_escf_ref" do
    field :oid_escf_ref, :decimal, primary_key: true

    field :oid_escat_mstr, :decimal, primary_key: true

    field :oid_esfil_mstr, :decimal, primary_key: true

    field :escf_mod_date, Conduit.QAD.Types.Date

    field :escf_mod_userid, :string

    field :escf_user1, :string

    field :escf_user2, :string

    field :escf__qadc01, :string

    field :escf__qadc02, :string

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
