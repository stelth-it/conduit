defmodule Elixir.Conduit.QAD.Table.Esig_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esig_mstr" do
    field :oid_esig_mstr, :decimal, primary_key: true

    field :esig_date, Conduit.QAD.Types.Date

    field :esig_time, :integer

    field :esig_timezone, :string

    field :esig_userid, :string

    field :esig_user_name, :string

    field :esig_rsn_code, :string

    field :esig_comment, :string

    field :esig_mod_date, Conduit.QAD.Types.Date

    field :esig_mod_userid, :string

    field :esig_user1, :string

    field :esig_user2, :string

    field :esig__qadc01, :string

    field :esig__qadc02, :string

    field :esig_archived, Conduit.QAD.Types.Bool

    field :esig_exec, :string

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
