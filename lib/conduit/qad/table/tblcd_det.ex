defmodule Elixir.Conduit.QAD.Table.Tblcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tblcd_det" do
    field :tblcd_fld_name, :string

    field :tblcd_active, Conduit.QAD.Types.Bool

    field :tblcd_table, :string

    field :tblcd_desc, :string

    field :tblcd_user1, :string

    field :tblcd_user2, :string

    field :tblcd__qadc01, :string

    field :tblcd__qadc02, :string

    field :tblcd_mod_date, Conduit.QAD.Types.Date

    field :tblcd_mod_userid, :string

    field :tblcd_domain, :string

    field :oid_tblcd_det, :decimal, primary_key: true

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
