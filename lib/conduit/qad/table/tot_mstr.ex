defmodule Elixir.Conduit.QAD.Table.Tot_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tot_mstr" do
    field :tot_terms_code, :string

    field :tot_terms_desc, :string

    field :tot_mod_userid, :string

    field :tot_mod_date, Conduit.QAD.Types.Date

    field :tot_user1, :string

    field :tot_user2, :string

    field :tot__qadc01, :string

    field :tot__qadc02, :string

    field :tot_domain, :string

    field :oid_tot_mstr, :decimal, primary_key: true

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
