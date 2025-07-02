defmodule Elixir.Conduit.QAD.Table.Sm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sm_mstr" do
    field :sm_part, :string

    field :sm_sup_site, :string

    field :sm_mktg_site, :string

    field :sm_start, Conduit.QAD.Types.Date

    field :sm_end, Conduit.QAD.Types.Date

    field :sm_pct, :decimal

    field :sm_trans, :string

    field :sm_lead, :decimal

    field :sm_user1, :string

    field :sm_user2, :string

    field :sm_type, :string

    field :sm__qadc01, :string

    field :sm_domain, :string

    field :oid_sm_mstr, :decimal, primary_key: true

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
