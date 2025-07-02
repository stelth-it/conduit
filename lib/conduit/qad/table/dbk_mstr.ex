defmodule Elixir.Conduit.QAD.Table.Dbk_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dbk_mstr" do
    field :dbk_book, :string

    field :dbk_desc, :string

    field :dbk_entity, :string

    field :dbk_curr, :string

    field :dbk_post, Conduit.QAD.Types.Bool

    field :dbk_ytd, Conduit.QAD.Types.Bool

    field :dbk_pd_taken, :integer

    field :dbk_curr_pd, :integer

    field :dbk_pd_yr, :integer

    field :dbk_rep_cost, Conduit.QAD.Types.Bool

    field :dbk_mod_date, Conduit.QAD.Types.Date

    field :dbk_userid, :string

    field :dbk_beg_dt, Conduit.QAD.Types.Date

    field :dbk__qad01, Conduit.QAD.Types.Bool

    field :dbk__qad02, :string

    field :dbk__qad03, :string

    field :dbk_bank, :string

    field :dbk_user1, :string

    field :dbk_user2, :string

    field :oid_dbk_mstr, :decimal, primary_key: true

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
