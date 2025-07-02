defmodule Elixir.Conduit.QAD.Table.In_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_in_mstr" do
    field :in_part, :string

    field :in_site, :string

    field :in_qty_oh, :decimal

    field :in_qty_req, :decimal

    field :in_qty_all, :decimal

    field :in_qty_ord, :decimal

    field :in_qty_chg, :decimal

    field :in_qty_avail, :decimal

    field :in_sls_chg, :decimal

    field :in_iss_chg, :decimal

    field :in_iss_date, Conduit.QAD.Types.Date

    field :in_rec_date, Conduit.QAD.Types.Date

    field :in_cnt_date, Conduit.QAD.Types.Date

    field :in_avg_iss, :decimal

    field :in_avg_sls, :decimal

    field :in_avg_date, Conduit.QAD.Types.Date

    field :in_user1, :string

    field :in_user2, :string

    field :in_rop, :decimal

    field :in_sfty_stk, :decimal

    field :in_qty_nonet, :decimal

    field :in_mrp, Conduit.QAD.Types.Bool

    field :in_gl_set, :string

    field :in_cur_set, :string

    field :in_abc, :string

    field :in_avg_int, :integer

    field :in_cyc_int, :integer

    field :in_level, :integer

    field :in_loc, :string

    field :in_loc_type, :string

    field :in_proj_use, :integer

    field :in_grade, :string

    field :in_assay, :decimal

    field :in_rollup, Conduit.QAD.Types.Bool

    field :in_rollup_id, :string

    field :in_rctpo_status, :string

    field :in_rctwo_status, :string

    field :in_rctpo_active, Conduit.QAD.Types.Bool

    field :in_rctwo_active, Conduit.QAD.Types.Bool

    field :in__qadc01, :string

    field :in_wh, Conduit.QAD.Types.Bool

    field :in_gl_cost_site, :string

    field :in_cust_consign_qty, :decimal

    field :in_supp_consign_qty, :decimal

    field :in_domain, :string

    field :oid_in_mstr, :decimal, primary_key: true

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
