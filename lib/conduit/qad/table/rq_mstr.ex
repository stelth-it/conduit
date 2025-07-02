defmodule Elixir.Conduit.QAD.Table.Rq_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rq_mstr" do
    field :rq_part, :string

    field :rq_rsc, :string

    field :rq_qty_per, :decimal

    field :rq_lead, :integer

    field :rq_lt_off, :integer

    field :rq_start, Conduit.QAD.Types.Date

    field :rq_end, Conduit.QAD.Types.Date

    field :rq_ref, :string

    field :rq_user1, :string

    field :rq_user2, :string

    field :rq__chr01, :string

    field :rq__chr02, :string

    field :rq__chr03, :string

    field :rq__chr04, :string

    field :rq__chr05, :string

    field :rq__dte01, Conduit.QAD.Types.Date

    field :rq__dte02, Conduit.QAD.Types.Date

    field :rq__dec01, :decimal

    field :rq__dec02, :decimal

    field :rq__log01, Conduit.QAD.Types.Bool

    field :rq_site, :string

    field :rq_domain, :string

    field :oid_rq_mstr, :decimal, primary_key: true

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
