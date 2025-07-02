defmodule Elixir.Conduit.QAD.Table.Mps_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mps_mstr" do
    field :mps_part, :string

    field :mps_due_date, Conduit.QAD.Types.Date

    field :mps_rel_date, Conduit.QAD.Types.Date

    field :mps_qty_req, :decimal

    field :mps_qty_cons, :decimal

    field :mps_record, :integer

    field :mps_site, :string

    field :mps_line, :string

    field :mps_user1, :string

    field :mps_user2, :string

    field :mps_bom_code, :string

    field :mps_routing, :string

    field :mps__qadc01, :string

    field :mps_domain, :string

    field :oid_mps_mstr, :decimal, primary_key: true

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
