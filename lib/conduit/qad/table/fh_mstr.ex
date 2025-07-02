defmodule Elixir.Conduit.QAD.Table.Fh_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fh_mstr" do
    field :fh_parent, :string

    field :fh_comp, :string

    field :fh_fcst_pct, :decimal

    field :fh_rlup_pct, {:array, :decimal}

    field :fh_site, :string

    field :fh_mod_date, Conduit.QAD.Types.Date

    field :fh_mod_userid, :string

    field :fh_user1, :string

    field :fh_user2, :string

    field :fh_rmks, :string

    field :fh_year, :integer

    field :fh__qadc01, :string

    field :fh_domain, :string

    field :oid_fh_mstr, :decimal, primary_key: true

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
