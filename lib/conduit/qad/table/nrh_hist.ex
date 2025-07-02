defmodule Elixir.Conduit.QAD.Table.Nrh_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_nrh_hist" do
    field :nrh_seqid, :string

    field :nrh_number, :string

    field :nrh_action, :string

    field :nrh_desc, :string

    field :nrh_userid, :string

    field :nrh_date, Conduit.QAD.Types.Date

    field :nrh_time, :string

    field :nrh_user1, :string

    field :nrh_user2, :string

    field :nrh__qadc01, :string

    field :nrh_line, :integer

    field :nrh_inc, :string

    field :nrh_non_inc, :string

    field :nrh_domain, :string

    field :oid_nrh_hist, :decimal, primary_key: true

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
