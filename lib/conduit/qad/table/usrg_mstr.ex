defmodule Elixir.Conduit.QAD.Table.Usrg_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_usrg_mstr" do
    field :usrg_group_name, :string

    field :usrg_group_desc, :string

    field :usrg_mod_userid, :string

    field :usrg_mod_date, Conduit.QAD.Types.Date

    field :usrg_user1, :string

    field :usrg_user2, :string

    field :usrg__qadc01, :string

    field :usrg__qadc02, :string

    field :oid_usrg_mstr, :decimal, primary_key: true

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
