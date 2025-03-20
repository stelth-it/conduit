defmodule Elixir.Conduit.QAD.Table.Lua_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lua_det" do
    field :lua_userid, :string

    field :lua_sid, :string

    field :lua_prog_user, :string

    field :lua_product, :string

    field :lua_in_date, Conduit.QAD.Types.Date

    field :lua_in_time, :integer

    field :lua_named, :integer

    field :lua_concur, :integer

    field :lua_out_date, Conduit.QAD.Types.Date

    field :lua_out_time, :integer

    field :lua__qadc01, :string

    field :lua__qadc02, :string

    field :lua__qadd01, :decimal

    field :lua__qadt01, Conduit.QAD.Types.Date

    field :oid_lua_det, :decimal, primary_key: true

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
