defmodule Elixir.Conduit.QAD.Table.Flh_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_flh_mstr" do
    field :flh_field, :string

    field :flh_desc, :string

    field :flh_exec, :string

    field :flh_x, :integer

    field :flh_y, :integer

    field :flh_down, :integer

    field :flh_call_pgm, :string

    field :flh_user1, :string

    field :flh_user2, :string

    field :flh__qadc01, :string

    field :flh_mod_userid, :string

    field :flh_mod_date, Conduit.QAD.Types.Date

    field :oid_flh_mstr, :decimal, primary_key: true

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
