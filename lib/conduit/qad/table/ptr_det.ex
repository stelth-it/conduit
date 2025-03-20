defmodule Elixir.Conduit.QAD.Table.Ptr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ptr_det" do
    field :ptr_part, :string

    field :ptr_site, :string

    field :ptr_routing, :string

    field :ptr_start, Conduit.QAD.Types.Date

    field :ptr_end, Conduit.QAD.Types.Date

    field :ptr_user1, :string

    field :ptr_user2, :string

    field :ptr_userid, :string

    field :ptr_bom_code, :string

    field :ptr_mod_date, Conduit.QAD.Types.Date

    field :ptr_batch, :decimal

    field :ptr_apprdate, Conduit.QAD.Types.Date

    field :ptr_appr_id, :string

    field :ptr_cmtindx, :integer

    field :ptr_material, :decimal

    field :ptr_labor, :decimal

    field :ptr_burden, :decimal

    field :ptr_subcontract, :decimal

    field :ptr_overhead, :decimal

    field :ptr_total_cost, :decimal

    field :ptr__qadc01, :string

    field :ptr_domain, :string

    field :oid_ptr_det, :decimal, primary_key: true

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
