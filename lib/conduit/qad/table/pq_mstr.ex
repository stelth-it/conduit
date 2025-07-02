defmodule Elixir.Conduit.QAD.Table.Pq_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pq_mstr" do
    field :pq_prod_line, :string

    field :pq_rsc, :string

    field :pq_qty_per, :decimal

    field :pq_lead, :integer

    field :pq_lt_off, :integer

    field :pq_start, Conduit.QAD.Types.Date

    field :pq_end, Conduit.QAD.Types.Date

    field :pq_ref, :string

    field :pq_user1, :string

    field :pq_user2, :string

    field :pq_site, :string

    field :pq__qadc01, :string

    field :pq_domain, :string

    field :oid_pq_mstr, :decimal, primary_key: true

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
