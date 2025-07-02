defmodule Elixir.Conduit.QAD.Table.Mu_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mu_mstr" do
    field :mu_union_curr, :string

    field :mu_member_curr, :string

    field :mu_start_date, Conduit.QAD.Types.Date

    field :mu_end_date, Conduit.QAD.Types.Date

    field :mu_mod_userid, :string

    field :mu_mod_date, Conduit.QAD.Types.Date

    field :mu_user1, :string

    field :mu_user2, :string

    field :mu__qadc01, :string

    field :mu__qadl01, Conduit.QAD.Types.Bool

    field :mu__qadt01, Conduit.QAD.Types.Date

    field :mu__qadd01, :decimal

    field :mu_domain, :string

    field :oid_mu_mstr, :decimal, primary_key: true

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
