defmodule Elixir.Conduit.QAD.Table.Knbi_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbi_mstr" do
    field :knbi_keyid, :decimal

    field :knbi_part, :string

    field :knbi_step, :integer

    field :knbi_routing, :string

    field :knbi_bom_code, :string

    field :knbi_mod_date, Conduit.QAD.Types.Date

    field :knbi_mod_userid, :string

    field :knbi_user1, :string

    field :knbi_user2, :string

    field :knbi__qadc01, :string

    field :knbi__qadc02, :string

    field :knbi_domain, :string

    field :knbi_cmtindx, :integer

    field :knbi_min_epe_interval, :decimal

    field :knbi_run_out_material, :string

    field :knbi_run_out_option, :integer

    field :knbi_run_out_qty_per, :decimal

    field :knbi_run_out_qtyper_um, :string

    field :knbi_run_out_quantity, :decimal

    field :knbi_run_out_qty_um, :string

    field :knbi_run_out_setup, :decimal

    field :knbi_avg_inv_method, :integer

    field :knbi_cost_alloc, :decimal

    field :knbi_cont_type, :string

    field :knbi_um_conv, :decimal

    field :oid_knbi_mstr, :decimal, primary_key: true

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
