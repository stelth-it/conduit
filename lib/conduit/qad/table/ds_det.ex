defmodule Elixir.Conduit.QAD.Table.Ds_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ds_det" do
    field :ds_req_nbr, :string

    field :ds_nbr, :string

    field :ds_site, :string

    field :ds_shipsite, :string

    field :ds_shipdate, Conduit.QAD.Types.Date

    field :ds_due_date, Conduit.QAD.Types.Date

    field :ds_per_date, Conduit.QAD.Types.Date

    field :ds_part, :string

    field :ds_qty_ord, :decimal

    field :ds_qty_conf, :decimal

    field :ds_qty_ship, :decimal

    field :ds_status, :string

    field :ds_rmks, :string

    field :ds_rev, :string

    field :ds_git_site, :string

    field :ds_git_acct, :string

    field :ds_git_cc, :string

    field :ds_project, :string

    field :ds_cmtindx, :integer

    field :ds_residual, :decimal

    field :ds_so_nbr, :string

    field :ds_loc, :string

    field :ds_trans_id, :string

    field :ds_user1, :string

    field :ds_user2, :string

    field :ds__chr01, :string

    field :ds__chr02, :string

    field :ds__chr03, :string

    field :ds__chr04, :string

    field :ds__chr05, :string

    field :ds__dte01, Conduit.QAD.Types.Date

    field :ds__dte02, Conduit.QAD.Types.Date

    field :ds__dec01, :decimal

    field :ds__dec02, :decimal

    field :ds__log01, Conduit.QAD.Types.Bool

    field :ds_qty_all, :decimal

    field :ds_qty_pick, :decimal

    field :ds_qty_chg, :decimal

    field :ds_sod_line, :integer

    field :ds_git_sub, :string

    field :ds_order_category, :string

    field :ds_fr_rate, :decimal

    field :ds_fr_wt, :decimal

    field :ds_fr_wt_um, :string

    field :ds_fr_class, :string

    field :ds_fr_chg, :decimal

    field :ds_fr_list, :string

    field :ds_line, :integer

    field :ds_domain, :string

    field :oid_ds_det, :decimal, primary_key: true

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
