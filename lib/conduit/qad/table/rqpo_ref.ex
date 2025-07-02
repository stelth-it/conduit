defmodule Elixir.Conduit.QAD.Table.Rqpo_ref do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqpo_ref" do
    field :rqpo_req_nbr, :string

    field :rqpo_req_line, :integer

    field :rqpo_po_nbr, :string

    field :rqpo_po_line, :integer

    field :rqpo_qty_ord, :decimal

    field :rqpo__chr01, :string

    field :rqpo__chr02, :string

    field :rqpo__chr03, :string

    field :rqpo__chr04, :string

    field :rqpo__qadc01, :string

    field :rqpo__qadc02, :string

    field :rqpo__qadc03, :string

    field :rqpo__qadc04, :string

    field :rqpo_domain, :string

    field :oid_rqpo_ref, :decimal, primary_key: true

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
