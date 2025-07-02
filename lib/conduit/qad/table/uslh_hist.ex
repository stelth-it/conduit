defmodule Elixir.Conduit.QAD.Table.Uslh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_uslh_hist" do
    field :uslh_userid, :string

    field :uslh_date, Conduit.QAD.Types.Date

    field :uslh_time, :integer

    field :uslh_passwd_valid, Conduit.QAD.Types.Bool

    field :uslh_status_code, :string

    field :uslh_mod_userid, :string

    field :uslh_user1, :string

    field :uslh_user2, :string

    field :uslh__qadc01, :string

    field :uslh__qadc02, :string

    field :uslh_timezone, :string

    field :oid_uslh_hist, :decimal, primary_key: true

    field :uslh_mod_date, Conduit.QAD.Types.Date

    field :uslh_domain, :string

    field :uslh_access_type, :integer

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
