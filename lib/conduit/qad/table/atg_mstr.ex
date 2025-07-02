defmodule Elixir.Conduit.QAD.Table.Atg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atg_mstr" do
    field :oid_atg_mstr, :decimal, primary_key: true

    field :atg_group_name, :string

    field :atg_group_type, :string

    field :atg_group_desc, :string

    field :atg_origin, :string

    field :atg_mod_date, Conduit.QAD.Types.Date

    field :atg_mod_userid, :string

    field :atg_user1, :string

    field :atg_user2, :string

    field :atg__qadc01, :string

    field :atg__qadc02, :string

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
