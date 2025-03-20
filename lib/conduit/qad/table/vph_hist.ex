defmodule Elixir.Conduit.QAD.Table.Vph_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vph_hist" do
    field :vph_ref, :string

    field :vph__qadc02, :string

    field :vph__qadi01, :integer

    field :vph_nbr, :string

    field :vph_curr_amt, :decimal

    field :vph_inv_cost, :decimal

    field :vph_inv_qty, :decimal

    field :vph_inv_date, Conduit.QAD.Types.Date

    field :vph_user1, :string

    field :vph_user2, :string

    field :vph_avg_post, :string

    field :vph_acct, :string

    field :vph_cc, :string

    field :vph_amt, :decimal

    field :vph_element, :string

    field :vph__qadc01, :string

    field :vph_project, :string

    field :vph_costadj_acct, :string

    field :vph_costadj_sub, :string

    field :vph_costadj_cc, :string

    field :vph_dscr_acct, :string

    field :vph_dscr_sub, :string

    field :vph_dscr_cc, :string

    field :vph_sub, :string

    field :vph_adj_inv, Conduit.QAD.Types.Bool

    field :vph_adj_wip, Conduit.QAD.Types.Bool

    field :vph_adj_amt, :decimal

    field :vph_dscr_amt, :decimal

    field :vph_cf_adj_amt, :decimal

    field :vph_cf_dscr_amt, :decimal

    field :vph_adj_prv_cst, :decimal

    field :vph_qoh_at_adj, :decimal

    field :vph_pvo_id, :integer

    field :vph_pvod_id_line, :integer

    field :vph_domain, :string

    field :oid_vph_hist, :decimal, primary_key: true

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
