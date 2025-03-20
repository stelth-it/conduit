defmodule Elixir.Conduit.QAD.Table.Uspw_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_uspw_hist" do
    field :uspw_userid, :string

    field :uspw_usr_passwd, :string

    field :uspw_date, Conduit.QAD.Types.Date

    field :uspw_time, :integer

    field :uspw_mod_userid, :string

    field :uspw_mod_date, Conduit.QAD.Types.Date

    field :uspw_timezone, :string

    field :uspw_user1, :string

    field :uspw_user2, :string

    field :uspw__qadc01, :string

    field :uspw__qadc02, :string

    field :oid_uspw_hist, :decimal, primary_key: true

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
