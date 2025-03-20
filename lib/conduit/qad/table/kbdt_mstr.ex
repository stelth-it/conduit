defmodule Elixir.Conduit.QAD.Table.Kbdt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_kbdt_mstr" do
    field :kbdt_template, :string

    field :kbdt_desc, :string

    field :kbdt_history_source, :string

    field :kbdt_history_days, :integer

    field :kbdt_future_source, :string

    field :kbdt_future_days, :integer

    field :kbdt_mod_date, Conduit.QAD.Types.Date

    field :kbdt_mod_userid, :string

    field :kbdt_user1, :string

    field :kbdt_user2, :string

    field :kbdt__qadc01, :string

    field :kbdt__qadc02, :string

    field :kbdt_domain, :string

    field :oid_kbdt_mstr, :decimal, primary_key: true

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
