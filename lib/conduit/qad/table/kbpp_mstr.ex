defmodule Elixir.Conduit.QAD.Table.Kbpp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_kbpp_mstr" do
    field :kbpp_period, :string

    field :kbpp_desc, :string

    field :kbpp_hours, :decimal

    field :kbpp_mod_userid, :string

    field :kbpp_mod_date, Conduit.QAD.Types.Date

    field :kbpp_user1, :string

    field :kbpp_user2, :string

    field :kbpp__qadc01, :string

    field :kbpp_calendar_days, :integer

    field :kbpp_work_days, :integer

    field :kbpp_domain, :string

    field :oid_kbpp_mstr, :decimal, primary_key: true

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
