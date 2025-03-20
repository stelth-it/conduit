defmodule Elixir.Conduit.QAD.Table.Qaddb_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qaddb_ctrl" do
    field :qaddb_index1, :integer

    field :qaddb_server_timezone, :string

    field :qaddb_oid_code, :integer, primary_key: true

    field :qaddb_oid_regid, :decimal, primary_key: true

    field :qaddb_mod_userid, :string

    field :qaddb_mod_date, Conduit.QAD.Types.Date

    field :qaddb_user1, :string

    field :qaddb_user2, :string

    field :qaddb__qadc01, :string

    field :qaddb__qadc02, :string

    field :oid_qaddb_ctrl, :decimal, primary_key: true

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
