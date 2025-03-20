defmodule Elixir.Conduit.QAD.Table.Tblc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_tblc_mstr" do
    field :tblc_table, :string

    field :tblc_active, Conduit.QAD.Types.Bool

    field :tblc_delete, Conduit.QAD.Types.Bool

    field :tblc_desc, :string

    field :tblc_user1, :string

    field :tblc_user2, :string

    field :tblc_mod_date, Conduit.QAD.Types.Date

    field :tblc_mod_userid, :string

    field :tblc__qadc01, :string

    field :tblc__qadc02, :string

    field :tblc_domain, :string

    field :oid_tblc_mstr, :decimal, primary_key: true

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
