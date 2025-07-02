defmodule Elixir.Conduit.QAD.Table.Atd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atd_mstr" do
    field :atd_code, :string

    field :atd_desc, :string

    field :atd_group, :string

    field :atd_mod_userid, :string

    field :atd_mod_date, Conduit.QAD.Types.Date

    field :atd_user1, :string

    field :atd_user2, :string

    field :atd__qadc01, :string

    field :atd__qadc02, :string

    field :atd_domain, :string

    field :oid_atd_mstr, :decimal, primary_key: true

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
