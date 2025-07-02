defmodule Elixir.Conduit.QAD.Table.Atgt_ref do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atgt_ref" do
    field :oid_atgt_ref, :decimal, primary_key: true

    field :oid_att_mstr, :decimal, primary_key: true

    field :oid_atg_mstr, :decimal, primary_key: true

    field :atgt_mod_date, Conduit.QAD.Types.Date

    field :atgt_mod_userid, :string

    field :atgt_user1, :string

    field :atgt_user2, :string

    field :atgt__qadc01, :string

    field :atgt__qadc02, :string

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
