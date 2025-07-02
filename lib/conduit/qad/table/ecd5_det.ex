defmodule Elixir.Conduit.QAD.Table.Ecd5_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd5_det" do
    field :ecd5_part, :string

    field :ecd5_site, :string

    field :ecd5_routing, :string

    field :ecd5_start, Conduit.QAD.Types.Date

    field :ecd5_end, Conduit.QAD.Types.Date

    field :ecd5_user1, :string

    field :ecd5_user2, :string

    field :ecd5_userid, :string

    field :ecd5_bom_code, :string

    field :ecd5_mod_date, Conduit.QAD.Types.Date

    field :ecd5_batch, :decimal

    field :ecd5_apprdate, Conduit.QAD.Types.Date

    field :ecd5_appr_id, :string

    field :ecd5_cmtindx, :integer

    field :ecd5_material, :decimal

    field :ecd5_labor, :decimal

    field :ecd5_burden, :decimal

    field :ecd5_subcontract, :decimal

    field :ecd5_overhead, :decimal

    field :ecd5_total_cost, :decimal

    field :ecd5_qspec_nbr, :string

    field :ecd5_qspec_id, :integer

    field :ecd5__qadc01, :string

    field :ecd5_domain, :string

    field :oid_ecd5_det, :decimal, primary_key: true

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
