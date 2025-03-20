defmodule Elixir.Conduit.QAD.Table.Rps_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rps_mstr" do
    field :rps_part, :string

    field :rps_due_date, Conduit.QAD.Types.Date

    field :rps_rel_date, Conduit.QAD.Types.Date

    field :rps_qty_req, :decimal

    field :rps_qty_comp, :decimal

    field :rps_record, :integer

    field :rps_site, :string

    field :rps_line, :string

    field :rps_user1, :string

    field :rps_user2, :string

    field :rps_bom_code, :string

    field :rps_routing, :string

    field :rps__qadc01, :string

    field :rps_domain, :string

    field :oid_rps_mstr, :decimal, primary_key: true

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
